---
author: troyh
comments: true
date: 2004-04-15 17:55:32+00:00
layout: post
slug: intel-hyperthreading
title: intel Hyperthreading
wordpress_id: 2635
---

I'm slow, but I learned something new today: intel's [hyperthreading](http://www.intel.com/products/ht/hyperthreading_more.htm) appears to the computer as 2 CPUs. Imagine my surprise when I did a 'cat /proc/cpuinfo' on a new server and found it had 2 processors! The machine is co-located several miles away (so I couldn't open it and look for a 2nd processor) and I was very confused when I looked at the picture in the motherboard manual clearly showing only one CPU socket. A little research on the net and I'm smarter about hyperthreading.

I'm normally annoyed by faked things like this and I'm very skeptical of intel's claims of improved performance in their CPUs, but this time they may be on to something. The new server is a 2.8GHz P4 and is easily twice as fast (running Apache, that is) as another 2.4GHz P4 that lacks hyperthreading, although it should only be ~30% faster due to its faster CPU, faster RAM and faster FSB. I'm impressed.
