## Interlude: Interview with Marco Arment

I reached out to Marco Arment to ask some questions about the early days of Tumblr for this book.

**Manton:** What was it like when Tumblr was just you and David Karp?

**Marco:** It started as most projects did at the time: building a web app, showing it to our friends, and having a few people try it out. Tumblr was one of a handful of projects we were working on at the time as a consultancy, with the other contracting projects paying the bills to enable us to experiment.

David and I worked very well together. In addition to being a great front-end developer and designer, he’s also enough of a programmer that he could build everything himself. But he was also wise enough to know when he’d reached the limit of his skills and should hire a specialist, and I was that specialist for his lower-level programming needs. He was able to focus more on the design and front-end coding, while I made everything fast and scalable behind the scenes, but he was still technical enough to do a significant amount of coding himself, appreciate and manage my work, and ask insightful and provocative questions.

We kept Tumblr as just the two of us for an unusually long time, which let us keep costs down and iterate very quickly. In retrospect, and I think he’d agree, we probably should’ve hired more people sooner. But we were both very young and very busy — a combination that hides the need to expand a team and provides no time with which to do so.

**Manton:** Were there any early clues that Tumblr would become so popular?

**Marco:** We had a few friends using it from its inception in late December 2006, but it really took off with [Gina Trapani’s Lifehacker article][1] in March 2007. From that day forward, growth was constant and aggressive — I forget the exact numbers, but I think it was in the ballpark of 20% growth per month.

When I was there (2006–2010), it felt like a great accomplishment for a small team and kept us very busy, but I never imagined us being a peer to the “big” social networks or publishing tools. We always felt like the independent underdogs in New York, making the alternative to the Silicon Valley startups for other eccentric nerds like us.

Ultimately, most of Tumblr’s popularity came after my departure in late 2010. Most Tumblr retrospectives I see in the press are written by people who joined after I left, about events that happened after I left, involving people I never worked with.

They usually don’t even realize or acknowledge that my era there existed. (Everyone thinks Tumblr started around the time they joined.) But it was an amazing ride, an era of my life that I look back upon very fondly, and probably the most exciting and popular thing that I’ll ever work on.

**Manton:** You wrote some [on your blog in 2007][2] about Tumblr’s dashboard and trying to automatically find blogs to show people, to help discovery for new users, while also flagging spam. What kind of tools did you build to automatically catch problems? At what point did Tumblr need a larger team to keep up with content moderation?

**Marco:** Tumblr started as a blog-publishing tool with no social features, so in the earliest days, discovery and promotion were very low priorities. As it grew, the social features grew with it and eventually became what people knew Tumblr for, but they were very rudimentary in the beginning.

I don’t even remember what the discovery system was in the post you referenced, but the imminent replacement I teased was most likely Tumblr Radar, a grid that displayed the most popular recent posts. (Digg was very big then, and this was effectively a mixed-media version of it.)

Radar’s posts were only displayed after human approval — mine, for a while. On my train ride to work each morning, I’d use a cellular-tethered laptop to browse a back-end list of the most popular posts and manually approve whatever seemed appropriate for a general audience.

Our first additional employee was Marc LaFountain, who handled customer support and community management. At some point, I believe we passed this role along to him.

Spam wasn’t a big issue for the first few years because we were careful not to create any incentives for spammers. To deal with the few rudimentary issues we had, I just wrote some simple heuristics that prevented most automated spam and flagged any suspicious accounts for review. I did this review at first, then added it to Marc LaFountain’s duties.

The role of content moderation on a publishing platform today is much more broad, challenging, and important than what we had to deal with in those early years. Most of the job back then was spam prevention and a handful of copyright claims. In retrospect, we were very lucky that our users in that era were mostly nerds and artists, and we didn't have the challenges of today’s social networks. (This is another area that obviously changed significantly after I left in 2010.)

**Manton:** For all these years Tumblr has stayed true to its roots of making it easy to quickly blog not just text but also links, quotes, or photos. Reblogging on Tumblr even predates Twitter's own retweets. Did y’all ever feel pressure from WordPress and other blogging tools to make longer, essay-like posts a bigger part of Tumblr?

**Marco:** Not at all.

We always saw blogging tools like WordPress as indirect competition at best, almost as if we were a magazine publisher and they were a book publisher. Traditional blogs almost seemed like a different medium with very different needs and goals.

People could (and did) write long-form posts on Tumblr, but it was never optimized for them, and that allowed us to build great features designed for short content. Similarly to how an RSS reader is a pretty poor way to read Twitter, and Twitter is a pretty poor way to read long-form writing, what we were building was different enough in both creation and consumption style that we never saw traditional blogs as direct competition.

[1]:	https://lifehacker.com/geek-to-live-instant-no-overhead-blog-with-tumblr-244915
[2]:	https://marco.org/2007/06/06/its-almost-that-boring