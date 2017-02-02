---
layout: post
banner_photo: "/images/projects/jga/jga_sky.jpg"
title: "JGA: Crossroads of Destiny"
subtitle: "JGA: Crossroads of Destiny is a game for mobile and desktop following the journey of an exiled infomercial chef to restore balance to the world&mdash;and sell additional knives."
---

![A knife-wielding chef standing in a futuristic control room](/images/projects/jga/shot1.jpg)

> Truly a work of art, this is a glass of cold water in an endless scorching desert.
>
> &#x2015;Niles Black, [Play store review](https://play.google.com/store/apps/details?id=net.freakified.jga&reviewId=Z3A6QU9xcFRPSHAwYXE0blUyNWxONGVtTGJTbG1WVFNlX0VubHFUY0tmNWd4SmtlUVdKaXJGZVBOMHhRLUJmZE5sUGhXbGQzbTYzcF9GWHNEUWVOckhmLWc)

Welcome to the world of **JGA: Crossroads of Destiny**. In this story-driven RPG, you play as an exiled infomercial chef who must embrace his destiny
and restore balance to the world. For this project, I composed an **original soundtrack**,
drew in-game **artwork**, wrote a **45-page script**, and **coded the entire game** using Unity.

* TOC
{:toc}

## Facebook

Long ago, I had d a game for my younger brother as a Christmas present, starring him as the protagonist. Only taking about 10-15 minutes to play through, it included a bizarre storyline involving flying basketballs, a J-shaped fortress, and lots of plot holes. For years, I had planned a sequel to the game--one which would finally explain *everything*--but each time I was met with nothing but false starts. Until I finally sat down one day and decided that the time had come. I would create the game I had been planning for nearly a decade.

Perhaps the largest issue with the game's protracted planning period was the sheer number of abstract ideas involved: I had concepts based on RPGs, platformers, and even sports games. I had even, at one point, created graphical assets for a 3D version of the game that never made it past the prototype phase. It was clear that in order to start development, I needed to simplify the game.

I began by writing up a simple outline of the proposed game's content. I stripped it down to the most basic elements: the characters, their motivations, and their journeys. I then started building the graphical assets I would need for each chapter in the story.

## Writing the story

> This is the best RPG story I had ever experienced
>
> &#x2015;CrickySoupDoupLP, [YouTube gameplay walkthrough](https://www.youtube.com/watch?v=FB8D6A0skS4)

I needed to like write exposition? I guess? I dunno what else I can really talk about in this scene that isn't just about how I became sort of okay at what are presumably basic writer things.

## Playtesting

### Why can't I jump?

To simply development, I had decided to implement the game as a 2D side-scrolling game. However, as an RPG, it was not a platformer, and therefore the only required character movement was left and right. However, a key piece of feedback I received from early informal playtests: "where's the jump button??". After this happened several times with several different people, I realized that, despite the lack of a technical need for a jump function, people _expected_ this type of game to have a jump function. So I added one, and people 

### Keyboard or mouse? Yes

As development on the game progressed, I wanted to make sure it would work and make sense to people. I initially built the battle system to rely on gamepad-based controls, as I assumed that this would make sense since the rest of the game is played that way. However, in early playtests, I found that people kept trying to go for the mouse. I then designed the battle system to be playable with just the mouse (because that was really easy) and found that everyone tried to go for the keyboard. Finally I realized that I couldn't get away with half-measures and implemented both mouse and gamepad support.

After the game has reached a state of more or less completion, I wanted to do a limited degree of playtesting to ensure that it was not annoying to play.

WHile the game itself was quite simple and did'



Stuff I added because of playtesting:
"Try again" button on game over screen
Placebo Jump function
Ability to control battle system gui with mouse AND keyboard


## Adapting for Mobile

As much as I like PC gaming, it can't be said that most people are into it. As such, I decided that releasing a mobile port would be a good idea. Unity can build for both iOS and Android, though I ruled out iOS early on due to exorbitant costs of a developer license and the fact that I didn't really care. 

Building for Android was easy enough thanks to Unity's Android build plugin, but the game would only work if you attached a USB keyboard or gamepad to your phone, which basically no one would ever do, so I set about adapting the game to touchscreens. Luckily, the battle system UI was already reasonably well-suited to touch (though thanks to a strange Unity bug I still had to mess with it to get it to work). However, movement would need to be adapted.

I decided that I'd just look at what other similar mobile games were doing because I didn't want to reinvent the wheel so to speak. 2D side-scrolling games are not particularly common on mobile, perhaps due to the lack of a physical control method. After trying several different games, I was disappointed to find that many of them used a semitransparent touch gamepad overlay, where up/down/left/right and buttons were simply overlaid on the screen:

[image showing touch gamepad]

However, there was a particular 2D side-scroller I settled on the interaction model of a game called "Type: Rider", a typographically themed 2D platformer. Instead of a touch gamepad overlay, it simply made pressing anywhere on the left side of the screen go left, and pressing anywhere on the right side of the screen go right. To jump, you could tap on the side of the screen that you weren't currently holding.

This control method is not without issues for games requiring more precision, or more than one button, which is probably why you don't see it implemented in any emulators. However, given that jumping was as previously mentioned a placebo function, it was relatively trivial to implement in this manner.

The second downside to this control scheme is that it lacks discoverability. Type: Rider uses a tutorial level to familiarize players with the control scheme. However, due to the ridiculously linear nature of this game, control necessities essentially boil down to moving the character right. To determine if this was worthy of  concern, I performed some additional tests, with several different players. However, I found that, in general, people would, seeing nothing to touch at all, would touch somewhere on the screen, causing the character to move. Once they had done that, people typically didn't have much trouble playing the game.





## Original artwork
created using Pixen, SketchUp, Pixelmator, and Photoshop
<img src="chars/lm_stand.png" data-no-retina />
<img src="chars/james_stand.png" data-no-retina />
<img src="chars/daria.png" data-no-retina />

## Written in C# using Unity
Download the source code on
<a href="https://github.com/freakified/jga/">Github</a>
or the
<a href="https://www.assetstore.unity3d.com/en/#!/content/25856">Unity Asset Store</a>
</div>
<img class="screenshot" src="shot2.jpg" width="640" height="360" alt="Same chef, in a burning food cart, rolling down a hill dodging cars"/>

## Original soundtrack
<iframe width="100%" height="166" style="max-width: 640px" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/178779794&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
Download the full soundtrack at <a href="https://soundcloud.com/freakified/sets/jga-crossroads-of-destiny-ost">Soundcloud</a>


<img class="screenshot" src="shot3.jpg" width="640" height="360" alt="The chef battles two security guards"/>

Turn-based battle system supports touch, gamepad, mouse, and keyboard input.

<img class="screenshot" src="shot4.jpg" width="640" height="360" alt="Chef in front of a prison-like building, talking to mysterious old man"/>
Screenplay-based cutscene system makes it easy to include long-winded expository dialog sequences.

## Want to play it?
<a href="http://freakified.github.io/jga/">	Download at the project page</a><br />
<br />
<a href="https://play.google.com/store/apps/details?id=net.freakified.jga">
<img alt="Android app on Google Play"
src="https://developer.android.com/images/brand/en_app_rgb_wo_45.png" />
</a>
