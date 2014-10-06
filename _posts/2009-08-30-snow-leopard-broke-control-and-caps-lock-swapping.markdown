---
author: troyh
comments: true
date: 2009-08-30 22:02:56+00:00
layout: post
slug: snow-leopard-broke-control-and-caps-lock-swapping
title: Snow Leopard broke Control and Caps Lock swapping
wordpress_id: 3732
---

**9/1/2009 Update:** The problem turned out to be related to the wireless USB hub fo[r Logitech's MX Revolution](http://www.logitech.com/index.cfm/mice_pointers/mice/devices/130&cl=US,EN) (and others?) mouse. If you unplug it before you change the Modifier Keys the changes do take effect. You can then plug the Logitech USB dongle back in and everything works fine. I tried every combination of plugging my keyboard into my computer but the Logitech dongle was plugged into the back of my display so I didn't think to try it. [Michael Richardson](http://mtrichardson.com/) figured it out.

I installed Snow Leopard this morning and discovered that they broke the most important feature of any OS: swapping Caps Lock and Control. The Control key isn't used much by most users, but developers use it all the time. In fact, it's safe to say that no developer worth his/her salt doesn't swap their Control and Caps Lock keys and I haven't had an OS in decades that didn't do this... until now. Actually, Mac OS X didn't do this officially until 10.4, but you could edit a .plist file to swap the keys, which was good enough. In 10.4 they conveniently put the feature in System Preferences and officially supported it. Until Snow Leopard broke it. Not even [the manual way to change it](http://www.macosxhints.com/article.php?story=20020222094159459) works anymore.

To be clear, this setting in the System Preferences Keyboard pane has no effect whatsoever, not just for Caps Lock but for any of the keys:

[![](http://troyandgay.files.wordpress.com/2009/08/screen-shot-2009-08-30-at-25523-pm.png)](http://troyandgay.files.wordpress.com/2009/08/screen-shot-2009-08-30-at-25523-pm.png)

It's bad that the retarded _[Update after finding out the true cause of the problem: My apologies to the Apple developer for calling them "retarded", I should be calling the Logitech developer "retarded" because they obviously did something non-standard with their driver for the USB dongle]_ developer that broke this didn't even bother to test their change themselves. It's inexcusable that the entire time this was broken during the development of Snow Leopard (12 months?) _nobody at Apple noticed it_, not even their developers.

This is like an auto mechanic never noticing that his wrench is broken. Or a bartender never noticing that his corkscrew doesn't work.

<!-- more -->

That no developer noticed this means that either the developers at Apple don't use the Control key or they don't mind bending their pinky back to reach the normal Control key the 3,000 times a day that every programmer's editor requires that you use the Control key. It's not possible that they don't use the Control key because even the crappy editor in XCode, Apple's development IDE, makes heavy use of the Control key. In my 20+ years of software development I have never known an editor that doesn't use the Control key more than any other key. Even vi, the (great) editor whose design goes to great lengths to avoid using anything other than alphanumeric keys, uses the Control key heavily.

So the only logical conclusion is that Apple's developers use the Control key in that god-awful location in the lower-left of the keyboard. That's good, because it means that Apple will one day get sued by all their employees for the injuries that keystroke causes.

How long until 10.6.1 comes out? 3 months? 4 months? And will it even be fixed in that??! Apple is notoriously slow at fixing bugs or even acknowledging them, especially ones like this they obviously think is minor, that they make Microsoft look downright responsive to bug-fixes. Sometimes I really really hate Apple.

Postscript: When are we going to finally get rid of the stupid Caps Lock key anyway?!? Who has used that key in the last 40 years? What kind of typist types _anything_ in all caps or can't be bothered to hold the Shift key down? All Caps were useful back in the 1940s when people didn't have **bold**, _italics_ or underlines on their typewriters. Why are we still making keyboards with this worthless and dangerous key?
