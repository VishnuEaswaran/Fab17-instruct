---
layout: post
title: Embedded Programming
---

# Quintessence

This week we will learn about Microcontrollers, Processors and how to write program to operate them. The focus is on understanding the **hardware** and **software** related to controllers. You will learn programming using boards designed and manufactured in the electronic design week. One important learning outcome is learning how to interpret **Datasheet** of a device/components and to understand its importance.

# Into the Details

Lets split this week into three

 * Hardware - Discuss about microcontrollers and processors.
 * Datasheet - Importance and interpreting data sheet of components.
 * Programming - Different languages and its comparison.

# Hardware

#### Microcontrollers and processors

 Microcontroller is a miniature *computer* in a single chip. It has all the basic components like CPU, peripherals and memory(Program memory and RAM) inbuilt. A microcontroller is also known as System on Chip or just **Soc**. Microcontrollers are used many embedded systems as it is occupies less space and cheaper than a microprocessor-memory-peripheral setup also it is advisable to use controllers for real time processing than microprocessors.

 Micro processors are chips that integrate the CPU of a computer. Modern processors have tiny memory inbuilt but it needs additional ones called RAM, ROM etc. It also need peripheral needed for provisions for A/D, D/A, communication etc and components to control them. Here we have a lot of flexibility in the number of ports, memory etc which we lack when using controllers, where everything is fixed.

 ---
# Datasheet

Data sheet is like operating manual of the electrical components. It will include all the details from physical structure to the architecture and internal components. It also summarises the technical and performance characteristics of the chip. Topics of our interest will be

  - Pin out diagram- which sows the pins of the controller, its name and position.

  - Registers- Registers are parts of memory reserved for storing intelligent information, like the state of a pin, the status of peripheral components etc. We would be using these for accessing and controlling information from and to the controller.

    - Register functions options
    - Register availability and custom names for specific chips

  - Interrupts

    - Interrupt addresses (interrupt vectors)
    - Interrupt control registers
    - interrupt priorities

  - Memory

  - Fuses, BEWARE, EXTREMELY DANGEROUS (will not harm YOU!) [[fuse Calculator](http://www.engbedded.com/fusecalc)]

    - Selecting clock sources
    - Selecting clock frequency ranges
    - Selecting clock frequency prescalers
    - Brownout settings
    - Enabling/Disabling RESET pin (this is the dangerous stuff)
    - Startup delay, (power related settings)

# Programming


This is the part in which we write commands for making our processor/controller do things as we like. These can only understand one language, that of `0 & 1's` called binary. In earlier days program was written in the form of 1&0 later it evolved to Assembly level language and then high level language for making the process simple.

We recommend you to archive the following as the first mile stones.

You have made a board with a button and an LED in the "electronics design" week. So,
  - Try to make a program which will turn the LED on/off when you press the button.
  - Try to make a program which will make the LED glow as long as you keep the button pressed.
  - Try to make a program which will toggle the status of the LED when you press the button.
  - Try to make a program which will send a message via FTDI cable when you press the button (refer to Neil's hell0echo.ftdi program for the serial communication part)
  - Try making programs that uses interrupts to achieve these, if you are not doing it already.

At the end of these, you must have used interrupts, switch denounce code etc.

Additional tasks involves, trying different things

- Programming and comparing the results like binary size execution time etc. in

  - **AVR-C** : It is C with special libraries for AVR architecture(which is a modified Harvard) and [avr-gcc](https://gcc.gnu.org/wiki/avr-gcc) is the compiler needed.
  - **Arduino** scripting language
  - **assembly**
  - **python**...

- Try different platforms
 - **AVR**
 - **ARM**
 - **PIC**
 - ...


**Tutorials** - [Link 1](https://www.youtube.com/playlist?list=PLA6BB228B08B03EDD). Go through this for getting all the fundamental concepts.


 #### IT WOULD BE NICE IF YOU CAN MAKE PROGRAM THAT WILL MAKE THE LED 'BREATH'.
