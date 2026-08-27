## RSS for microblogs

_“A complex system that works is invariably found to have evolved from a simple system that works.” — John Gall_

Let’s take a fresh look at the elements in an RSS feed. What is really needed, and when faced with multiple “correct” options, which should we choose? As more writers embrace microblogging, it’s an opportunity to simplify our feeds and tools.

There have been proposals for _adding_ things to RSS to make it more suitable for microblogging and social networks. RSS 2.0 uses XML namespaces to add new types of data to a feed. Dave Winer in 2012 proposed his own `microblog` namespace with additions such as linking to the archive of someone's microblog posts. Dave [blogged at the time][1]:

> It understands full links vs shortened links. It defines a calendar-structured archive, so you can store all your posts in RSS format. This has been a long-standing problem, and this solution really works.

None of these suggestions are strictly necessary for microblogging with RSS, though. Some features, such as referencing archived posts, can also be accomplished with [RFC 5005](), which documents how to support paginated RSS feeds to include many more posts than would normally be in a default feed.

Instead of adding things to RSS, we should be taking away — simplifying the required elements to make feeds more readable and consistent.

This chapter is my proposal for a bit of housekeeping around microblogging. It’s not a new format. It’s just a guide for producing the best RSS. I’ve divided this proposal into three sections below.

### Minimum viable elements

Look at the average RSS feed and there’s a lot of junk in it that most RSS readers ignore. While there’s nothing wrong with including extra XML elements, we should strive for a feed that is simple enough to be easily read. The fewer redundant and unused elements, the more consistently that different RSS readers will interpret it.

Here’s an example of an RSS feed whittled down to its essential elements. Most feeds should look like this by default, and only add additional elements from the RSS spec or RSS extensions when it’s absolutely required (such as the enclosure element for podcasting).

	<rss version="2.0">
	 <channel>
	   <title>Manton Reece</title>
	   <description>Manton's weblog.</description>
	   <link>http://www.manton.org/</link>
	   <item>
	     <title></title>
	     <description><![CDATA[
	       <p>Hello world.</p>
	     ]]></description>
	     <pubDate>Fri, 04 Sep 2015 15:32:32 +0000</pubDate>
	     <guid isPermalink="true">http://www.manton.org/2015/09/3007.html</guid>
	     <link>http://www.manton.org/2015/09/3007.html</link>
	     <author>@manton</author>
	   </item>
	   <item>
	     ...
	   </item>
	 </channel>
	</rss>

### Title is optional

Blogging tools didn't always have title fields. The early blogging system [Radio Userland][3]had an almost Twitter-like simplicity for new posts:

![][image-1]

Blogger similarly had no title field for posts. Titles became common or required with the popularity of Movable Type and WordPress, even though some modern apps like Tumblr still don’t use a title for certain post types.

With microblogging, the title will frequently be empty or missing. Do tweets have titles? No, and neither should short microblog posts published through a traditional blog platform. Skipping the title removes friction in the writing process, making it easier to write a quick post and send it out.

In the [RSS 2.0 specification][4], the title of a post is optional:

> An item may also be complete in itself, if so, the description contains the text (entity-encoded HTML is allowed; see [examples][5]), and the link and title may be omitted. All elements of an item are optional, however at least one of title or description must be present.

Dave Winer followed up on this issue [in a blog post in 2022][6], encouraging feed authors and client developers to handle title-less items correctly. About some clients adding a “no title” disclaimer:

> The first item has a [no title] message where a title would go. Why? Look at it from the human reader point of view. What information does that convey, above what the writer was saying, in bigger type and in bold. **NO TITLE.** I don't know about you but to me that looks like criticism, an error message, from the software to the person who wrote the post.

We see how titles can introduce friction in the writing process outside of blogging too. In 2009, Daring Fireball author [John Gruber wrote an essay about friction][7] in programming languages and why it’s common to type into a new untitled window that has never been saved:

> Friction is resistance. Hence untitled document windows containing hours of unsaved work — there’s an idea in your head that you want to express or explore, and the path of least resistance is to hit Command-N and just start working.

That’s how blogging should be too. Just start writing.

RSS readers must be prepared for a title-less RSS item. If you're building a feed reader, instead of inserting “Untitled” as the placeholder title, think about how your reading UI can accommodate microblog posts gracefully. Blank titles (where the title exists but is an empty string) are equivalent to a completely missing title element.

### HTML post text

The description XML element in RSS wasn’t originally intended to support HTML. It was often a text summary or opening paragraph of an article, rather than the full text. With microblogging, you always want the full text inside the RSS feed, including any styled text or inline HTML links.

Some feeds will include the plain text version of a post in the description element, and the HTML version in a `content:encoded` element, as specified by [this RSS namespace extension][8]. This should be avoided in favor of a single `description` element with the full HTML, using CDATA syntax to avoid escaping characters:

	<description><![CDATA[
	  <p>Hello world.</p>
	]]></description>

In modern apps, rendering simple HTML is common. Bold, italics, and inline links can be supported in a wide range of apps. In 2023, Dave Winer attempted to wrap up many of these basic microblogging principles under the term [textcasting][9] — using the same RSS-based format as podcasting, applied to text and social media. On styling, he wrote:

> Simple styling, bold and italic. Don't overdo it, but sometimes you want to emphasize a word. It's part of how we speak, so it should be reflected in our writing.

Styling and links are a fundamental part of the web. If an RSS reader can’t show HTML, it should strip out the HTML tags itself. It’s not up to the feed to provide multiple versions. If both `description` and `content:encoded` are present in a feed while parsing, for compatibility it’s acceptable to prefer whichever includes HTML.

[1]:	http://scripting.com/stories/2012/03/27/rssForMicroblogging.html
[3]:	https://web.archive.org/web/20001017195851/http://radio.userland.com/
[4]:	http://cyber.harvard.edu/rss/rss.html
[5]:	http://cyber.harvard.edu/rss/encodingDescriptions.html
[6]:	http://scripting.com/2022/12/08/141610.html
[7]:	https://daringfireball.net/2009/02/untitled_document_syndrome
[8]:	http://purl.org/rss/1.0/modules/content/
[9]:	http://textcasting.org

[image-1]:	https://book.micro.blog/uploads/2019/65a7eabf8d.png