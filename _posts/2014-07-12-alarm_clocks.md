---
layout: post
title:  "How every smartphone platform gets the alarm clock wrong"
date:   2014-07-12 16:05:21
---

[![Telechron 7H241 Snooz-Alarm]({{ site.url }}/images/clocks/telechron.jpg)](http://www.telechron.net/eod/7h241.htm)

In 1956 General Electric introduced the *Telechron 7H241 Snooz-Alarm*[^telechron].  Like no alarm clock before it, the Telechron introduced a "snooz" button that, when pressed, would silence the alarm for several minutes before reactivating it, allowing the user to gain several more minutes of sleep. This feature was first copied three years later, but using the name "drowse" instead of snooze[^westclox]. Today, almost all alarm clocks provide a snooze function of this kind; GE's term evidently became the widely accepted one. 

As on the Telechron, the "snooze" function on today's alarm clocks is activated by a larger and easier to press button than the "alarm off" function. Presumably, this design was chosen so that the person being woken (who is probably very drowsy) will be more likely to hit the snooze button (and thus be woken again in several minutes) than the alarm off button (and thus sleep for several extra hours and be really late).

Pretty much every smartphone OS on the market today provides a built in alarm clock app -- iOS, Android, Windows Phone. Even most feature phones have this! However, almost all of them exhibit the same mistake: **the snooze button is the same size as the alarm-off button!**

Let's start with Android, my current mobile OS of choice. The Android Kitkat alarm clock app offers a point from which one can touch and slide toward a target, which is consistent with the behavior of the phone's lock screen:

![Android 4.4 Kitkat Stock Alarm Clock App Screenshot]({{ site.url }}/images/clocks/android-stock.png)

Touching that point reveals both the alarm off and snooze functions:

![Android 4.4 Kitkat Stock Alarm Clock App Screenshot, Actions]({{ site.url }}/images/clocks/android-stock2.png)

However, note that both actions have the exact same target size! The only distinction is which direction you swipe -- a rather easy mistake to make for someone just being woken up by an alarm!

This isn't unique to Android, however. Windows Phone makes the same mistake, offering two small, identically-sized buttons: [(image credit)](http://www.windowsphone.com/en-us/how-to/wp8/settings-and-personalization/set-alarms-on-my-phone)

![Windows Phone Alarm Screenshot]({{ site.url }}/images/clocks/wp-alarm.png)

iOS does a better job; the snooze and off actions are distinct interactions -- one is a button press, and one is a swipe. However, the button's area is still not large enough to easily press without either looking at the screen or memorizing its position[^phonenote]:  [(image credit)](http://www.iphonehacks.com/2013/07/ios-7-beta-4-whats-new.html)

![iOS 7 Alarm Screenshot]({{ site.url }}/images/clocks/ios7-beta4-alarm.jpg)

Of course, these are all examples of alarm clock apps included with the operating systems themselves. Third party apps often approach this issue the right way. For example, [Timely](https://play.google.com/store/apps/details?id=ch.bitspin.timely&hl=en), which was recently bought by Google[^timely], offers a large snooze button target, as well as the ability to snooze by pressing any physical button on the phone. Alarm off requires a long swipe action, making it much more difficult to trigger by accident. We can only hope that future versions of Android's stock clock app inheirit this:

![Timely for Android Screenshot]({{ site.url }}/images/clocks/timely.png)

[Discuss this post on Hacker News](https://news.ycombinator.com/item?id=8030463)

[^telechron]: [http://www.telechron.net/eod/7h241.htm](http://www.telechron.net/eod/7h241.htm)

[^westclox]: [http://clockhistory.com/westclox/products/electric/drowse/](http://clockhistory.com/westclox/products/electric/drowse/)

[^phonenote]: I *think* the target area is only that of the text itself, because in iOS 6 and below it was a button.

[^timely]: [Google acquires Bitspin, makers of beautiful Android alarm clock app Timely](http://www.theverge.com/2014/1/4/5273474/google-acquires-bitspin-timely)
