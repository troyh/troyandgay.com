---
author: troyh
comments: true
date: 2002-09-23 19:18:12+00:00
layout: post
slug: swapping-caps-lock-control-on-macos-x
title: Swapping Caps Lock & Control on MacOS X
wordpress_id: 1638
---

Just so I can find this again when I need it later, here's how you make USB keyboards swap Caps Lock & Control under MacOS X:

1. Edit /System/Library/Extensions/IOUSBFamily.kext/ Contents/PlugIns/AppleUSBKeyboard.kext/Contents/Info.plist and add:

<key>Swap control and capslock</key>
<integer>1</integer>


under IOKitPersonalities/AppleUSBKeyboard. Here is a properly edited Info.plist for the first release of 10.1, but be aware that other parts of the file may be incorrect for future versions of the driver. You can, of course, use the PropertyListEditor application that comes with the developer tools to add the property.

2. Remove the file /System/Library/Extensions.mkext. This is a device driver cache. The modified AppleUSBKeyboard driver will not be loaded if this exists. The next reboot will rebuild this file with the modified AppleUSBKeyboard driver. (And the reboot will take a bit longer than normal as it builds the file.)

3. Reboot.
