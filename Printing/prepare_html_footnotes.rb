#!/usr/bin/env ruby
# frozen_string_literal: true

require "optparse"

options = {
  start_marker: "<h1>Introduction</h1>",
  dry_run: false,
  output: nil
}

OptionParser.new do |parser|
  parser.banner = "Usage: ruby prepare_html_footnotes.rb [options] path/to/export.html"

  parser.on("--start MARKER", "Only process links after this marker") do |value|
    options[:start_marker] = value
  end

  parser.on("--dry-run", "Report changes without writing the file") do
    options[:dry_run] = true
  end

  parser.on("-o", "--output PATH", "Write to PATH instead of updating in place") do |value|
    options[:output] = value
  end
end.parse!

path = ARGV.shift

if path.nil? || !ARGV.empty?
  warn "Usage: ruby prepare_html_footnotes.rb [options] path/to/export.html"
  exit 1
end

unless File.file?(path)
  warn "File not found: #{path}"
  exit 1
end

html = File.read(path)
marker_index = html.index(options[:start_marker])

if marker_index.nil?
  warn "Start marker not found: #{options[:start_marker]}"
  exit 1
end

before_marker = html[0...marker_index]
after_marker = html[marker_index..]

inserted = 0
updated = 0
updated_citation_dashes = 0
updated_part_headings = 0
updated_interview_paragraphs = 0
normalized_interview_paragraphs = 0

INTERVIEW_SPEAKERS = %w[
  Aaron
  Brent
  Jean
  Leah
  Manton
  Marco
  Om
  Tantek
].freeze

def footnote_url(url_without_scheme)
  url_without_scheme.sub(%r{\A([^/?#]+)/\z}, "\\1")
end

speaker_pattern = INTERVIEW_SPEAKERS.map { |name| Regexp.escape(name) }.join("|")

after_marker = after_marker.gsub(%r{<p><strong>(#{speaker_pattern}):</strong>\s*(.*?)</p>}m) do
  updated_interview_paragraphs += 1
  speaker = Regexp.last_match(1)
  answer = Regexp.last_match(2)

  %Q{<p class="interview"><span class="speaker">#{speaker}:</span><span class="answer">#{answer}</span>\n</p>}
end

after_marker = after_marker.gsub(%r{<p class="interview">.*?</p>}m) do |paragraph|
  match = paragraph.match(%r{\A<p class="interview">\s*<span class="speaker">(#{speaker_pattern}):</span>\s*<span class="answer">(.*)</span>\s*</p>\z}m)

  if match
    normalized = %Q{<p class="interview"><span class="speaker">#{match[1]}:</span><span class="answer">#{match[2]}</span>\n</p>}
    normalized_interview_paragraphs += 1 if normalized != paragraph
    normalized
  else
    paragraph
  end
end

after_marker = after_marker.gsub(%r{<h1>Part ([0-9]+): ([^<]+)</h1>}) do
  updated_part_headings += 1
  %Q{<h1 class="part-title"><span class="part-number">Part #{Regexp.last_match(1)}</span><span class="part-name">#{Regexp.last_match(2)}</span></h1>}
end

after_marker = after_marker.gsub(%r{(<a\b[^>]*\bhref="(https?://([^"]+))"[^>]*>.*?</a>)(?:(</em>)?(&#8201;)?(<span class="footnote">)([^<]*)(</span>))?}m) do
  anchor = Regexp.last_match(1)
  url_without_scheme = footnote_url(Regexp.last_match(3))
  closing_em = Regexp.last_match(4)
  thin_space = Regexp.last_match(5)
  span_open = Regexp.last_match(6)
  existing_footnote = Regexp.last_match(7)
  span_close = Regexp.last_match(8)

  if span_open
    updated += 1 if existing_footnote != url_without_scheme || thin_space.nil?
    "#{anchor}#{closing_em}&#8201;#{span_open}#{url_without_scheme}#{span_close}"
  else
    inserted += 1
    "#{anchor}&#8201;<span class=\"footnote\">#{url_without_scheme}</span>"
  end
end

moved_out_of_em = 0

after_marker = after_marker.gsub(%r{<em>(.*?)</em>}m) do |em_block|
  inner = Regexp.last_match(1)
  footnotes = inner.scan(%r{<span class="footnote">[^<]*</span>})

  if footnotes.empty?
    em_block
  else
    moved_out_of_em += footnotes.length
    inner.split(%r{(<span class="footnote">[^<]*</span>)}).map do |part|
      if part.empty?
        ""
      elsif part.start_with?("<span class=\"footnote\">")
        part
      else
        "<em>#{part}</em>"
      end
    end.join
  end
end

after_marker = after_marker.gsub(%r{<p\b[^>]*>\s*<em>.*?</p>}m) do |paragraph|
  paragraph.gsub(/(&quot;|”|") — /) do
    updated_citation_dashes += 1
    "#{Regexp.last_match(1)} —&nbsp;"
  end
end

new_html = before_marker + after_marker

if options[:dry_run]
  puts "Dry run: no files written"
elsif options[:output]
  File.write(options[:output], new_html)
  puts "Wrote #{options[:output]}"
else
  File.write(path, new_html)
  puts "Updated #{path}"
end

puts "Inserted #{inserted} footnote spans"
puts "Updated #{updated} existing footnote spans"
puts "Moved #{moved_out_of_em} footnote spans outside <em>"
puts "Updated #{updated_citation_dashes} quote citation dashes"
puts "Updated #{updated_part_headings} part headings"
puts "Updated #{updated_interview_paragraphs} interview paragraphs"
puts "Normalized #{normalized_interview_paragraphs} existing interview paragraphs"
