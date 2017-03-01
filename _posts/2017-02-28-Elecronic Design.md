---
layout: post
title: Electronic Design
---

This week we will learn to design PCB's and in the process about the components/building blocks of electronics. We can separate the week into two

1. Electronic components

2. Circuit Design

Take a note that you have got interesting books in your lab itself. `The art of electronics` by `Horowitz and Hill` which is THE Bible of electronics and circuit-design so please spend sometime "offline" and get a feel of the book. All the topics listed below can be found there except the specifics of design softwares.

# Basic about Electronic components   ([Wiki](https://en.wikipedia.org/wiki/Electronic_component))

- Electrical fundamentals - voltage, current and their relation.
- Active components
- Passive components

### Pull-up/down Resistors, Internal Pull-up/down, filter capacitors.

# Basic about Microcontrollers ([Wiki](https://en.wikipedia.org/wiki/Microcontroller))

- What is a controller and what differentiate it from a processor ?
- The microcontroller families in your lab - AVR and PIC(rarely)
- Architecture and different internal parts of a controller
- Reading from the datasheet

  - Registers

    - Register functions options
    - Register availabilities and custom names for specific chips

  - Interrupts

    - Interrupt addresses (also called interrupt vectors)
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


  - What is meant by digital in electronics and an intro to how it is implemented for computation.

# Circuit-Design

### About Softwares

- Intro to popular softwares

  - [Eagle](http://www.autodesk.com/products/eagle/overview)
  - [Protius](https://www.labcenter.com/)
  - [KiCAD](http://kicad-pcb.org/)
  - [123DCircuits](http://www.123dapp.com/circuits)
  - [Fritzing](http://fritzing.org/home/)
  - [Altium](http://www.altium.com/altium-designer/overview)
  - [OrCAD](http://www.orcad.com/)

  More are available in this weeks page, try as many as possible and share your views and choose one for the rest of the academy.

  Everybody wants to use Eagle, which is a commonly used software and was recently bought by Autocad and is now following their standard subscription model. Which means you have to be online at least once every 2 weeks.

  Anyway, if you are new (and definitely if you are not new), we recommend learning something else, which you could use in future without spending thousands of $s for occasional PCB designing. KiCAD is a good opensource tool, recently gaining a large user base and library support, mainly because of Eagle going subscription model. [KiCAD Fab Lib](http://archive.fabacademy.org/archives/2017/doc/electronics/fab.lib)

  Eagle was never an industry standard tool, it was mainly used by small companies who makes PCBs occasionally, by hobbyists, communities like maker/hackerspaces. So if you were thinking about learning a industry standard PCB designing tool, Eagle is not the best option. [Eagle Fab lib](http://archive.fabacademy.org/archives/2017/doc/electronics/fab.lbr)

### Designing

- Design rules

  - Related to traces

    - You will have to figure out the minimum trace width which can be milled. I the trace is too thin, it may come off during the milling or during the soldering.
    - There are test patterns for this, you can create one for yourself as well.
    - Watch out for the corners, sometimes, especially when the traces are too thin and/or the resolution is poor, traces that are not horizontally or vertically aligned may not get milled out perfectly.
    - Autorouters can be set to favour some angles or alignments.

  - Related to pads, vias and distance between adjacent ones.

    - This is important, know your milling tool, the limits; the minimum clearance between adjacent traces depend on this. If your tool is 0.4 mm and the clearance between the adjacent traces or pads etc. is less than 0.4mm, the milling bit will not isolate these section.
    - You have an option to mill using 1/100" bit, but remember that this is a very delicate and expensive bit. Now, if you really wanted to use this particular bit, (for example, your circuit has an IC whose pitch is less than 0.4mm), do not mill the entire board using this bit. Instead just mill the required area with 1/100" and rest with the usual 0.4mm.
    - Sometimes, to get faster milling results, you can also use combination of 1/32", 1/64" and optionally 1/100". Consult your instructor and ask him/er how to do this.
    - Identifying the package size and designing accordingly

- Designing custom library/part.

  - editing existing library.
  - importing exporting libraries, (for example Eagle to KiCAD)

- Designing and making double sided/multilayered PCB.

  - Making double-sided PCB is relatively easy, but going multilayered requires some work, you can do this by stacking single sided PCBs over a double sided PCB, which makes the board very thick. Alternatively you can also use the vinyl cutter and the copper adhesive to cut each layers (and the separator) and paste on top of a normal PCB, with the separator. (again these are advanced techniques or hacks, so ask you instructor for details, [sibu](http://archive.fabacademy.org/archives/2016/fablabtrivandrum/students/281/w3/w3.html) has done some basic multilayered circuit. ![4-layer-antenna](<https://sibusaman.github.io/fab2016/w3/2-layer-light.jpg>)

Some nice examples:
