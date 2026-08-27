## External blogs with WordPress

_“As the web becomes more and more of a part of our every day lives, it would be a horrible tragedy if it was locked up inside of companies and proprietary software.” — [Matt Mullenweg][1]_

Micro.blog is essentially a sort of aggregator. It downloads feeds of posts hosted on Micro.blog or on external blogging platforms, then merges those posts into a timeline experience for following users and sending replies. Because it’s based on standards, you don’t have to use Micro.blog to host your blog.

WordPress is used by over a third of websites on the internet. It's had a huge influence on blogging and it improves regularly. Because if its popularity, we'll use WordPress as an example for thinking about how Micro.blog connects with external blogs. This section will go through the basics of microblogging with WordPress, although many of the tips here are just as applicable to other blogging systems.

### Short posts

Everything starts with short posts. Without short posts, there’s no “micro” in microblogging. While there’s no formal rule for how long a post should be, I’ve found that 200-300 characters is a good guideline. It’s short enough that it encourages quick posts, but long enough to fit a full thought with proper punctuation.

We intentionally started with 280 characters for Micro.blog. It's double the original 140-character limit from Twitter. Any limit is arbitrary, so I liked picking a number that is symbolic of the move beyond Twitter.

After Micro.blog launched, Twitter also increased their limit to 280 characters. And even later, Micro.blog standardized on 300 characters, a nicer “rounded up” number.

If you want to continue to post to Twitter / X, Mastodon, Bluesky, or Threads, it's useful to keep those limits in mind while writing. I keep most of my indie microblog posts within 300 characters so that they cleanly cross-post elsewhere. But when I feel constrained by the limit, I don't hesitate to go over. It's more important to me that I get a full thought posted than to stay within the limit.

### No titles

In most modern blogging platforms including WordPress, the first thing you see when starting a new post is the title field. If you know exactly what you're going to write about, maybe it's fine to start with the title. But for many people, just picking a title is a kind of burden. It's another opportunity for a choice, which means it's an opportunity to give up before finishing the post.

Part of indie microblogging is getting back to the simplicity of title-less posts. When you’re writing a microblog post in WordPress, just leave the title blank, and if necessary update the WordPress theme to not include the title in HTML or the RSS feed.

You may find that some feed readers don’t gracefully handle posts without titles, often inserting “Untitled” for the title because they expect something to be there. If you see this, the best solution is to email the developer and ask for them to address it. Working around the issue with fake titles — dates, numbers, or portions of the text — will only ensure that client developers never improve their apps to handle title-less posts.

For WordPress, there are also work-arounds to keep using clean feeds without titles while still showing titles on your web site or in WP Admin. [Colin Walker wrote a WordPress script][2] that shows the date/time in WP Admin, to make it easier to manage posts.

### Adding your feed

WordPress includes an RSS feed at `/feed/`. Add this feed to your Micro.blog account by clicking Account → Edit Feeds & Cross-posting:

![][image-1]

Micro.blog uses the feeds on your account to build the timeline of posts that will be shown to your followers. When you post to your blog, the post is added is added to your feed, which Micro.blog then reads and adds to the timeline.

### Post formats

Newer versions of WordPress have the concept of post formats. Normal blog posts have a “Standard” format, but there are also these types: Aside, Image, Link, Quote, Status, and others.

While not all themes support post formats, most of the default themes do. If you're using a common WordPress theme, chances are good that it has basic support for "Status" or "Aside" already.

![][image-2]

It might be tempting to embrace all the post formats — for example, using the "Image" format when posting a photo to your microblog — but that adds some complexity that won't be well-supported in most tools. To keep things simple, use "Standard" for longer posts with titles, and "Status" or "Aside" for all your microblog posts: short posts and photo posts. You can always introduce additional formats later when you're comfortable with the basics.

(Ready for more advanced post types? The IndieWeb-friendly [Post Kinds plugin][3] from David Shanske introduces even more post types such as photo, check-in, reply, and like.)

Categories are another good way to group post types. If you use the Status post format for all microblog posts, try using separate categories such as Photos, Snippets, or Microblog. You can use categories to filter posts on your site, or have separate feeds for certain post types by including the category in the feed URL.

### RSS and JSON Feed

WordPress’s default RSS feed at `/feed/` will include all your posts, both long-form and microblog posts.

If you’d like to have separate feeds for different types of posts, use the category to control which posts are included in the feed. You can find the category ID in WP Admin under Posts → Categories. (Look for the "tag\_ID" parameter on each category link.)

For example, to only return posts with category ID "5":

`/feed/?cat=5`

To return all posts _except_ that category, prefix the number with a minus sign:

`/feed/?cat=-5`

Micro.blog can work with RSS, Atom, or JSON Feeds. JSON Feed is a good default choice if you're just setting up your account.

To install the JSON Feed plugin, in your WP Admin dashboard go to Plugins → Add New and search for "JSON Feed". After you install and activate the plugin, you will now have a JSON feed at `/feed/json ` with the same posts as your RSS feed.

### Themes

The default WordPress themes are named as years, such as “Twenty Seventeen”, with a new theme each year. These themes have basic support for microblogging.

The most important thing to look for in a theme is how it handles blank titles and post formats. Create a short post without a title and use the preview button when selecting a new theme to see how it will look on your blog.

The default WordPress themes have limited support for an older version of Microformats, a format we’ll cover more in Part 3. Microformats can be used to add data to posts in a way that will be useful as you integrate more features such as replies into your microblog. More IndieWeb-friendly themes with support for Microformats include Independent Publisher and SemPress.

### Cross-posting

Now that you have a blog that contains all your microblog posts, you can wire it up to cross-post automatically to other services. You’re writing on your own site first, but the posts still go out to your followers on Mastodon or Bluesky.

We cover cross-posting in more detail in Part 3.

[1]:	https://memeburn.com/2013/05/matt-mullenweg-on-how-open-source-is-democratising-the-web/
[2]:	https://github.com/colin-walker/wordpress-blank-title
[3]:	https://wordpress.org/plugins/indieweb-post-kinds/

[image-1]:	https://book.micro.blog/uploads/2019/db9d1d27f6.png
[image-2]:	https://book.micro.blog/uploads/2020/1593cd9546.png