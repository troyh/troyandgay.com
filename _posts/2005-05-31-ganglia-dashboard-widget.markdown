---
author: troyh
comments: true
date: 2005-05-31 01:55:13+00:00
layout: post
slug: ganglia-dashboard-widget
title: Ganglia Dashboard Widget
wordpress_id: 3087
---

I spent my Memorial Day weekend building my first Tiger Dashboard widget. It's a monitor for [Ganglia](http://ganglia.info), which is what we use to monitor our server clusters. I wanted this ever since I heard about [Dashboard](http://www.apple.com/macosx/features/dashboard/) and now I have it. No more refreshing a web page to see the quick status of all the servers.

It should work with anyone's Ganglia setup, if you install [the PHP script](http://troyandgay.com/public/ganglia.phps) that feeds it the XML data it needs and [download the widget](http://troyandgay.com/public/Ganglia.wdgt.zip). Put the PHP script somewhere on your server. You'll have to modify the code right now to set the URL to that PHP script. Later, I'll make it configurable from the widget itself (or you can). Consider it GPL'd, so please feel free to improve it but let me know so I can have the improvements too. :)

TODO list:
1. Make the flipside of the widget to set configurable options.
2. Display a history graph like the Apple-supplied stocks widget.
3. Make the clusters clickable to go to the standard Ganglia web page for the cluster
4. Make it prettier.
