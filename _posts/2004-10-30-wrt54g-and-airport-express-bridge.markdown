---
author: troyh
comments: true
date: 2004-10-30 22:16:02+00:00
layout: post
slug: wrt54g-and-airport-express-bridge
title: WRT54G and Airport Express bridge
wordpress_id: 2888
---

Our home office is being remodeled this week, so we moved our office temporarily to a location without network access. Rather than run a long ethernet cable across the house, I figured I could use our "Airport Express":http://apple.com/airportexpress to make a "bridge" to the wireless access point (a Linksys WRT54G) to network all our WiFi-incapable office computers. It turns out I can, but it took me a few hours to get it working. "This blog":http://weblogs.java.net/blog/inder/archive/2004/10/using_airport_e_1.html was very helpful, but it left out one important point: you have to tell the WRT54G the MAC address of the Airport Express so that the Airport Express can connect to it. Not knowing anything about WDS, I fiddled enough with it to get it working.

To do it, you go to the Wireless > WDS  page (OK the always-present unnecessary warning about WDS and AP mode), set the dropdown to "LAN" and enter the Airport Express' MAC address in the boxes (it's printed on the underside of the Airport Express). Do that, and the light should turn green and you're connected wirelessly.

Then I just plugged an ethernet cable into the Airport Express' ethernet port and my WiFi-less desktop is networked again. The Airport Express is very handy. And to think that this isn't one of the Airport Express' selling points.

And, as a plus, it forced me to finally install the Sveasoft open source firmware on the WRT54G, which gives me lots of cool toys on the WRT54G. The WRT54G is an amazing device. Its stock self alone is wonderful: a WiFi access point, router and 4-port switch for $70 is great. But with "Sveasoft's firmware":http://www.linksysinfo.org/modules.php?name=Downloads&d_op=viewdownload&cid=8 for it, I can now SSH to it and treat it like a regular linux box, syslog its log to one of our linux servers, telnet to it, update its time against an NTP server, throttle its bandwidth to provide better quality of service for specific services, administer it remotely over HTTPS, run crond, run a tftp server and more. But best of all, I can make it a VPN server. All this for $70! A commercial product would cost hundreds or thousands. This is the power of commodity hardware and a commodity OS. :)
