---
layout: post
title: Electronic Design
---

This week we will learn to design PCB's and in the process about the components/building blocks of electronics. We can separate the week into two

1. Electronic components

2. Circuit Design

Take a note that you have got interesting books in your lab itself. __The art of electronics__ by `Horowitz and Hill` which is The Bible of electronics and circuit-design so please spend sometime "offline" and get a feel of the book. __We would highly recommend that you read the first couple of chapters, first  chapter for sure. Even if you are a seasoned electronics/electrical engineer, you will learn something.__ All the topics listed below can be found there except the specifics of design tools.

# Goals for this week

* Redraw the echo [hello-world board](http://academy.cba.mit.edu/classes/embedded_programming/hello.ftdi.44.png) to include at least an LED and a switch.
* Calculate the value of the current limiting resistors.
* Explain why you are using/not using Pull-up/down resistors for the switch.
* Test and make sure that the board is working.
* Debug, tinker, hack, do whatever it takes to make the board working (except making a new board or replacing the chip).
* If you had to modify the circuit while trying to fix, or add or remove components, then redraw the circuit and make a fresh board.
* Try different design tools.
* Try simulating some circuits.

__or__

 __if you are adventurous or feels that all these are silly, scrap all these just make your own board having the serial interface and containing at least a button and an LED.__

# Basic about Electronic components   ([Wiki](https://en.wikipedia.org/wiki/Electronic_component))

- Electrical fundamentals - voltage, current and their relation.

  - [Kirchhoff's law](https://en.wikipedia.org/wiki/Kirchhoff's_circuit_laws)
  - [Ohms's law](https://en.wikipedia.org/wiki/Ohm's_law)
  - [Faraday's law of induction](https://en.wikipedia.org/wiki/Faraday%27s_law_of_induction)


- Active components
- Passive components

  - What are the active and passive components and what differentiates them? [Link](http://electronics.stackexchange.com/questions/82787/differentiation-between-passive-and-active-components)


- FET vs BJT and power control using FET (Pulse Width Modulation PWM)

  - current vs voltage control
- [Operational Amplifier](https://en.wikipedia.org/wiki/Operational_amplifier)

### Pull-up/down Resistors, Internal Pull-up/down, filter capacitors.

# Basic about Microcontrollers ([Wiki](https://en.wikipedia.org/wiki/Microcontroller))

- What is a controller and what differentiates it from a processor ?
- The microcontroller families in your lab - AVR and PIC(rarely)
- Architecture and different internal parts of a controller
- Reading from the datasheet

  - Registers

    - Register functions options
    - Register availability and custom names for specific chips

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

## About Softwares

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

  Anyway, if you are new (and definitely if you are not new), we recommend learning something else, which you could use in future without spending thousands of $s for occasional PCB designing. KiCAD is a good opensource tool, recently gaining a large user base and library support, mainly because of Eagle going subscription model.

  Eagle was never an industry standard tool (Altium, Proteus is one of the industry standard), it was mainly used by small companies who makes PCBs occasionally, by hobbyists, communities like maker/hackerspaces. So if you were thinking about learning a industry standard PCB designing tool, Eagle is not the best option.


  __Here are some links to the tutorials and other useful stuff related to design tools (especially Eagle and Kicad).__

- **Eagle** - Essential for [beginners](https://www.youtube.com/playlist?list=PL868B73617C6F6FAD), SparkFun [Tutorials](https://learn.sparkfun.com/tutorials/tags/eagle)

- [KiCAD](http://kicad-pcb.org/help/tutorials/) __based on the user feedback, this doc is, by far the best option to learn Kicad. You can download and keep an [offline PDF](http://docs.kicad-pcb.org/stable/en/getting_started_in_kicad.pdf) version or refer to the [html](http://docs.kicad-pcb.org/stable/en/getting_started_in_kicad.html) version.__


- [Kicad video tutorial](https://www.youtube.com/watch?v=zK3rDhJqMu0)


## Fab Library for eagle - [libr](http://archive.fabacademy.org/archives/2017/doc/electronics/fab.lbr)

### Fab Library for KiCAD  
* [lib](http://archive.fabacademy.org/archives/2017/doc/electronics/fab.lib)  
* [mod](http://archive.fabacademy.org/archives/2017/doc/electronics/fab.mod)
* [KiCAD Library from a 2016 student](http://archive.fabacademy.org/2016/fablabhrw/students/165/inventory_library.html)

### Fab Library for eagle
- [lbr](http://archive.fabacademy.org/archives/2017/doc/electronics/fab.lbr)


#### How to add libraries

  - Eagle - One can, in linux, easily add any library by placing the `.lbr` to the `.eagle/lbr` folder found in `home` folder. You can also add libraries from software following [this](https://learn.adafruit.com/eagle-tutorial-how-to-add-a-new-package-to-a-component/new-library).

  - [Kicad](https://www.accelerated-designs.com/help/KiCad_Library.html)



## Designing

- Design rules

  This week we will be concerned about the tolerances while drawing traces, placement of components, and the things we have to take care keeping milling machine, the one available in your lab, in mind. Remember that PCB can be manufactured in many ways and milling is just one of them, so according to the manufacturing techniques the tolerances will vary.  

  - Related to traces

    - You will have to figure out the minimum trace width which can be milled. If the trace is too thin, it may come off during the milling or during the soldering.
    - There are test patterns for this, you can create one for yourself as well.
    - Watch out for the corners, sometimes, especially when the traces are too thin and/or the resolution is poor, traces that are not horizontally or vertically aligned may not get milled out perfectly.
    - Auto-routers can be set to favour some angles or alignments.
    - __MANUAL VS AUTO-ROUTING__

  - Related to pads, vias and distance between adjacent ones.

    - This is important, know your milling tool, the limits; the minimum clearance between adjacent traces depend on this. If your tool is 0.4 mm and the clearance between the adjacent traces or pads etc. is less than 0.4mm, the milling bit will not isolate these section.
    - You have an option to mill using 1/100" bit, but remember that this is a very delicate and expensive bit. Now, if you really wanted to use this particular bit, (for example, your circuit has an IC whose pitch is less than 0.4mm), do not mill the entire board using this bit. Instead just mill the required area with 1/100" and rest with the usual 0.4mm.
    - Sometimes, to get faster milling results, you can also use combination of 1/32", 1/64" and optionally 1/100". Consult your instructor and ask him/er how to do this.
    - Identifying the package size and designing accordingly

- Designing custom library/part.

    This could be fun, try to edit existing components, later try to make a custom component.

  - editing existing library.
  - importing exporting libraries, (for example Eagle to KiCAD)

## Making the circuit  

- Designing and making double sided/multilayered PCB.

  - Making double-sided PCB is relatively easy, but going multilayered requires some work, you can do this by stacking single sided PCBs over a double sided PCB, which makes the board very thick. Alternatively you can also use the vinyl cutter and the copper adhesive to cut each layers (and the separator) and paste on top of a normal PCB, with the separator. (again these are advanced techniques or hacks, so, ask your instructor for details, [sibu](http://archive.fabacademy.org/archives/2016/fablabtrivandrum/students/281/w3/w3.html) has done some basic multilayered circuit. ![4-layer-antenna](<https://sibusaman.github.io/fab2016/w3/2-layer-light.jpg>)


## Workflow

  Almost all of the PCB design software's follow similar workflow. You start with `Schematic` where you draw the circuit digitally, using symbols for actual components, and then move on to `Board` layout where you visualize the actual PCB, where you decide where to physically place and orient the component on the final board etc. After that you will do a process called routing. The routing step is where you will connect the components using wires.

  - Schematic

    * ERC (Electrical Rule Check)
    * Choosing the right component package
  - Board layout

    * Optimal component placement for minimal signal path
  - Routing

    * DRC (Design Rule Check)
  - Milling
  - Stuffing
  - Debugging
  - Hero Shot


## Simulating circuits

  Simulation here means without making the actual board try to simulate/predict the outcome of the circuit. This, as Neil said, is used mostly for very complex circuits as it save time and money than making a sample/prototype.

# Programming the board for testing

  The last thing you have to do is test that your board work fine. Go ahead and download the [make](http://academy.cba.mit.edu/classes/embedded_programming/hello.ftdi.44.echo.c.make) and [C](http://academy.cba.mit.edu/classes/embedded_programming/hello.ftdi.44.echo.c) files. Open a Terminal and move to the directory which have the downloaded files.
  Now we have to use a program called [Make](https://www.gnu.org/software/make/) to use the *Make* file given by Neil. The command to be given is

  `make -f "NAME_OF_MAKEFILE" "OPTION"`
   the <OPTION> can be a any given in the make file, here in particular we have options for making *.hex, out, burn fuses and program*. The order must be
   - `make -f hello.ftdi.44.echo.c.make` for compiling and getting out and hex files
   - `make -f hello.ftdi.44.echo.c.make program-usbtiny-fuses` for setting the fuses
   - `make -f hello.ftdi.44.echo.c.make program-usbtiny` for programming the board

  The quickest way is to use Yadu's [compflash](https://github.com/yadusharon/compflash) which is a beautiful tool to do all of the above steps easily. Just give the input file as the downloaded *c* file, choose the board as *Attiny44* and clock as 20Mhz then compile and burn. If all goes well it should give a successful message otherwise troubleshoot the issue and try to program again.  


# Curious to know more?

<iframe width="560" height="315" src="https://www.youtube.com/embed/JrH_itjMDjo" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/sffuvnGhano" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/O0ifJ4oVdG4" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/WBfAEeEzDlg" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/Ht48vv0rQYk?list=PLvOlSehNtuHtWlH0UOZNtOn-FlFCn1GYw" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/qUeK7pHe0rI?list=PLvOlSehNtuHtWlH0UOZNtOn-FlFCn1GYw" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/7FYHt5XviKc?list=PLvOlSehNtuHtWlH0UOZNtOn-FlFCn1GYw" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/8f-2yXiYmRI" frameborder="0" allowfullscreen></iframe>
