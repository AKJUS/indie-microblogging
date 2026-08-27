## Bridgy

_“So come and walk awhile with me and share the twisting trails and wondrous worlds I've known. But this bridge will only take you halfway there. The last few steps you have to take alone.” — Shel Silverstein_

POSSE is a popular part of the IndieWeb community. Cross-posting lets us stay connecting with friends on other silos like Twitter.

[Bridgy][1] was developed by Ryan Barrett to help "bridge" the gap between our own blogs and silos. If you're cross-posting your blog posts to Twitter, Bridgy can check for replies or likes to those tweets and then send them back to your blog via Webmention.

By checking for interactions from silos, friends can reply using existing platforms they are used to, but you still see those replies on your own blog.

When you register on Bridgy, you give it your blog and your account at a silo like Twitter. It checks your Twitter account for replies to your blog posts. If your cross-posted blog posts have a link back to your post in the tweet, Bridgy can match that to your blog post and send a Webmention using the content in the reply on Twitter.

How is this possible, when tweets only exist on `twitter.com` and photos might be on `instagram.com`, not individual domain names with the appropriate Microformats markup? Bridgy creates shim web pages with the contents of the tweet reply marked up appropriately. It's the URL for those special web pages outside of Twitter or Instagram that Bridgy sends to the Webmention endpoint.

Let's use an example of this flow from Bridgy developer Ryan Barrett's posts. His domain name is `snarfed.org` and his Instagram username is `@snarfed`.

First, he [posts a photo of Forky from Toy Story to his blog][2]. He copies the post over to Twitter and Instagram, too.

![][image-1]

Someone adds a comment to the Instagram post:

![][image-2]

Bridgy is polling Twitter and Instagram, looking for replies and likes on that post. When it finds the comment on Instagram, Bridgy creates a small HTML page with the contents using Microformats.

![][image-3]

It then sends a Webmention back to Ryan's blog, notifying the blog of this new comment, with a URL for the version of the post in Bridgy with Microformats. Ryan's blog can then update with the reply directly on the blog post:

![][image-4]

The IndieWeb has a term for this process of pulling replies and likes from silos: [backfeed][3]. It also allows you to curate the conversations because there's a copy on your web site:

> You can moderate those as you see fit on your own site, thus improving the comments overall on your posts as compared to what silos allow for.

On a silo, you have limited control over what content appears alongside your own posts. On your own web site, harassing or misinformed replies can be removed.

---- 

Micro.blog has limited support for replies from Mastodon, Instagram, and Bluesky via Bridgy. If you were using Bridgy to connect your blog to Instagram, Micro.blog had initially been ignoring any replies to your blog post. Unlike for Micro.blog users, Mastodon users, and blogs, there was no way to represent a Instagram user in Micro.blog, and so it didn’t make sense to thread those posts into a Micro.blog conversation.

Everything in the Micro.blog timeline needs to come from someone’s blog, where the username is either a Micro.blog username or a domain name. Twitter and Instagram users do not have a unique domain name, because they are all shared under “twitter.com” or “instagram.com”.

Including tweets in Micro.blog would have other ripple effects that I wanted to avoid. For example, what happens if you reply to a tweet? I’m not interested in turning Micro.blog into a Twitter client. Quite the opposite. I’m actively trying to distance myself from Twitter and avoid dependencies on any big social networks.

Bridgy is so popular in the IndieWeb community, though, that I revisited this limitation. Micro.blog will now recognize Instagram and Mastodon usernames sent via Bridgy and store those replies in Micro.blog. Twitter users will still not appear in the Micro.blog timeline, but they are available for querying from the API, or including on your own blog hosted by Micro.blog.

As Twitter has continued to shut down their API under Elon Musk’s leadership, most services including Bridgy have had to disable support for Twitter, making this largely a moot point in 2026. We’re keeping Twitter in this chapter as an example of a silo, but as of this writing Bridgy supports Bluesky, Mastodon, Flickr, GitHub, and Reddit.

Micro.blog has a built-in JavaScript include called Conversation.js for showing replies on a blog post. It pulls these replies from a conversation on Micro.blog, plus any replies from Bridgy. This brings Micro.blog’s Webmention support more in line with what Webmention.io can provide.

Because Micro.blog-hosted blogs are just blogs, with themes that allow you to customize any of the HTML, it’s possible to swap out Conversation.js with another solution. If you edit your blog to use a separate service to collect incoming Webmentions, like Webmention.io, then replies to your blog post will go to that service. You can then display any type of Webmention on your Micro.blog-hosted blogs, even those from Bridgy.

There’s an additional gotcha you should know about using Bridgy and Micro.blog together. Bridgy needs a link to your blog post for it to be able to match up tweet replies to that blog post. When cross-posting to Mastodon, Bluesky, and other services from Micro.blog, Micro.blog only includes a link back to your blog if your blog post has a title, or if it needs to be truncated to fit in the tweet.

If you want _all_ cross-posted tweets to link back to the microblog post, even if they were short, you have a couple options:

* Use Bridgy itself for the cross-posting instead of Micro.blog, and disable cross-posting in Micro.blog. Many cross-posting services will always include a link back to your blog.
* Use a Micro.blog theme that has special support for adding the `u-syndication` microformat with blog posts. When Bridgy crawls your blog, it can use this syndication link to match up the post on an external service.

---- 

Bridgy can find replies on Bluesky for your blog posts. Because Bluesky uses domain names for usernames, it’s a perfect fit for how Micro.blog thinks about the web. When someone on Bluesky replies to your post, Micro.blog will receive a webmention from Bridgy. Micro.blog then adds the reply directly to the timeline, creating a new user if necessary to represent the Bluesky account.

Micro.blog has also been expanded to support following some Bluesky users. It uses a combination of RSS feeds from Bluesky with Bluesky’s AT Protocol API to retrieve profile information.

If your blog is using Micro.blog, there are Hugo parameters you can use to insert the cross-posted URL in theme templates. The following parameters are supported by Micro.blog:

* `.Params.twitter.id` — tweet ID
* `.Params.twitter.username` — your Twitter username
* `.Params.medium.id`
* `.Params.medium.username`
* `.Params.linkedin.id`
* `.Params.linkedin.name`
* `.Params.mastodon.id`
* `.Params.mastodon.username` — just the username part of your full handle
* `.Params.mastodon.hostname` — instance name like "mastodon.social"
* `.Params.tumblr.id`
* `.Params.tumblr.username`
* `.Params.tumblr.hostname` — you.tumblr.com
* `.Params.flickr.id`
* `.Params.flickr.username`
* `.Params.bluesky.id`
* `.Params.bluesky.url` — the "at://" URL for the post
* `.Params.bluesky.handle`
* `.Params.bluesky.hostname`
* `.Params.bluesky.did`
* `.Params.nostr.id`
* `.Params.nostr.pubkey`

When posting to your blog, Micro.blog follows this basic flow:

1. Updates your blog with the new post.
2. Downloads your JSON Feed which now contains the new post.
3. Sends a copy of the post as a cross-post to Bluesky and other services.
4. Updates the blog post metadata to store the URL or post ID from the external service. For Bluesky, this is in the form of an `at://` scheme.
5. Publishes your blog again now that it has this new metadata, so the Hugo parameters are available.

Here’s an example of including a link to Bluesky in the blog post. Note that in this case I’m hiding the link using `display: none` in CSS. This still allows crawlers such as Bridgy to find the information. You can choose to include links or icons to other services.

```json
{{ if .Params.bluesky }}
  <a class="u-syndication" {{ printf "href=%q" .Params.bluesky.url | safeHTMLAttr }} style="display: none;">Also on Bluesky</a>
{{ end }}
```

Because of how Hugo escapes HTML attributes, we have to do this little dance with `printf` so the value is escaped correctly.

---- 

Looking at the Bridgy shim web pages can illustrate how Microformats can enhance the content on a web page. Twitter’s own HTML is complicated, with a mix of CSS and JavaScript. But Bridgy’s version is simple.

Black before Twitter started closing their API, I posted a test tweet reply to one of my own blog posts. When Bridgy noticed the reply tweet, it created a new shim web page at a URL that included the tweet ID:

```json
https://brid.gy/comment/twitter/mantonsblog/1395021416588849153/1395033801533927428
```

The important part of the HTML at that web page looks like this:

```json
<article class="h-entry">

	<span class="p-uid">tag:twitter.com,2013:1395033801533927428</span>
	<time class="dt-published" datetime="2021-05-19T15:09:11+00:00">2021-05-19T15:09:11+00:00</time>

	<span class="p-author h-card">
		<a class="p-name u-url" href="https://twitter.com/mantontest">Manton Test</a>
		<a class="u-url" href="https://www.manton.org/"></a>
		<span class="p-nickname">mantontest</span>
		<img class="u-photo" src="https://pbs.twimg.com/profile_images/851438000349134849/tkIzJz0b.jpg" />
	</span>

	<a class="u-url" href="https://twitter.com/mantontest/status/1395033801533927428">https://twitter.com/mantontest/status/1395033801533927428</a>
	
	<div class="e-content p-name">
		This is a test reply to see <a href="http://Brid.gy">Brid.gy</a> in action.
	</div>

	<a class="u-in-reply-to" href="https://micro.blog/"></a>
	<a class="u-in-reply-to" href="https://twitter.com/mantonsblog/status/1395021416588849153"></a>
	<a class="u-in-reply-to" href="https://www.manton.org/2021/05/19/webmention-and-twitter.html"></a>

</article>
```

It includes everything needed to show the tweet outside of Twitter — such as `p-author` with a profile photo, and `e-content` for the tweet text — along with metadata to follow the conversation thread back to the original blog post, like `u-in-reply-to`.

Simple formats are easier to understand and combine with other services to build something new.

---- 

Bridgy has expanded with a companion service called Bridgy Fed. Instead of polling other silos for mentions and likes, Bridgy Fed acts as its own ActivityPub gateway to connect different platforms. It can provide an ActivityPub interface for your blog, so that Mastodon users can follow your blog. It can even do the same for Bluesky, bridging with Mastodon so that fediverse users can follow Bluesky users.

Bridgy took another step in 2025, with Ryan Barrett joining with Anuj Ahooja to found [A New Social][4], a new foundation that would run and expand Bridgy and Bridgy Fed. Ryan Barrett:

> My passion lies in connecting social networks together. Open standard social protocols allow us to create those connections outside of monolithic walled gardens, which has tremendous benefits. I've spent a long time doing that individually, and in communities like the IndieWeb. Now, with communities growing on several protocols, [we need a real organization, governance, and public transparency][5] where everyone can benefit and contribute. That’s why we established A New Social.

Their first new product was [Bounce][6], a tool to migrate followers from ActivityPub-based networks like Mastodon to Bluesky and the AT Protocol. As Bluesky grows in popularity, we’ll need more tools like Bridgy Fed and Bounce that can connect everyone on the open social web.

[1]:	https://brid.gy/
[2]:	https://snarfed.org/2019-08-05_38211
[3]:	https://indieweb.org/backfeed
[4]:	https://blog.anew.social/hello-social-web/
[5]:	https://snarfed.org/2024-10-30_53932?ref=blog.anew.social
[6]:	https://bounce.anew.social/

[image-1]:	https://book.micro.blog/uploads/2020/8b986efe12.png
[image-2]:	https://book.micro.blog/uploads/2020/e21bb306a2.png
[image-3]:	https://book.micro.blog/uploads/2020/9ab6b9d085.png
[image-4]:	https://book.micro.blog/uploads/2020/666ec42b04.png