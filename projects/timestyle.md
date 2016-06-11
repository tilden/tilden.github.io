---
layout: post
banner_photo: "timestyle_sky.jpg"
title: "TimeStyle"
subtitle: "A stylish, modern watchface for the Pebble watch inspired by the visual language of the Pebble Timeline."
---

(photo of the watchface)

Wristwatches reflect the wearer's style, and wearables are no different. However,


TimeStyle provides a highly customizable watch face without overwhelming the user with decisions.

[image: some kind of "available on PEBBLE STORE" link (do these exist?)]

As seen on The Verge
(link), and NDTV (link)
http://gadgets.ndtv.com/wearables/features/new-actions-will-make-your-pebble-simpler-and-smarter-843997


* TOC
{:toc}


<!-- - Intro
	- What the project is
	- Who the team members are
	- Your role and contribution on the team -->

## Introduction

<!-- - Situation
	- How/why the problem exists
	- Why the problem matters -->

When I got a Pebble smartwatch, I admired the watch's visual aesthetic; inspired by late 1960s-era pop art, it complemented the watch's hardware, 64-color reflective display[^pebbledesign].

[image: photo of the watch's interface somewhere]

However, I found that while there were thousands of watch faces available for the watch (many of them quite lovely), there were two key issues:

1. They didn't really match the visual language used in the rest of the watch's software

2. They didn't have exactly the information I wanted

For example, a face might have a beautiful time display, but lack the current temperature outside.  Similarly, a face might include weather data, but lack today's date. In the end, what I wanted wasn't something unique that would make any kind of statement; I simply wanted something that would tell the time and some ancillary information; a _default looking_ watch face.

As such, I took it upon myself to design the watch face that I felt should have been included by default.

<!-- [todo: cite this, probably from https://developer.pebble.com/community/events/developer-retreat-2015/#main-stage-presentations] -->

<!-- - Action
	- The process you and your team took to get there
	- UX Deliverables/activities done to help solve problem.
		○ Personas
		○ user research
		○ wireframes, etc -->

## Design

### Initial Prototype

I began by examining the watch's existing user interface elements to find good examples of how a matching watch face might look. As a basis, I decided to use the watch's "Timeline" interface, which serves Pebble's way of visualizing events in the past and future. I felt the Timeline was particularly well-suited as inspiration due to its proximity to the watch face; visually, the currently selected watch face is designed to act as the "present" to complement the Timeline's "past" and "future" views:

![Example illustration of the Pebble's timeline interface](/images/projects/timestyle/timeline_ex.png)

Based on this, I quickly put together a rapid prototype of this style, and installed it on my watch[^originalprototype], which I then wore for several days.

[picture of prototype running on watch]

After using this for several days, I determined there were two key factors that made this design problematic:

1. The time was difficult to read in the dark
2. The background colors, which looked so vivid in my designs, looked very washed out on the watch. With nothing to contrast the colored background, the colors failed to look like much on the watch's desaturated color display

I then iterated further, exploring concepts that I hoped would add some much-needed contrast to the design:

[shot of several iterations]

![Early draft screenshot](/images/projects/timestyle/draft1.png)

### "Final" Concept, and Internet Feedback

While exploring a narrow-width font (Helvetica Neue Condensed, in this example) I came upon the the idea of using large, right-aligned digits against a timeline-style bar to show ancillary information. I felt this concept was worth more refinement, leading me to a final concept image:

![Final Dribbble mockup](/images/projects/timestyle/dribbble_mockup.jpg)

To gather some additional feedback, I posted this image to [Dribbble](https://dribbble.com/shots/2138543-Pebble-Time-Watchface-Concept) and [Reddit's r/pebble](https://www.reddit.com/r/pebble/comments/3cjzo7/face_concept_for_a_pebble_time_face_not/). In addition to overwhelmingly positive feedback, there was a clear message: **not everyone likes orange:**

> "…provide the option to change the colors"

> "Make the colour configurable!"

> "...add a setting page with the whole range of color the Pebble Time can display"

> "chuck in customisable colours and this will become one of the best!"

> "Blue would be welcome...maybe even purple"

Based on these requests, it was evident that customizability would be paramount.
<!--
### Creating a usable settings UI

Many Pebble faces offer color customization, but due to the nature of the Pebble configuration system, most require that the user select colors, save and exit the settings page. If the user didn't like the colors, they must go back into the settings page and choose another. Instead of this, I created a selection hand-picked color schemes that I tested on my own watch for readability. Each of these is previewed in the settings page so that one doesn't have to go and commit to it before picking. In later versions, I would eventually add the ability to save, load, share, and suggest theme presets.

(todo: picture of color setting UI) -->

<!-- - Results
	- Stats, analytics
	- User testing feedback
	- Survey scores
	- What you learned from the project -->

## Feedback and Iteration

After publishing the face, it gained quite a bit of positive feedback, and quickly ascended through the Pebble Store charts. Adding color themes would prove prescient: according to my analytics data, more than 85% of users change their color theme at least once.

### Adding "Complications"

However, as the user base increased, it became clear that simply offering customizable colors would not be sufficient to achieve my ideal: the "default" watch face that the Pebble lacked. Requests included new font options (such as larger fonts for older users), new languages, and all sorts of data for the sidebar, such as battery level, weather forecasts, and even Swatch™ Internet Time[^swatchtime]! As the number of options continued to expand, I realized that simply having switches for the different options not be sustainable. As a result, I added the ability for the sidebar to contain 3 different "complications". In order to ensure that people could know what they were getting without leaving the settings page, I replicated the real-time preview of what the sidebar would look like:

(todo: can we show a gif of the different sidebar things?) (or at least a shot of the config page?)

Building out a fully modular sidebar system proved an to be a worthwhile decision; when Pebble added a step and sleep tracking API, I quickly was able to add an option to show steps, without adding any additional complexity to the settings UI.

### Support E-Mail Volume

One key metric that I would use to determine where to focus my development efforts was support e-mail volume. However, there was one email that I got more than any other:

> "How can I make the watch show 24 hour time?"

This, however, had nothing to do with my watchface; 24-hour time is an option on the *Pebble itself*! However, many users apparently expected there to be an option here, and there simply wasn't one. I even discussed this with other attendees at the [2015 Pebble Developer Retreat](https://developer.pebble.com/community/events/developer-retreat-2015/), and found that I was not the only one bombarded with this type of request; one developer I spoke with had even set up an automatic email responder for these requests! I wondered if there was a better way, so I tested an incredibly simple solution: I added a brief bit of help text to the settings page mentioning how to change your watch to 24 hour time–the emails essentially vanished!

(screenshot of help text ui)

## Conclusion

As of this writing (June 2016), TimeStyle has accumulated nearly 100,000 installs and over 6,000 "hearts"[^pebblestoremostloved], making it the sixth most popular watch face ever made for the Pebble, and, by far, the *newest* watch face in the top 10.

These results, I believe, indicate that my initial intuition was correct; the ideal watch face for the Pebble is a *default-looking* face coupled with a meticulous attention to detail and close attention to user feedback. By creating a simple, readable, and customizable watch face that matched the aesthetic of the watch with unprecedented customizability, I achieved what I had set out to do: create the default digital watch face that I had wished my Pebble came with when I bought it.

[^pebbledesign]: [Liron Damir: Designing Apps for Pebble](https://www.youtube.com/watch?v=LuiK8ZiPXr4)
[^originalprototype]: [Github: Early functional prototype source code](https://github.com/tilden/DigitalTimePebbleFace)
[^pebblestoremostloved]: [Pebble Store: Most Loved Watchfaces](https://apps.getpebble.com/en_US/collection/most-loved/watchfaces/1?dev_settings=true)
[^swatchtime]: [Wikipedia: Swatch Internet Time](https://en.wikipedia.org/wiki/Swatch_Internet_Time)


<!--
    <img class="screenshot" src="finished_mockup.jpg" width="450" height="300" alt="Mockup showing final watchface appearance" />

		<h3>Your new default watchface</h3>
Designed to blend perfectly with the aesthetic defined by the Pebble watch's &ldquo;timeline&rdquo; interface, TimeStyle offers
unprecedented style and customizability.

Unlike almost all other Pebble digital watchfaces, the time is displayed using antialiasing.
Finally, TimeStyle is completely <a href="https://github.com/freakified/TimeStylePebble">open source</a>.

<div class="section cols left_pic">
  <div>
    <img class="screenshot" src="collage.png" width="438" height="339" alt="Collage showing various ways TimeStyle can be customized" data-no-retina />
  </div>

<div class="pic_desc">
	<h3>Your watch. Your style.</h3>
   The appearance of your watch reflects your own personal style; because of this, TimeStyle is designed to
   accomodate your own personal preferences.
   <br><br>
   Don't like the preset color schemes? Choose any combination you'd like. Don't speak English? Choose from over 20 different languages.
   Don't care about the weather? Build your own sidebar layout from seven different available complications.
  </div>

<div class="section" style="margin-bottom: 1em">
	<h3>Designing TimeStyle</h3>
	<small>
    When I got a <a href="https://www.kickstarter.com/projects/597507018/pebble-time-awesome-smartwatch-no-compromises?ref=users">Pebble Time watch</a>,
     I found that, among all the various watchfaces available,
    none of them really matched the rest of the watch's aesthetic: the timeline.
  </small>
  <br>
  <small>
    The &ldquo;timeline&rdquo; is a UI introduced for the Pebble Time that visualizes <b>past</b> and <b>future</b> events,
    called &ldquo;pins&rdquo;, with the watch's face serving as the <b>present</b>.
    Pins can include weather, alarms, and calendar events:
    <br /><br />
  </small>
  <img class="screenshot" width="450" height="350" src="timeline_ex.png" alt="Example of how TimeStyle matches the Pebble's Timeline interface" /><br />
  <br />
  <small>
    While the current watchface serves to visualize the <b>present</b>, no watchfaces available looked
    anything like the timeline; I felt that an ideal watchface should feel like <b>part of the timeline</b>.
  </small>
</div>

<h3 style="margin-top: 1em">Evolution</h3>

<div class="section cols row_of_pics">
	<div>
		<img class="screenshot" width="144" height="168" src="draft1.png" alt="Early mockup 1" /><br />
		<small style="width: 180px; margin: 0px 10px">
			A very early simple digital mockup, which I felt wasn't using space effectively.
		</small>
	</div>

  <div>
		<img class="screenshot" width="144" height="168" src="draft2.png" alt="Early mockup 2" /><br />
		<small style="width: 180px; margin: 0px 10px">
      Exploring an analog-digital look, based on early graphics from the kickstarter.
		</small>
	</div>

  <div>
    <img class="screenshot" width="144" height="168" src="draft3.png" alt="Early mockup 3" /><br />
      A text-heavy concept based on the official &ldquo;cards&rdquo; ui guidelines, featuring the weather.

    <img class="screenshot" width="144" height="168" src="draft4.png" alt="Early mockup 4" /><br />
      Finally, this concept explores the idea of using large font aligned against a sidebar.

    Building upon this last concept, I switched to a thinner font and dropped the AM/PM indication. Compositing
    this into an official press photo of the Pebble Time, I posted the following mockup to
    <a href="https://dribbble.com/shots/2138543-Pebble-Time-Watchface-Concept">Dribbble</a>
    and Reddit:<br><br>

    <img class="screenshot" src="dribbble_mockup.jpg" width="400" height="300" alt="Mockup similar to final watchface" />

    On Reddit, the response was extremely positive, with the mockup becoming one of the 25 most highly voted posts of all time on <a href="http://www.reddit.com/r/pebble">r/pebble</a>.

    However, with this popularity came something I didn't anticipate -- customization requests!
    People were asking for all sorts of features; I didn't want to let them down, but
    adding the level of customization required would prove challenging to implement.

  <h3>Implementation</h3>
    Like all Pebble watchfaces, TimeStyle was written in pure C.<br><br>
  A key challenge I faced was antialiasing the digits. While the Pebble Time's screen is technically
   capable of displaying text with AA, the software does not support it.
Early on, I had wanted to include text-AA, and had planned to just bake it in by using images for the digits.
 However, that was thrown into question with all the requests for customizability -- how could I use images for the text if the background color and text color were customizable?

    <img class="screenshot" src="palswap.png" width="400" height="230" alt="Illustration of palette swapping process" />
My solution was to use palette swapping: each digit image has four colors: white (the background), black (the foreground), and two intermediate shades of grey.
Black and white are replaced with the user's chosen foreground background colors, and the R, G, and B components of these colors are averaged to determine the two closest intermediate colors.

	<h3>Release</h3>
      My efforts to satisfy the various user requests proved worthwhile; TimeStyle is currently among the 25 most popular
      watchfaces of all time, with nearly 2,000 &ldquo;hearts&rdquo; and more than 20,000 installations.
      <br><br>
      In addition, it was featured on the Pebble app store, in an <a href="https://www.youtube.com/watch?v=rIs5qNeDADQ">official promotional video</a>, and even by tech publication <i>The Verge</i>
      in their review of the Pebble Time Steel:<br><br>

    <a href="http://www.theverge.com/2015/8/6/9108023/pebble-time-steel-preorder-launch-review">
      <img class="screenshot" src="verge_article.jpg" width="634" height="683" alt="Screenshot showing TimeStyle featured in the pebble app store " />
    </a>
 -->
