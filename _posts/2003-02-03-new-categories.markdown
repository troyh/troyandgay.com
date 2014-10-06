---
author: troyh
comments: true
date: 2003-02-03 04:52:48+00:00
layout: post
slug: new-categories
title: New Categories!
wordpress_id: 1876
---

We finally got the new categories up. We added 174 categories, almost doubling our category set and (almost) completely reorganized the hierarchy. 





Aside from the category work, the interesting thing is that it now uses PHP rather than C for the browse tree generation (yes, a port from C to PHP). This is good because it lets us deliver the  app on a generic Apache + PHP install. It also makes the HTML generation more flexible with PHP templates rather than hardcoded HTML generation in the PHP binary, so we can alter the presentation and change it without restarting Apache. No more remembering to restart Apache when that changes.
