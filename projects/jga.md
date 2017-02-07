---
layout: post
banner_photo: "/images/projects/jga/jga_sky.jpg"
title: "JGA: Crossroads of Destiny"
subtitle: "JGA: Crossroads of Destiny is a game for mobile and desktop following the journey of an exiled infomercial chef to restore balance to the world&mdash;and sell additional knives."
---

![A knife-wielding chef standing in a corridor](/images/projects/jga/intro.jpg)

<div class="buttons">
  <a href="http://freakified.github.io/jga/">
    <i class="material-icons">file_download</i>
    Download from project page
  </a>
	<a href="https://github.com/freakified/jga/">
    <i class="material-icons">code</i>
    Source Code on GitHub
	</a>
</div>

<a href="https://play.google.com/store/apps/details?id=net.freakified.jga">
<img style="margin: 0 auto" alt="Android app on Google Play"
src="https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png" width="200" height="77"/>
</a>

> Truly a work of art, this is a glass of cold water in an endless scorching desert.
>
> &#x2015;Niles Black, [Play store review](https://play.google.com/store/apps/details?id=net.freakified.jga&reviewId=Z3A6QU9xcFRPSHAwYXE0blUyNWxONGVtTGJTbG1WVFNlX0VubHFUY0tmNWd4SmtlUVdKaXJGZVBOMHhRLUJmZE5sUGhXbGQzbTYzcF9GWHNEUWVOckhmLWc)

> This is the best RPG story I had ever experienced
>
> &#x2015;CrickySoupDoupLP, [YouTube gameplay walkthrough](https://www.youtube.com/watch?v=FB8D6A0skS4)



Welcome to the world of **JGA: Crossroads of Destiny**. In this story-driven RPG, you play as an exiled infomercial chef who must embrace his destiny
and restore balance to the world. For this project, I composed an [**original soundtrack**](https://soundcloud.com/freakified/orphan-rush?in=freakified/sets/jga-crossroads-of-destiny-ost),
drew in-game **artwork**, wrote a **45-page script**, and **coded the entire game** using Unity.

* TOC
{:toc}

## Why does this exist? 

{% include img.html
  url="/images/projects/jga/battle_flanagan.jpg" w="640" h="360"
  alt="The chef battles two security guards"
%}

At one point long ago I made my younger brother a game as a Christmas present, starring him as the protagonist. Only taking about 10-15 minutes to play through, it featured a bizarre storyline involving flying basketballs, a J-shaped fortress, and lots of plot holes. For years, I had planned a sequel to the game--one which would finally explain *everything*.

However, years of planning merely resulted in numerous false starts and a huge amount of abstract ideas: I had concepts based on RPGs, platformers, sports games, and beat-em-ups. I had even, at one point, created graphical assets for a 3D version of the game that never made it past the prototype phase. It was clear that in order to start development, I needed to focus and actually design something that could reasonably be implemented. I wrote an outline, stripping the game down the most basic elements: the characters, their motivations, and the overarching framework of the story.

## Implementation

I'll spare you most of the details of writing the code (the battle system alone features enough class hierarchy and polymorphism to make your intro to Computer Science professor shed tears of joy), but ultimately I settled on the [Unity](https://unity3d.com/) game engine, because it was free, flexible, relatively easy to learn, and also offered the ability to easily build for multiple platforms.

{% include img.html
  url="/images/projects/jga/truefate.jpg" w="640" h="360"
  alt="The chef battles two security guards"
%}

## Playtesting

As the game reached a point where it was playable, I began letting various people try it out while I examined their performance to determine what worked and what didn't. Some of the results surprised me! A few highlights follow.

### Why can't I jump?

To simply development, I had decided to implement the game as a 2D side-scrolling game. However, as an RPG, it was not a platformer, and therefore the only required character movement was left and right. However, a key piece of feedback I received from early informal playtests: "where's the jump button??". After this happened several times with several different people, I realized that, despite the lack of a technical need for a jump function, people _expected_ this type of game to have a jump function. After adding one, this problem vanished.

### Keyboard or mouse? Yes.

As development on the game progressed, I wanted to make sure it would work and make sense to people. I initially built the battle system to rely on gamepad-based controls, as I assumed that this would make sense since the rest of the game is played that way. However, in early playtests, I found that people kept trying to go for the mouse. I then designed the battle system to be playable with _just_ the mouse and found that then people kept trying to use the keyboard. Finally I realized that I couldn't get away with half-measures and implemented both mouse and gamepad support.

{% include img.html
  url="/images/projects/jga/shot3.jpg" w="640" h="360"
  alt="The chef battles two security guards"
%}

### Stop dumping me in the main menu!

Because the game wasn't that long and was completely deterministic, there wasn't really a lot of reason to build a fully-fledged save/load system. Instead, I chose to use a chapter-selection based mechanic, where the game would allow you to reload any previously accessed chapter. However, where this fell apart when when people died in the game. My testers complained that after dying they were forced back to the main menu, where they'd then have to select a chapter. As such, I added a "try again" button to the game over screen, which seemed to address the problem.

<!--{% include img.html
  url="/images/projects/jga/gameover.jpg" w="640" h="360"
  alt="The chef battles two security guards"
%}-->


## Adapting for Mobile

As much as I like PC gaming, I decided that releasing a mobile port would be a good way to reach a wider potential audience. Unity makes it quite easy to build for Android (I ruled out iOS due to the exorbitant costs of a developer license), but since as-is the game required physical inputs, I set about adapting the game to touchscreens. Luckily, thanks to the mouse support, the battle system UI was already reasonably well-suited to touch. However, movement would need to be adapted.

I decided that I'd just look at what other similar mobile games were doing because I didn't want to reinvent the wheel so to speak. 2D side-scrolling games are not particularly common on mobile, perhaps due to the lack of a physical control method. After trying several different games, it seemed that the most common approach was to use a "touch gamepad"---a semitransparent touch gamepad overlay, where up/down/left/right and buttons were overlaid on the screen:

{% include img.html
  url="/images/projects/jga/touch_gamepad.png"
  alt="Wireframe showing shift offer flow"
  caption="A screenshot showing the touch gamepad in <a href='https://play.google.com/store/apps/details?id=com.explusalpha.Snes9xPlus'>Snes9x EX+</a>"
%}

However, there was a particular 2D side-scroller that caught my eye: I settled on the interaction model of a game called [_Type: Rider_](https://play.google.com/store/apps/details?id=com.bulkypix.typerider&hl=en), a typographically themed 2D platformer. Instead of a touch gamepad overlay, it simply made pressing anywhere on the left side of the screen go left, and pressing anywhere on the right side of the screen go right. To jump, you could tap on the side of the screen that you weren't currently holding.

The primary downside to this control scheme is that it lacks discoverability. Type: Rider uses a tutorial level to familiarize players with the control scheme. However, due to the ridiculously linear nature of this game, control necessities essentially boil down to moving the character right. To determine if this was worthy of concern, I performed some additional tests, with several different players. However, I found that, in general, people would, seeing nothing to touch at all, would touch _somewhere_ on the screen, causing the character to move. Once that had occured, no one seemed to have any issues controlling the game.

## Conclusion

Ultimately, I was able to finish and release the game, after nearly a decade of being stuck in my own personal [development hell](https://en.wikipedia.org/wiki/Development_hell). The key lesson I learned was ultimately one of project management: always focus on the end goal of a project. What deliverables will I need to make this project into a reality.

The game, while not a smash hit by any means, at least got several highly-positive Play Store reviews. I particularly enjoyed a [playthrough posted to YouTube](https://www.youtube.com/watch?v=FB8D6A0skS4)! 

{% include img.html
  url="/images/projects/jga/smoothies.jpg" w="640" h="360"
  alt="The chef stands alone, forgotten, in a rain-soaked wasteland"
%}

<!--![Chef in front of a prison-like building, talking to mysterious old man](/images/projects/jga/shot4.jpg)-->
