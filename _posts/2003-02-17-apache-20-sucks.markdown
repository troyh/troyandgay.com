---
author: troyh
comments: true
date: 2003-02-17 00:20:17+00:00
layout: post
slug: apache-20-sucks
title: Apache 2.0 sucks
wordpress_id: 1892
---

I've spent days trying to get our troyandgay.com server setup. I want it to be an [Apache](http://httpd.apache.org) web server that supports [WebDAV](http://www.webdav.org). I originally tried to use Apache 1.3.27 but couldn't get [mod_dav](http://www.webdav.org/mod_dav/) to work -- it worked but every GET generated a 504 error (permissions error).





After sitting in bed working on my iBook til 3:30am one night, I gave up and tried Apache 2.0.44. WebDAV is built-in to Apache 2 and it worked right out of the box (so to speak). But nothing else worked... PHP only works as a module, not compiled in and it was flakey, CGI scripts were also flakey, and the server refused to send any images greater than 256 bytes -- it gave a 200 result code in the access_log, but no browser got any data.





So I went back to Apache 1.3.27 and everything works just fine, except for WebDAV. Oh well. I'll save WebDAV for another day. But, boy, would WebDAV be nice. Mac OS X works perfectly with it and even Windows supports it (in its usual klunky way). But at least troyandgay.com will be running PHP 4.3 and MySQL 4.0! That's probably enough cutting-edge stuff for now.




