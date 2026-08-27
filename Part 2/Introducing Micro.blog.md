## Introducing Micro.blog

_“All we have to decide is what to do with the time that is given us.” — J. R. R. Tolkien_

Micro.blog is built on this foundation of JSON and RSS feeds, the importance of content ownership through domain names, and a new UI inspired by social networks. It combines web standards with the ease people expect today.

Because of the technical hurdles of self-hosting your own blog, if we want to encourage more people to blog, it has to be much easier. Centralized platforms allow for that ease of use — nothing to install or maintain, with all the right defaults that use open standards.

I’ve always thought of Micro.blog as glue. It’s a thin layer on top of blogs that provides a Twitter-like timeline experience, adding conversations and user discovery. It’s a social network from the idea that more people should be blogging and sites should talk to each other.

Early on in the development of Micro.blog, I realized that building a social network on top of RSS feeds wasn't enough. Micro.blog had to be both a social network _and_ a blog hosting platform.

Micro.blog publishing is based on the static site generator Hugo, which converts your blog post text to HTML pages. On top of that foundation, it adds posting from the web and mobile apps, a plug-in system for themes, and other customizations for microblogging.

![][image-1]

When you publish a new post, Micro.blog takes the following steps:

1. The new post is saved to a database in Micro.blog for your account.
2. Your posts are written to Markdown files with front matter and sent to Hugo for processing.
3. Your site is published to either `username.micro.blog` or your own custom domain name. This includes updating the feeds.
4. Micro.blog reads the feed and notices the new post, adding it to the Micro.blog timeline for anyone who follows you.

The goal is for this to feel like a single step, just as if you were posting a tweet, but in reality Micro.blog separates out the blog publishing from the work of building the timeline. It is essentially two systems, working together, which means external blogs can also be plugged in to the timeline.

![][image-2]

---- 

Because Micro.blog is a bridge between centralized services and more distributed platforms, it needed many parts of a traditional API. Micro.blog’s JSON API allows for signing in, retrieving posts in the timeline, replying to posts, bookmarking posts, and more.

The official Micro.blog apps and third-party apps use the Micro.blog JSON API. Most present a timeline interface, with separate sections for mentions, managing posts, and other features.

![][image-3]![][image-4]

For posting, Micro.blog uses the Micropub API. Using Micropub means that apps can be compatible with both Micro.blog and other compatible platforms. Over the years, as IndieWeb APIs have expanded, more and more functionality can be built on those standards instead of proprietary APIs.

Proprietary parts of the Micro.blog API won’t be covered in detail in this book, although they are still documented on the [Micro.blog help site][1]. Micropub is covered in detail in Part 3.

---- 

Micro.blog is not the only choice for microblogging. A core principle of Micro.blog is that you can bring an existing blog hosted somewhere else, such as using WordPress, and that the Micro.blog platform works nicely with the rest of the web.

[1]:	https://help.micro.blog/

[image-1]:	https://book.micro.blog/uploads/2020/64d82327cd.png
[image-2]:	https://book.micro.blog/uploads/2020/5e218ee372.png
[image-3]:	https://book.micro.blog/uploads/2020/ed9043efb2.png
[image-4]:	https://book.micro.blog/uploads/2020/87ba0b1e20.png