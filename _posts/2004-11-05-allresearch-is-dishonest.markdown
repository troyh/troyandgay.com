---
author: troyh
comments: true
date: 2004-11-05 21:57:42+00:00
layout: post
slug: allresearch-is-dishonest
title: AllResearch is a thief
wordpress_id: 2906
---

*Summary:* AllResearch's attitude is that if they tell you what they're going to do with the content they take from you, you won't give it to them, so they have no choice but to lie. This makes sense to them. They can't imagine why anyone would  not want to give them content. I liken it to a bank robber who, when asked why he robs banks, answers incredulously "Well, if I just walked up and asked for money they wouldn't give it to me, would  they?!"

I just discovered that we had a visitor to "our site":http://www.recipezaar.com that viewed 173,025 pages in 3 days. Seemed a bit high. So I looked into it and checked the IP address: 38.144.36.16. A reverse DNS lookup shows that "AllResearch.com":http://allresearch.com owns the IP address.

Normally this isn't a big deal. Googlebot does 10x as much traffic on the site. And there are plenty of other bots from other companies. But AllResearch's bot does something that most bots don't do: it lies. Every request to a web site requires that the bot tell the site what it is, such as Internet Explorer, Netscape, etc. AllResearch's bot says it's IE. In fact, it says it is different versions of IE so as to not arouse suspicion. Sometimes it says it's IE 5 for the Mac (Mozilla/4.0 (compatible; MSIE 5.12; Mac_PowerPC)) and sometimes it says it's IE 6 for Windows (Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)). Why is it easier to go to the trouble to alternate user-agent strings than it is to just provide one honest static string?

It is a violation of our "Terms of Service":http://www.recipezaar.com/about/tos.zsp and they would have known that had they bothered to read it. The damage is that they are effectively blocking legitimate use of the site by real people, they are placing an unnecessary burden on our servers and costing us money in bandwidth. And what are they doing with the data they retrieve? They are reselling it on their WebClipping.com business. This is simply theft. If they want our content, they can do what every other bot we allow does: tell us the truth. The content is free, just be honest about it and everyone's happy.

I called the company to ask them why their bot lies. I talked to one guy who sounded like he's heard this before ("Uhh.. hold on...") and was immediately passed on to someone else. I asked this guy the same question and his answer was that if they are honest about their user-agent string, sites won't serve them content. Shocking! Maybe they don't want you stealing their content! Did he ever think of that? Apparently not, he just answered "You can call it stealing if you want, we consider it a valuable service to our customers". I love how people rationalize their actions when they know they're wrong. And he fully admits that he's taking content to provide it to others.  I wonder if their "customers":http://allresearch.com/clients.html know they are paying for stolen content.

Google does a fine job being honest about their user-agent. If it's good enough for Google, isn't it good enough for AllResearch? It is unless AllResearch doesn't want anyone to know they're crawling sites. Why wouldn't they want anyone to know? Honest people don't need to cover their tracks.

When I insisted that they be  honest in their user-agent string, he answered "Don't you have anything better to do on a Friday afternoon than complain about our bot?". In other words, he wants me to stop complaining and get back to work creating content for AllResearch to steal.

So just like "this person":http://jclark.org/weblog/WebDev/botban1 did when they discovered AllResearch's bot, we now block their IP address. This will work until everyone does this to them and they change their IP address.

Other people who have been annoyed by AllResearch: "Lost in Technophilia":http://www.mundell.org/archives/2004/10/26/bye-bye-newsallresearchcom, "Volker Weber":http://vowe.net/archives/005080.html.
