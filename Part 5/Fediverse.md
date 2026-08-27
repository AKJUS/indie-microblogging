## Fediverse

_“My good opinion once lost is lost forever.” — Pride and Prejudice_

There was a growing backlash against Twitter among Mastodon users who felt they had found their new social network on the internet. Users coined the derogatory term Birdsite for Twitter, determined to never return. Mastodon’s UI was so similar to Twitter that it was a natural next social network, even if it only partially fulfilled the goals of the IndieWeb.

Mastodon has inspired developers to create additional new services that can be more open versions of popular platforms. Bookwyrm is a book sharing site with features similar to Goodreads. PeerTube is a video sharing site. Pixelfed is a photo sharing site based heavily on Instagram's UI, but compatible with Mastodon.

Pixelfed developer Daniel Supernault first heard about Mastodon in 2016. He was coming from Statusnet, an early federated platform known for its technical implementation if not necessarily its UI, and Daniel found Mastodon’s UI a refreshing change.

I interviewed Daniel Sup over email for this book and he described how the development of Pixelfed started:

> Around 2016 I started working on a GNU/Social successor using the Laravel framework. I picked it back up in early 2018 and made a lot of progress for a few months until I started implementing federation support. That is when I realized I made a mistake with the database schema, it would require a significant refactor.

> At that time I had discovered Pleroma and decided to research other social networks, two weeks later I shared the first screenshot of Pixelfed.

Like Mastodon, Pixelfed is open source, so developers can run their own versions of it. The original instance, `pixelfed.social`, stopped accepting registrations after about 10,000 users. Developer @dansup [posted about the news][1] in May 2019:

> It was a tough decision to make, I think it will pay off in the long run 😉

The goal was to accelerate the adoption of other instances and further underscore the need for working federation between Pixelfed and Mastodon. Because most people's instinct is to join the "first" instance, by default that instance will become much larger than any other. This is what has happened with `Mastodon.social`. By forcing new users to find a new instance, it spreads the load around, creating smaller communities.

Sup also told me about how well he thought the decision was working:

> I'd say it worked out as expected, we are seeing overall growth across instances even as pixelfed.social active users declines. I've seen a few single user instances, once our invite system is shipped I expect we'll see more closed group instances.

After the interview, Pixelfed has re-opened user registrations on the original instance. There has been a similar shift in thinking with the Mastodon mobile app UI to point people first to the flagship `mastodon.social`, to make the initial registration experience easier to understand.

Pixelfed looks remarkably similar to Instagram. Where Instagram is still primarily used from mobile phones, though, Pixelfed started as a web interface. It supports posting from the web, including applying filters to photos:

![][image-1]

[In early 2020][2], Pixelfed also added a new featured called Restricted Mode that makes a personal instance more suitable to be privately shared with family and friends:

> Restricted Mode will allow you to require authentication for every page and disable federation support with a single command.

By disconnecting your Pixelfed instance from the larger network of Pixelfed and Mastodon instances, you can use it like a personal version of Instagram. This again gets us back to smaller social networks, easing the transition away from ad-supported silos. It also may be appealing to Facebook users who want a private way to share photos, which has not been a major focus of either Micro.blog or the IndieWeb.

Sup would also hang out in the IndieWeb chat, and I asked him about the opportunity to bring more of the IndieWeb principles and formats to ActivityPub-based apps like Mastodon and Pixelfed. “I believe adding IndieWeb principles and specs like MicroPub to Pixelfed aligns with our long term goals,” he told me.

---- 

Throughout 2025, two popular platforms would embrace the fediverse: the blogging platform Ghost, and the social magazine Flipboard. This lent additional credibility to ActivityPub as a standard. Flipboard would also spin out a new app, Surf, focused on fediverse and even Bluesky feeds.

Ghost founder John Nolan wrote about why they were using ActivityPub:

> …

Most microblogging on the fediverse is still centered around Mastodon, and Mastodon has a distinct culture. For many Mastodon users, they don’t think of posting to the fediverse as posting to the open web, in the same way they would post to a blog, but instead think of it as a small, semi-public community. From this perspective, it becomes important to consider a user’s consent for how their posts are used, quoted, or copied across the web.

This disconnect with the traditional open web led to some fallout when Bridgy first planned to connect ActivityPub servers to Bluesky. Bridgy was going to make it open by default, so that public Mastodon users could be followed from Bluesky without needing permission. For a snapshot of how this blew up, [see this GitHub issue][3] discussion, now thankfully closed after it devolved into personal attacks.

Some people were focused more on protecting the culture and conventions of Mastodon as a platform than they were concerned about the web as an open platform. That is understandable, especially for people who are not comfortable having their posts easily accessible. It is a tightrope that everyone must choose to walk balancing their own needs.

When I post to my blog, my posts are on the web, and so hopefully make the web a little better. I’m contributing to sort of a larger purpose, something I can refer to later myself, and maybe something others will find value in too. It’s a subtly different mindset than posting to a specific platform where I mostly expect my followers to see it.

My blog is connected via ActivityPub to Mastodon, and via cross-posting to Bluesky, Nostr, Threads, and elsewhere. But I could disconnect those platforms and it wouldn’t change much about how I post and what I write about.

That’s not to say there aren’t great reasons to prefer a smaller, more controlled audience. We have Mastodon post visibility to limit who can see posts. We have robots.txt to discourage search engines. We have settings to make posts ephemeral. As Bridgy developer Ryan Barrett said himself [in an article on TechCrunch][4], this level of control is one thing that has made Mastodon a good online home for many people:

> A lot of the people there, especially people who have been there for a while, came from more traditional centralized social networks and got mistreated and abused there, so they came looking for and tried to put together a space that was safer, smaller and more controlled. They expect consent for anything they do with their data.

I respect this view. It’s not how I approach my own blog, but I would never argue that someone shouldn’t be able to protect themselves. There should be a variety of approaches in between sharing everything online and sharing nothing.

And we do have additional solutions already. Mastodon server administrators can block other servers that are causing problems. Users can mute or block other users. These solutions apply equally to Mastodon servers and to a potential Bluesky bridge.

If there are no technical differences between blocking a rogue Mastodon server and a Bluesky bridge, what are people truly concerned about? It often appears to get back to identifying with Mastodon and its principles, and inherently distrusting other companies, fearing a return to the worst of massive, centralized platforms.

If this sounds familiar, it’s not unlike the reaction many had when Threads was rumored to support ActivityPub, concerned that Meta would extend and then kill what made Mastodon special and open. I instead saw it as a step forward, with Meta adopting ActivityPub as the potential to fast-forward the progress of the social web by years. Ever since I grew disillusioned with a Twitter over a decade ago, I could only dream of a moment where a massive tech company embraced such a fundamental open API.

Smaller social networks are an important part of finding our way out of the social network mess of larger, especially ad-based platforms. Mastodon deserves enormous credit for making federation and smaller servers actually work. I can’t overstate how significant it was for Mastodon to be a mature platform that could welcome users leaving Twitter X.

Federation is just one part of the progress we can make, though. We also need to embrace the open web again, encouraging more people to have their own blog and identity online. Bridgy has been working toward these goals for years, helping people connect their blog to other social networks.

My concern with some Mastodon users (again, not everyone!) pushing back against interoperability with non-Mastodon platforms is that it moves Mastodon away from the open web, which is surely at odds with the original purpose of Mastodon and many of its features, from an open client API to federation itself. We can already see some signs of Mastodon putting up slight roadblocks to open web access. For example, permalink posts on Mastodon require JavaScript — you can’t view HTML source and get the post details, making it a little more difficult to build tools that understand Mastodon pages. At the API level, some servers also require signed ActivityPub requests, making it a little more difficult to look up user profiles.

The developer community for Mastodon is free to make any of these decisions they want. To play this out to its most extreme version, they could even disable RSS feeds, treating Mastodon servers more like protected, mini silos.

But moving away from openness will not only limit the potential of the fediverse, it risks holding back the larger social web. If there’s a knee-jerk reaction to interoperability with other platforms, Mastodon may find that its head start as the largest federated platform becomes eroded, eclipsed by Bluesky and other platforms. I would ask the folks on Mastodon who are so strongly against bridging to Bluesky if that's the future they really want.

---- 

There is a new risk with small platforms.

Mastodon and other popular fediverse software have had a huge impact on the open web. There is a lot to like. By focusing on tens of thousands of smaller communities, the whole system is insulated from a single rogue CEO, and it's more manageable for admins to stay on top of community issues. This is a really good step forward compared to massive silos.

Many of the problems with social networks remain in Mastodon, though. Chasing follower counts and likes. Scanning headlines instead of reading. Piling on with quick replies. Algorithms to surface popular stories that are being boosted. The infrastructure changed, but human behavior did not, and the platform features are still nearly identical to Twitter.

There is a new problem too that didn't exist before. Smaller communities can become insular bubbles. Admins and users with many followers on a server have power to shape opinion and direct frustration at other users. The local timeline provides both connection to fellow members of the community _and_ isolation from broader viewpoints outside the community.

I'm not suggesting that everyone is unhappy with Mastodon, Threads, or even Bluesky. Some people don't see the same problems that I see, and that's fine. But I'm not happy. And increasingly, I want to unplug from these networks and focus on my blog and the Micro.blog community, even though I believe in APIs and connecting many different platforms on the open web.

I occasionally hear the same thing from other users. They want to participate in the larger social web, but on their own terms, with their blog as the most important part of their online presence.

Today we're launching new settings in Micro.blog to take control of how your account federates with everyone else. For the first time, this allows you to dial back your participation in the fediverse without actually deleting your fediverse profile. Your account still exists on the fediverse. It's just a little quieter.

Here is a screenshot for what's available under Account → View Fediverse Details:

![][image-2]

By selecting the second option, users on Mastodon won't see your blog posts in their timeline. You can still get replies and reply to other Mastodon users, but you will likely get drastically fewer replies, because there won't be much for Mastodon users to reply to.

As you can see in the screenshot, there is also a new option for muting. For a while you've been able to mute people or servers. For example, some users wanted to mute Threads. Now you can _mute the entire fediverse_. With this selected, replies to you from the fediverse will still arrive at Micro.blog, but you won't see them in your timeline.

This is for people who want a quieter space on the web. A space focused more on writing and less on reacting to other people.

Of course all of this is optional. If you like the way it already works, no need to change anything. I'm imagining these settings are something that people will enable or disable from time to time, not keep permanently set.

The social web is growing quickly and Micro.blog will adapt along with it. We'll always stay true to our founding ideals and IndieWeb principles, trying to find the balance between blogging and the social web that's right for our platform.

---- 

Large platforms, even if they are backed by open standards, should be avoided if your identity is inseparable from that silo's domain name. Be careful that you aren't quitting one silo (Instagram) only to join another silo (a large Pixelfed instance).

Rather than looking for "another Twitter" or "another Instagram", we should look at the plumbing behind Mastodon, Pixelfed, and Bluesky, to support that with indie blogs. That plumbing is mostly referred to as ActivityPub, although Mastodon is really a blend of multiple APIs like WebFinger, ActivityPub, Atom feeds, and even some IndieWeb formats. Bluesky uses the AT Protocol.

[1]:	https://mastodon.social/@dansup/102166878559849519
[2]:	https://mastodon.social/@pixelfed/103542563320249737
[3]:	https://github.com/snarfed/bridgy-fed/issues/835
[4]:	https://techcrunch.com/2024/02/14/bluesky-and-mastodon-users-are-having-a-fight-that-could-shape-the-next-generation-of-social-media/

[image-1]:	https://book.micro.blog/uploads/2020/3d2b9de6dd.png
[image-2]:	https://book.micro.blog/uploads/2026/fediverse-prefs.png