---
layout: post
title: Embedded Programming
---

# Quintessence

This week we will learn about Microcontrollers, Processors and how to write program to operate them. The focus is on understanding the **hardware** and **software** related to controllers. You will learn programming using boards designed and manufactured in the electronic design week. One important learning outcome is learning how to interpret **Datasheet** of a device/components and to understand its importance.

# Into the Details

Lets split this week into three

- Hardware
- Datasheet
- Programming

# Hardware

# Datasheet

- To read from the datasheet

  - Registers

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
  - AVR-C
  - Arduino scripting language
  - assembly
  - python...

- Try different platforms
 - AVR
 - ARM
 - PIC
 - ...


 #### IT WOULD BE NICE IF YOU CAN MAKE PROGRAM THAT WILL MAKE THE LED 'BREATH'.
