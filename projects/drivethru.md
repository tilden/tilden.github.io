---
layout: post
banner_photo: "drivethru_sky.png"
title: "Drive-Thru Monitor"
subtitle: "The Drive-Thru monitor product conveys the status of a restaurant's drive-thru in a highly visual way."
---


<img class="screenshot" src="shot_day.jpg" width="640" height="480" alt="Screenshot showing drive-thru from above, with several cars visible" />
<!--  -->

In lieu of the highly abstract representations used by competing systems (such as a simple list of times), the drive-thru monitor product visualizes the status of cars waiting in a drive-thru using simple video-game inspired visuals. The product has been deployed by a major restaurant chain at over 6,000 locations throughout the United States.


* TOC
{:toc}


## Introduction

Today, a huge number of quick-service restaurants (QSR) offer drive-thrus, allowing patrons to order food without ever leaving their car! However, going to the drive-thru can often result in a lot of *waiting*. To combat that, many QSR chains are highly focused on quantitatively improving their "speed of service" by precisely measuring vehicle wait times and rewarding restaurant operators with the fastest service.

In light of this demand, Sicom offered a simple drive-thru timing solution: an LED timer display. Linked with vehicle-detectors installed in the road, the timer would show an estimate of amount of time that the most recent car had been waiting. However, it was not without its flaws; perhaps most evidently, it could only show a single car's timer. Furthermore, vehicle-detectors are often imperfect; when these failed or entered some kind of problem state, the simple LED based timer unable to clearly convey to employees why it was not acting correctly.

    (photo of sicom's original dt timer)

To remedy this, Sicom was asked by a major restaurant chain to create a new drive-thru timing solution. I worked up with the product manager for the existing timing product, a high-ranking company member with a deep understanding of the inner workings of QSRs, and a remote development team located in Hungary to create a new solution.

## Design Process

My role was chiefly during the design phase. After discussing the requirements with the drive-thru product's manager, I set out to determine how exactly people viewed the existing drive-thru timing solution. I created a set of questions for current users of the system; however, due to limited time and resources, I was only able to interview the manager. Nonetheless, I gained several key insights that would inform the design. In particular, this question yielded a particularly useful insight:

**Q: Which is more important: someone waiting at the menu board, or someone waiting at the pickup area?**

- While there are specific time goals for "menu wait time" and "pickup window wait time", no one really know them because, at least at that restaurant, they weren't really priorities.

This would prove useful information when designing the time visualizations for the system.

### Initial Iterations

{% include img.html
  url="/images/projects/drivethru/dt_evolution_1@2x.jpg"
  alt="Initial sketches of system"
%}

I began by sketching some concepts onto a whiteboard and discussing them with the team. We briefly explored the idea of a queue metaphor (top-left), but it was dropped for several reasons, namely that it did not provide room for many cars. We then introduced the idea of car times being attached to cars by way of a speech-bubble type visualization (top-right), a design element that would remain in all future iterations. If individual cars are visualized, it follows that a spatial representation of the drive-thru area would provide a way for employees to gain a more throughout understanding of the current status of the drive thru. As such, we began moving toward the idea of a top-down "road" view on which cars would appear.

After discussing these initial sketches, I switch to [Sketch](https://www.sketchapp.com/) on my computer, in order to flesh out the ideas explored in the whiteboard sketches. Note that the first of these greatly resembles whiteboard sketch 4 (bottom right), but also explores the possibility of a double drive-thru, something that is becoming increasingly prevalent:

{% include img.html
  url="/images/projects/drivethru/dt_evolution_2@2x.jpg"
  alt="Early color mockup" w="500" h="375"
%}

Note that a difference between this mockup and the final version is the timing graph, which underwent several iterations. In this case, we decided that this line graph visualization would be too complex for quick viewing.

### Designing the Daily Performance Graph

Based on the answer given in the interview, in additional to visualizing the status of the drive-thru, it was also vitally important that the system convey the average speed of service performance for the given day. In addition, I was informed that restaurants were often graded based on performance for predetermined timespans during a day, such as "breakfast" or "lunch".

I eventually settled on the idea of "average vs. goal": how am I currently doing, vs how does corporate want me to do? However, I believed that simply showing times would quickly convey the difference between the numbers. As such, I started sketching out concepts for a comparison chart. This led to a single bar showing the current average time, with a line indicating the goal. This is intended for users to allow viewers to quickly understand how well they are currently doing.

{% include img.html
  url="/images/projects/drivethru/chart_sketches.jpg"
  alt="Several early sketches of the daily performance graph"
  caption="Several early sketches of the daily performance graph"
%}

{% include img.html
  url="/images/projects/drivethru/chart_sketch1.png"
  alt="Initial color sketch of a performance graph"
  caption="An initial color sketch of a performance graph"
%}

{% include img.html
  url="/images/projects/drivethru/chart_sketch2.png"
  alt="Final appearance of the performance graph"
  caption="Final appearance of the performance graph"
%}

### Visual Direction

Initial sketches settled on the top-down view early, but used fairly abstract representations of cars. However, I created the following visual direction exploration, which the team preferred over the original direction:

{% include img.html
  url="/images/projects/drivethru/dt_evolution_3@2x.jpg"
  alt="Another early drawing of the drive-thru system" w="500" h="375"
%}

As such, I worked to play up the video-game inspired visuals, including a real-time day/night cycle, and drive-thru layouts using based on aerial views of actual drive-thrus:

{% include img.html
  url="/images/projects/drivethru/montage.png"
  alt="Four different possible drive-thru layouts, at different times of day" w="500" h="375"
%}

However, these visuals would be highly reliant on motion. To illustrate this motion, I created an animated mockup using CSS animation, SVG, and HTML.

<div style="text-align: center">
  <iframe width="500" height="375" src="https://www.youtube.com/embed/tSYIW7CXTDA?autoplay=1&loop=1&playlist=tSYIW7CXTDA&showinfo=0&controls=0&vq=large" frameborder="0" allowfullscreen></iframe>
</div>

<!-- ## Iteration

### Ghost Cars -->


## Conclusions

The prototypes and mockups were demonstrated at a convention for QSR vendors, and the reaction from attendees was quite positive. As such, the designs that I had delivered were handed off to a separate team and eventually developed into a real product which was deployed by a major restaurant chain at over 8,000 locations throughout the United States. Results have been sufficiently positive; I have been told that operators who manage multiple restaurant brands now want the product in their other brands as well!
