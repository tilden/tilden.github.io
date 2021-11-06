---
layout: post
# banner_photo: "/images/projects/drivethru/drivethru_sky.png"
title: "Taxonomy Viewer"
subtitle: "An internal tool used to view taxonomies"
---

{% include img.html
  url="/images/projects/drivethru/drivethru.png"
  alt="Screenshot showing drive-thru monitor with several cars waiting"
%}

The drive-thru monitor visualizes the status of cars waiting in a drive-thru using simple video-game inspired visuals anbd gamification features. After deployment at every Burger King location in the United States (over 10,000 locations), franchisees observed a ~50% reduction in vehicle wait times.


<!-- * TOC
{:toc} -->


## Background

Today, a huge number of fast food restaurants offer drive-thrus, allowing patrons to order food without leaving their car. However, going to the drive-thru can often result in a lot of waiting. To combat that, many fast food restaurants are highly focused on quantitatively improving their "speed of service" by measuring vehicle wait times and rewarding restaurant operators with the fastest service.

In light of this demand, Sicom offered a simple drive-thru timing solution: an LED timer display. Linked with vehicle-detectors installed in the road, the timer would show an estimate of amount of time that the most recent car had been waiting:
{% include img.html
  url="/images/projects/drivethru/original_timer.jpg"
  alt="Initial sketches of system" w="500" h="311"
  caption="Sicom's original drive-thru timing solution"
%}

To remedy this, Sicom was asked by a major restaurant chain to create a new drive-thru timing solution. I worked up with the product manager for the existing timing product and a remote development team located in Hungary to create a new solution. The new solution went through a variety of tests and iterations, finally settling on a [cabinet-projection](https://en.wikipedia.org/wiki/Oblique_projection#Cabinet_projection) view showing a side view of a drive-thru lane.

In addition, the new version was capable of ranking a restaurant against its peers, displaying a leaderboard of the best times.

<!-- ## Early version

{% include img.html
  url="/images/projects/drivethru/shot_day.jpg"
  alt="Screenshot showing drive-thru from above, with several cars visible"
  caption="An older iteration of Drive-Thru monitor, showing the ultimately-scrapped top-down view"
%} -->


{% include img.html
  url="/images/projects/drivethru/reallife_shot.jpg"
  alt="Photo showing a real drive-thru monitor installation on a screen"
  caption="A photo of Drive-Thru Monitor in the real world"
%}

<!-- ## Conclusions -->
