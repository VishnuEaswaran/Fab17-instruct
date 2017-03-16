---
layout: post
title: Embedded Programming
---

Quintessence
===

This week we will learn about Microcontrollers, Processors and how to write program to operate them. The focus is on understanding the **hardware** and **software** related to controllers. You will learn programming using boards designed and manufactured in the electronic design week. One important learning outcome is learning how to interpret **Datasheet** of a device/components and to understand its importance.

Into the Details
===

Lets split this week into three

 * Hardware - Discuss about microcontrollers and processors.
 * Datasheet - Importance and interpreting data sheet of components.
 * Programming - Different languages and its comparison.


### Hardware


#### Microcontrollers and processors

 Microcontroller is a miniature *computer* in a single chip. It has all the basic components like CPU, peripherals and memory(Program memory and RAM) inbuilt. A microcontroller is also known as System on Chip or just **Soc**. Microcontrollers are used many embedded systems as it is occupies less space and cheaper than a microprocessor-memory-peripheral setup also it is advisable to use controllers for real time processing than microprocessors.

 Micro processors are chips that integrate the CPU of a computer. Modern processors have tiny memory inbuilt but it needs additional ones called RAM, ROM etc. It also need peripheral needed for provisions for A/D, D/A, communication etc and components to control them. Here we have a lot of flexibility in the number of ports, memory etc which we lack when using controllers, where everything is fixed.

 ---

### Datasheet

 Data sheet is like operating manual of the electrical components. It will include all the details from physical structure to the architecture and internal components. It also summarises the technical and performance characteristics of the chip. Topics of our interest will be

  * Pin out - which sows the pins of the controller, its name and position.
  * timers and counters - about the internal clock and default configurations
  * All the registers - Registers are parts of memory reserved for storing intelligent information, like the state of a pin, the status of peripheral components etc. We would be using these registers for accessing and controlling information from and to the controller.
  * Interrupts, I/O ports, Communication interfaces etc
---

### Programming

 This is the part in which we write commands for making our processor/controller do things as we like. These can only understand one language, that of `0 & 1's` called binary. In earlier days program was written in the form of 1&0 later it evolved to Assembly level language and then high level language for making the process simple.

 Lets talk about different options we have with us

#### Arduino


#### AVR-C

 It is C programming with special modules for AVR architecture, which is a modified Harvard. It also needs [avr-gcc](https://gcc.gnu.org/wiki/avr-gcc) compiler for compiling the written code. It is well developed, robust compiler which has troubleshooting and facilities for spotting errors.

 **Tutorials** - [Link 1](https://www.youtube.com/playlist?list=PLA6BB228B08B03EDD). Go through this for getting all the fundamental concepts.


### References

[Link 1](https://sibusaman.github.io/fab2016/w8/w8.html) Sibu's in depth documentation.
