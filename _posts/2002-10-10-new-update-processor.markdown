---
author: troyh
comments: true
date: 2002-10-10 17:15:06+00:00
layout: post
slug: new-update-processor
title: New Update processor
wordpress_id: 1689
---

Today (last night) is the first run of the new update processor. I'm just updating cached pages now and it seems to be working well. The biggest change is the more thorough dependency list that improves its accuracy. But another significant improvement is that it doesn't simply delete the cached pages and wait for a real user to make another request, it immediately requests every page again so that the cached pages are always there.

The downside is that it took 10 (**update: make that 14**) hours to do the browse cache processing. But that's basically a change to all 200,000+ cached browse pages. In the future, the daily changes should be smaller. The recipe cache updating took about 1.5 hours (almost 40,000 pages).
