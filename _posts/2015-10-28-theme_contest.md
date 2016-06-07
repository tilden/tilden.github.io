---
layout: post
title:  "Sencha ExtJS Theming Contest - First Place Submission"
subtitle: "October 28th, 2015"
date:   2015-10-28 16:00:00
thumbnail: "/images/posts/theme_contest/post_banner.png"
---



**Sencha ExtJS** is a Javascript web-application framework, like many others that are currently popular, such as [Angular](https://angularjs.org/), [Backbone](http://backbonejs.org/), and [Ember](http://emberjs.com/). However, a key factor that makes ExtJS unusual is its age---ExtJS predates all of those frameworks by at least two years. Perhaps more impressively, ExtJS 1.0 shipped with Internet Explorer 6 compatibility, a browser that came out in _2001_[^ie6_wiki]. Angular, the next-oldest framework, required IE8[^angular_ie], a browser which, while still terrible, was much more capable[^ie_6_7_8].

Recently, to promote their latest release, Sencha, the company behind ExtJS, held an [application theming contest](https://www.sencha.com/blog/sencha-application-theming-contest/). Entrants were required to submit a custom theme package, which would in turn be applied to an example "Feed Viewer" application:

<a href="{{ site.url }}/images/posts/theme_contest/feed_viewer.png"><img src="{{ site.url }}/images/posts/theme_contest/feed_viewer.png" width="512" height="306" alt="Screenshot of the Feed Viewer example with the default theme" title="what a strangely relevant news story"></a>

<div class="caption">The Feed Viewer example application, using the default theme</div>

The theme selected as the best would win a prize of $2,500. Since I already had experience building a custom ExtJS theme package for the [Restaurant Management System redesign project](/projects/restaurant_management), I decided to enter.

I decided to base the design of the theme on Google's [material design guidelines](https://www.google.com/design/spec/material-design/introduction.html). After drawing several explorations for the visual appearance of the feed viewer, I settled on a look that was not precisely material design, but designed to be a better visual fit for the ExtJS layout system:

<a href="{{ site.url }}/images/posts/theme_contest/final_version.png"><img src="{{ site.url }}/images/posts/theme_contest/final_version.png" width="512" height="306" alt="Screenshot of winning theme" title="is it purple, blue, or indigo? YOU DECIDE"></a>

<div class="caption">The winning theme, as featured on the <a href="https://www.sencha.com/blog/dan-tilden-wins-the-sencha-theming-contest/">Sencha website</a></div>

My theme was selected as the best---not only for its appearance, but also for its well-organized implementation and clean code. If you are interested in using it for your own projects, the [theme's code is currently posted on Sencha's official GitHub account](https://github.com/sencha/theming-contest/tree/winner1)!

[^angular_ie]: [AngularJS Developer Guide: Internet Explorer Compatibility](https://docs.angularjs.org/guide/ie)
[^ie_6_7_8]: [Smashing Magazine: CSS Differences in Internet Explorer 6, 7 and 8](http://www.smashingmagazine.com/2009/10/css-differences-in-internet-explorer-6-7-and-8/)
[^ie6_wiki]: [Wikipedia: Internet Explorer 6](https://en.wikipedia.org/wiki/Internet_Explorer_6)
