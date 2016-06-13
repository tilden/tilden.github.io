---
layout: post
banner_photo: "pythy_sky.jpg"
title: "Pythy: Improving the Introductory Python Programming Experience"
subtitle: "Evaluating of a web-based programming tool for introductory computer science students"
---

![Screenshot of pythy showing a program running, then quitting due to an error](/images/projects/pythy/pythy_shot1.png)

* TOC
{:toc}

## Introduction

Introductory computer science courses can be notoriously difficult for students, especially those outside of the major. There are many reasons for this, but the programming software itself may play a significant role. To address this issue, we have developed Pythy, a web-based programming environment that allows students to write, execute, and test programming assignments from within the familiar interface of a web browser. In this work, we discuss various aspects of Pythy in detail, including the rationale behind its design, the system architecture on which it is built, and the various functions offered by the software. Next, we discuss an evaluation of Pythy’s effectiveness during a programming course for non CS- majors offered at Virginia Tech, comparing it to a different software solution used in another programming course. Results suggest that Pythy was successful in several target areas, including making it easier to get started with programming and providing feedback about program behavior. Access log data from Pythy itself reveals details about how students used the system. Finally, we conclude with a summary of key contributions and suggest some potential future directions for the system.

## All of the programming, none of the software setup

Pythy runs entirely in any modern web browser, eliminating the need for any sort of
software setup; students can begin programming immediately.

Unlike other online tools to learn programming, Pythy is
designed to complement a classroom experience, not replace it wholesale.

## Better than the competition

As part of a semester-long study, we compared Pythy to JES[^pythy][^jes],
another Python IDE designed for beginner computer science classes.
Reported classroom experiences indicated that Pythy did indeed reduce some of the
obstacles that it was designed to address.[^pythy] [^pythy2]

[^pythy]: [Stephen H. Edwards, Daniel S. Tilden, and Anthony Allevato. 2014. Pythy: improving the introductory python programming experience. In Proceedings of the 45th ACM technical symposium on Computer science education \(SIGCSE '14\). ACM, New York, NY, USA, 641-646. DOI=10.1145/2538862.2538977](http://dx.doi.org/10.1145/2538862.2538977)

[^jes]: [JES - Jython Environment for Students. http://code.google.com/p/mediacomp-jes/](http://code.google.com/p/mediacomp-jes/)

[^pythy2]: [Daniel S. Tilden. 2013. Design and Evaluation of a Web-Based Programming Tool to Improve the Introductory Computer Science Experience. M.S. Thesis, Virginia Tech.](https://vtechworks.lib.vt.edu/handle/10919/23149)
