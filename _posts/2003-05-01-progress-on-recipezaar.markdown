---
author: troyh
comments: true
date: 2003-05-01 18:25:27+00:00
layout: post
slug: progress-on-recipezaar
title: Progress on Recipezaar
wordpress_id: 2046
---

The new caching mechanism has been running well for the last few days. Our main goal was to relieve the load on the database side, which we have definitely done. But of course, that load doesn't magically go away so it was transferred to the web server side. That's good as their are more web servers than database servers and the work that the web server has to do is much more straightforward than the database server's work. But more optimization/improvements are going to be beneficial.
