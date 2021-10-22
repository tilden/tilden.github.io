---
layout: post
title: "Indeed Messaging"
subtitle: "Searching for jobs can be one of the most stressful processes. Can we make communication easier solely via a new user interface?"
---

{% include img.html
  url="/images/projects/messaging/shot_mobile@2x.png"
  alt="Screenshot of Indeed Messaging on an iPhone" w="284" h="567"
%}

* TOC
{:toc}

## Introduction

Typically, at a fast food restaurant, schedules are distributed each week via a paper schedule posted on the wall, employees see their shifts, and work during those times. Simple, right?

**But wait!**

What if Serena the restaurant manager alters the schedule on short notice? Does she need to individually call all the employees? Worse, what if little Timmy can't work an upcoming shift because he has to attend the regional karate tournament and finally defeat his rival while 80s montage music plays but Serena needs him that day because a bus full of the cool kids cutting school will be coming through! Maybe someone will trade with him. But who?? Maybe Timmy can ask other employees directly, or leave post-it notes. Either way, he's stuck unless he can find someone.  Even when he does, Serena must update the schedules and cross out the names and reverse them. Or maybe she'll print a new schedule and enter the data into the electronic scheduling system so that her reports will be accurate! Whatever shall we do?

This is not an uncommon problem[^gresultsshifttrade], as you may have surmised. Given this, customers had requested that our company's scheduling software be able to handle these sitations. As such, for this project, we were tasked with the creation of a mobile app designed to make life slightly easier for the employees. It was a small team, consisting of solely a manager, a developer, and myself.

## Planning and Scenarios

Based on information provided by the client and discussions with a former restaurant manager, I set out to write up a set of scenarios that would enumerate the app's functions so that I would have a solid idea of what exactly I should include.

To aid in writing these,  I created several simple personas, (based around the classic ["Personas: Dead yet?"](http://www.uxdesignedge.com/2011/06/personas-dead-yet/) article, and used these to write a series of simple scenarios covering the general functionality of the system. Here's an example:

> Bob has a trip coming up, and needs to request off. He selects "request time off" in the app, and enters the days he cannot work. He then hits "send time off request".  He then sees his time off request, and that it has been "sent".  Later, Serena gets a notification that there is a new time off request. She opens it, and decides that it's acceptable, and accepts the request. Bob is then, in turn, notified that his time off request has been accepted. It is automatically shown in his schedule view. 

## Wireframes and Iteration

This scenario assumes that we already know the identities of its players, and is intended to provide a general overview of how this app might work without delving too much into specifics. Using the full set of these simple scenarios, I drew a series of wireframes illustrating common interaction flows:

{% include img.html
  url="/images/projects/schedule_app/full_wireframes.png"
  alt="Wireframe showing shift offer flow"
  caption="Each cluster of connected indicates an interaction flow for a given scenario"
%}

For each of these, there was much debate as to the correct path to take, and many underwent significant revisions prior to handing the designs off to the developer.

## Conclusion

Following the design phase, the mockups were handed off to the developer, who constructed an app prototype which was shown off at several trade shows, where it garnered positive feedback from restaurant franchise owners. It is currently in limited testing at a small number of restaurant locations in the United States.


 [^gresultsshifttrade]: [Google Search Results - employee shift trading software](https://www.google.com/search?q=employee+shift+trading+software)
