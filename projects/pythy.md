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

Introductory computer science courses can be notoriously difficult for students, especially those outside of the major. At some institutions, the so-called *Drop-Withdrawl-Fail* rate is as high as 50%! Furthermore, research has indicated that problems with the programming environment can negatively influence success.

Indeed, to address these, there had been a variety of different approaches taken. 

**1. Difficult initial setup process**

In a many computer science courses, students must install and configure a complex suite of tools on their own computers before they can begin programming. For example, consider the second-level introductory Java class at Virginia Tech, “Introduction to Data Structures”. [28]. For this class, a student must install the Java development kit, the Eclipse IDE (integrated development environment) and load a specific set of plug-ins, settings, and libraries into their configuration. If these steps are not followed exactly, problems can continue to arise even months into the course.

**2. Not designed for beginners**

In cases such as the aforementioned Eclipse software, the software is professional-grade programming software that was not designed with novices in mind. In this case, the program features a large number of functions and options that are not particularly useful to beginners, and that also can cause such users problems if they are accidentally accessed or altered.

**3. Unclear or insufficient feedback on programs**

When writing program code, a student is bound to encounter program errors or incor- rect program behavior. Many existing development environments present such errors separately from the program itself, and thus do not provide the student with a visual indication of where the error occurred. Furthermore, the feedback itself may be inad- equate or unclear. In addition, error messages alone do not necessarily convey when program behavior is incorrect.

**4. Lack of support for assignment organization**

In many introductory CS courses, some assignments are reliant on loading pre-written files into the development environment. Current software does little to support this, and is reliant on students downloading such starter code separately, loading it into their development tool themselves.

**5. Lack of support for in-class examples**

During a computer science class, an instructor may wish to write program code live to demonstrate some concept to the class. However, such examples do not allow for student experimentation; the best a student might be able to do is copy example code into a development environment later, if they wish to run it or examine how it works in more depth.


To address this issue, our team built **Pythy**, a web-based programming environment that allows students to write, execute, and test programming assignments from within the familiar interface of a web browser.

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
