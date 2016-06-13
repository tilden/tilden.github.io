---
layout: post
banner_photo: "drivethru_sky.png"
title: "Drive-Thru Monitor"
subtitle: "Stay in command of your restaurant's drive-thru with this highly visual way to monitor the the current status of all waiting vehicles."
---

<img class="screenshot" src="shot_day.jpg" width="640" height="480" alt="Screenshot showing drive-thru from above, with several cars visible" />

## Real-Time, Digestible Data
Drive-Thru Monitor is designed to convey the state of a restaurant's drive-thru without
overwhelming users with numerical statistics.
A simple bar graph compares the current average drive-thru service times with a pre-selected goal time, and bubbles attached
to the car graphics convey how long each car has been waiting.

<img class="screenshot" width="480" height="360" src="montage.png" alt="Four diferent possible drive-thru layouts, at different times of day" />

## Spatially Mapped to Your Drive-Thru
In lieu of the highly abstract representations (such as a simple list of times)
found in competing solutions, I designed Drive-Thru Monitor using aerial views of actual drive-thrus as a basis.

<iframe width="480" height="360" src="https://www.youtube.com/embed/tSYIW7CXTDA?autoplay=1&loop=1&playlist=tSYIW7CXTDA&showinfo=0&controls=0&vq=large" frameborder="0" allowfullscreen></iframe>

## Always in Motion
Drive-Thru Monitor features video-game inspired visuals, including animated car motion and a real-time day/night cycle.

To illustrate the motion, I created this animated mockup using CSS animation, SVG, and HTML.

## Design Evolution

{% include img.html
  url="/images/projects/drivethru/dt_evolution_1.jpg"
  alt="Initial sketches of system" w="320" h="240"
	caption="Some initial sketches. We briefly explored the idea of a queue metaphor (top left), but it was dropped for several reasons, namely that it did not provide room for many cars."
%}

{% include img.html
  url="/images/projects/drivethru/dt_evolution_2.jpg"
  alt="Early color mockup" w="320" h="240"
	caption="The timing chart underwent several iterations. We decided that this line graph visualization (pictured)
  would be too complex for quick viewing."
%}

{% include img.html
  url="/images/projects/drivethru/dt_evolution_3.jpg"
  alt="Another early color mockup" w="320" h="240"
	caption="Once it was determined that the hardware would be mounted directly above the drive-thru window,
  we changed the orientation of the virtual road to match."
%}

## Want to see it in action?
Drive-Thru Monitor has been deployed by a major restaurant chain at over 6,000 locations throughout the United States,
so look out for it at a restaurant near you!
