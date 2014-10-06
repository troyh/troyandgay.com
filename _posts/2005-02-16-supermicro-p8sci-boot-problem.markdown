---
author: troyh
comments: true
date: 2005-02-16 17:33:42+00:00
layout: post
slug: supermicro-p8sci-boot-problem
title: Supermicro P8SCI boot problem
wordpress_id: 2995
---

I'm posting this to help people who have the same problem I did and search for a solution can find it by searching for "Supermicro P8SCI boot problem" instead of wasting days like I did with no info....

We got two new identical servers last week that have the new [Supermicro P8SCI](http://www.supermicro.com/products/motherboard/P4/E7221/P8SCi.cfm) motherboard in them. After installing linux on them, they wouldn't reboot reliably. Roughly 70% of the boots failed -- the machine just crashed right after the GRUB loading stage. This was the same on both machines, which made me believe it was a software problem rather than a hardware problem -- hardware can be flakey, but two machines failing the same way is unlikely.

After a weekend of trial-and-error trying to figure out if the problem was GRUB or the linux kernel or a hardware problem and doing a lot of internet research, we took it to the vendor on Monday, [Silicon Mechanics](http://siliconmechanics.com) (who is great!), and after a few hours they discovered that the BIOS console redirection was causing it. Supermicro hadn't heard about the bug yet -- it's a new motherboard for them and I'm probably one of the few people who use the BIOS' console redirection. We turned off console redirection and they boot fine.

On the bright side, we had them install [IPMI](http://www.intel.com/design/servers/ipmi/) cards in the machines. I've never used IPMI, but is supposed to be a better replacement for console redirection (among other things). So maybe some good did come out of all this wasted time.
