## Exodus

_“We come now to the very brink, where hope and despair are akin.” — Aragorn from The Lord of the Rings_

Twitter leadership always seemed a bit uncertain of their own actions, but the company was never so chaotic as when it was acquired by Elon Musk. Entire teams were disbanded. The philosophy and company culture were flipped upside down. Elon Musk seemed impulsive. The company was renamed X, features were shipped without a clear understanding of their impact, and throughout it all Elon was posting memes and becoming the most divisive leader in tech.

The company that had changed the world and cemented the microblog format was in free-fall. But out of that chaos came the opportunity for new companies and new protocols.

As people were exiting the platform, a new wave of X competitors emerged, some founded by former Twitter employees. Unfortunately, many people had learned the wrong lesson from the history of Twitter. They were creating yet another closed silo, doomed to fail just as interest was growing in more distributed platforms.

Post.news launched with their own take on “real news” and moderation. Pebble (formerly T2) got some traction and funding but shut down after a year. Without building on interoperability with other platforms, these companies needed to dramatically grow to become viable businesses on their own, at the same time that users wanted to escape from the single point of failure of centralized systems.

Go further back to Twitter’s roots and you see this struggle between closed ad platform and a more forward-looking open protocol.

Evan Henshaw-Plath, known online as Rabble, worked with Jack Dorsey and the early Twitter team. [In a thread on Twitter][1], Rabble reflected on the previous upheaval around Twitter’s relationship with third-party developers:

> Back in 2015 Bill Gross at Idealab tried to take over twitter. He did it by creating a billion dollar fund to buy up twitter clients. If he got enough clients, he could make them post to his own twitter like microblogging site in addition to twitter.

Bill Gross expanded his portfolio of Twitter third-party apps to include UberTwitter, EchoFon, and TweetDeck. Twitter risked losing control of the client app experience. Rabble continued:

> That's why twitter bought TweetDeck and then didn't do anything with it. The whole point was to take TweetDeck away from Bill Gross, prevent it from being used as a weapon against twitter.

There had always been this split within the company over whether Twitter should be a massive, centralized ad platform or a more open, distributed protocol for the entire web. Opinion within Twitter seemed to rock back and forth, never clear whether they should truly embrace third-party developers. The indecision made for an unstable platform.

[An article in Forbes][2] further connects Rabble and the early work on federation at Twitter:

> Henshaw-Plath also hired Blaine Cook, who would go on to be Twitter’s chief architect and helped brainstorm an early version of Twitter that could federate rivals into a decentralized system. If launched on Groundhog Day 2008, when it was completed, that federation would have prevented Trump from obtaining such a powerful megaphone in the first place by giving users more control over their network.

This effort at Twitter was in fact based on standards that are adjacent to today’s IndieWeb and fediverse. PubSub, which we covered in Part 5, is visible [in a whiteboard photo from 2008][3] with Blaine Cook and Ralph Meijer.

Jack Dorsey himself may have been the most public in later years, regretting that Twitter didn’t take a more open approach earlier.

[Jack tweeted this theme][4] in support of Elon Musk acquiring Twitter in 2022:

> The idea and service is all that matters to me, and I will do whatever it takes to protect both. Twitter as a company has always been my sole issue and my biggest regret. It has been owned by Wall Street and the ad model. Taking it back from Wall Street is the correct first step.

A year later, Elon Musk gave an interview with Andrew Ross Sorkin at DealBook. Elon had continued the efforts started with Twitter Blue to diversity income away from ads. X had a series of premium offerings, from new features like tweet editing and longer posts, to the Grok AI. Many advertisers including Apple and Disney paused their ads on X after Elon’s controversial and antisemitic tweets. A clearly upset Elon lashed out at advertisers:

> If somebody is going to try to blackmail me with advertising, blackmail me with money, go fuck yourself.

Jack Dorsey even became disillusioned with Bluesky, the project spun out of Twitter to build a new protocol. Jack was more interested in Nostr and he eventually deleted his Bluesky account. As he posted to Nostr:

> Bluesky was funded as an independent entity when I was CEO. Twitter can't direct them. Goal was to build a protocol for social media. Nostr is that and more, and taking a different development model and path. TBD's web5 provides some similar infrastructure, specifically to decentralize / make permission-less DNS and Certificate Authorities. I imagine there will be cross over and sharing/stealing of ideas between all 3. And everyone is better for that.

By May 2024, Jack not only had stopped using Bluesky, he was [no longer on the board of directors][5].

Rabble too was drawn to Nostr. With no momentum on the Scuttlebutt protocol on which he had based his mobile app Planetary, Rabble started moving to Nostr. He introduced a new Nostr-based app called [Nos][6]. He shipped a video-sharing app called [deVine][7].

[Nostr pitched itself][8] as censorship-resistant, with posts distributed on a number of relay servers:

> It doesn't rely on any trusted central server, hence it is resilient; it is based on cryptographic keys and signatures, so it is tamperproof; it does not rely on P2P techniques, and therefore it works.

Nostr was evolving quickly. It felt like a wild-west platform, overrun with notes about crypto, spam, but also excitement from small developers building something new. The exit from Twitter had left a void that many developers were attempting to fill.

---- 

Independent blogs and independent developers always felt complementary to me. In the early days of the blogosphere, in the hallways at SXSW Interactive, the projects that were interesting weren’t built by hundred-person teams. Solo developers were bloggers, designers, and coders. There was always a new project that glued other people’s APIs together, or that had a Web 2.0 take on an old idea.

Now, that almost feels impossible because Facebook, Google, and Apple dominate the market, so there are whole product categories that people ignore. And new, younger developers get their start in large teams of dozens of developers just to build a single app. Maybe they don’t even think one person can build something on their own.

New projects with the spirit of the fediverse and the IndieWeb — as [Johannes Ernst said][9], “identical twins separated a birth” — have brought APIs back to the forefront. Indie developers can build on these platforms without worrying that they will be burned because X or Facebook changed their API terms. Mastodon is not going to shut off their API. Ownership is in the hands of thousands of server instances, or in the case of Micro.blog, the business is aligned with users instead of advertisers.

---- 

The move away from large silos to smaller platforms is not going to be easy. There will be more friction for users. Posting to a silo is like a shortcut to engagement. You might be able to reach people faster with a Medium post or a long Twitter thread.

[This post from Rian Van Der Merwe][10] talks more about platforms as shortcuts:

> The point is that publishing on Medium and Twitter and Facebook gives you an immediate shortcut to a huge audience, but of course those companies’ interests are in themselves, not in building your audience, so it’s very easy for them to change things around in a way that totally screws you over

Medium might be a shortcut to building an audience for a _single_ post, but that doesn’t help building a true audience. You might get more exposure, and maybe one of your posts will be lucky enough to be recommended and included in Medium’s daily email, but after someone finds it they aren’t as likely to read your other posts and subscribe to your entire site.

When someone finds your blog, though, they are immersed in your design, your theme, the feel of your writing.

In expanding the limit of Twitter posts to thousands of characters, Twitter attempted to keep more content on their platform. Closed platforms want to trap all activity, not send it out. The danger in longer Twitter posts isn’t that they will replace so-called textshots — screenshots of longer notes written in another app — it’s that they will replace external blogs.

For all of X’s problems, at least right now most of the good writing we see on Twitter is actually linked out to external blogs. To shift that to be stored more on Twitter itself would be a setback for the open web. It would slowly train a new generation of timeline surfers to prefer Twitter-hosted content instead of blogs.

[Will Oremus wrote in Slate][11] about this potential for growing the Twitter walled garden:

> What’s really changing here, then, is not the length of the tweet. It’s where that link at the bottom takes you when you click on it—or, rather, where it doesn’t take you. Instead of funneling traffic to blogs, news sites, and other sites around the Web, the 'read more' button will keep you playing in Twitter’s own garden.

Hossein Derakhshan spent six years in jail in Iran because of his blog. With the clarity of seeing years of changes to the web and social networks all at once after his release, [he wrote an important essay][12] on the value of hyperlinks and the open web:

> When a powerful website – say Google or Facebook – gazes at, or links to, another webpage, it doesn’t just connect it , it brings it into existence; gives it life. Without this empowering gaze, your web page doesn’t breathe. No matter how many links you have placed in a webpage, unless somebody is looking at it, it is actually both dead and blind, and therefore incapable of transferring power to any outside web page.

He mentions apps like Instagram, which have no way to link in posts to the outside world. Too many apps are exactly like this: more interested in capturing eyeballs for ads than opening up their platform. The default for native mobile apps is to become silos, while the default for websites is to be open and support linking.

Hossein also wrote that “the stream” – the timeline, a reverse-chronological list of short posts or links – is turning the web into television. This certainly feels true for TikTok with its infinite scrolling. But there’s a lot we can learn from the timeline. It’s a valuable user experience metaphor that we should take back from Twitter and social networks.

It may seem that ActivityPub, Bluesky, and Nostr are pulling the social web in multiple directions. But it’s okay to experiment, and we may end up having a couple of interconnected layers in the fediverse. Bluesky in particular has received pushback against continuing with their AT Protocol instead of using ActivityPub.

Bluesky CEO Jay Graber responded to those concerns [in an interview with Fast Company][13]:

> I do think that having multiple protocols at this time is good. […] Because we’re testing out what works and how these protocol design choices interplay.

There will be several overlapping efforts at federation throughout 2024. It feels chaotic because so many developers are moving fast again for the first time, adding their own flavor to the social web.

Meta’s Threads embracing ActivityPub will ensure that Mastodon and ActivityPub are here to stay. [Mastodon creator Eugene Rochko blogged][14] about the impact Threads will have on ActivityPub:

> The fact that large platforms are adopting ActivityPub is not only validation of the movement towards decentralized social media, but a path forward for people locked into these platforms to switch to better providers. Which in turn, puts pressure on such platforms to provide better, less exploitative services. This is a clear victory for our cause, hopefully one of many to come.

For many people, Mastodon has been the first time they’ve experienced a post-Twitter world and realized that _it’s fine_. As the fediverse grows, this only becomes easier. Easier to live without the big platforms, easier to move between services. But the entire fediverse is still small compared to the size of centralized silos, compared to Bluesky, and compared to the whole web itself.

Social networks come and go. Protocols evolve. What always remains is your blog, based on open standards: HTML, DNS, and IndieWeb formats. It is always the right time to invest in the open web.

---- 

At the start of 2026, [Joan Westenberg blogged][15] about a return to the blogosphere, of the value and nuance of long-form content, of exploring our own ideas through the format:

> You can write a post working through an idea, acknowledge in the post itself that you’re not sure where you’ll end up, and invite readers to think alongside you. You can return to the topic weeks later with updated thoughts. The format accommodates the actual texture of thinking, which is messy and recursive and full of wrong turns.

It ended with a call to action:

> Start a blog. Start one because the practice of writing at length, for an audience you respect, about things that matter to you, is itself valuable. Start one because owning your own platform is a form of independence that becomes more important as centralized platforms become less trustworthy.

And going back to [a January 2024 blog post][16] leading up to his birthday, Matt Mullenweg asked people to blog:

> Publish a post. About anything! It can be long or short, a photo or a video, maybe a quote or a link to something you found interesting. Don’t sweat it. Just blog. Share something you created, or amplify something you enjoyed. It doesn’t take much. The act of publishing will be a gift for you and me.

I love this because it’s not just a birthday gift to Matt. It’s a gift to the whole web. With every new blog post, the web can become more interesting, more diverse, more a reflection of today’s culture.

Are we making the web better? We don’t have to quit X, Facebook, and Instagram. We don’t have to be outraged at big tech executives, or rejoice when they’re hauled up to Capitol Hill to testify before Congress. But we do have to blog, write, post photos on our own site, read, and create consistent with the original vision for the web.

Even if we also post to closed silos, let’s put enough into the open web to move it forward.

[1]:	https://twitter.com/rabble/status/1514794177590022162
[2]:	https://www.forbes.com/sites/michaeldelcastillo/2022/09/11/jack-dorseys-former-boss-is-building-a-decentralized-twitter/
[3]:	https://www.flickr.com/photos/fallenpegasus/2238720339
[4]:	https://x.com/jack/status/1518772754782187520?s=20
[5]:	https://bsky.app/profile/bsky.app/post/3krreazpfpu2t
[6]:	https://www.nos.social
[7]:	https://divine.video/
[8]:	https://github.com/nostr-protocol/nostr
[9]:	https://social.coop/@J12t/111694192782584481
[10]:	https://elezea.com/2016/01/an-invitation/
[11]:	http://www.slate.com/blogs/future_tense/2016/01/05/twitter_isn_t_raising_the_140_character_limit_it_s_building_a_wall.html
[12]:	http://www.theguardian.com/technology/2015/dec/29/irans-blogfather-facebook-instagram-and-twitter-are-killing-the-web
[13]:	https://www.fastcompany.com/90996044/bluesky-twitter-alternative-jay-graber-ceo
[14]:	https://blog.joinmastodon.org/2023/07/what-to-know-about-threads/
[15]:	https://www.manton.org/2026/01/02/quotes-and-notes-on-the.html
[16]:	https://ma.tt/2024/01/birthday-gift/