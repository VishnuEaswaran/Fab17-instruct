---
layout: post
title: Computer Controlled Machining
---

Quintessence
===
This week we are going to make something [BIG](http://blog.ted.com/2008/07/15/digitally_fabbe/) using the CNC machine/s and of course document all that. The large format machine in our lab is [ShopBot](http://www.shopbottools.com/mProducts/prSalpha.htm). The Modella MDX 20 we used for milling PCB's is not just for that but also for milling many other materials. As Neil puts it "You will learn you need not buy your furniture but make them yourself"

Details
===

This weeks objectives are

+  Design a (physically)big object which can be made using the available CNC machine.

+ Machining what you have designed

> Managing time is crucial for this week as one may find it difficult to finalise on a project as their are many possibilities. The designing part might also take good amount of time - it completely depend on your 3D designing skills. Also most of the labs might only have a single CNC machine and long time for completing each projects. So kindly keep this in mind and proceed.

Design
===
- Design in 2D and/or 3D for milling. Do a **test cut**, similar to what done during the Laser Cutting week, for determining the tolerance of the machine and the material. You can use any CAD software and export in *.dxf* format. For this week it is not necessary to machine 3D works.

- Design Rules - Keeping note of the result of the *test cut* design something `big`.

  * Dependency on material - take into account the material thickness and physical properties like elasticity, reaction to stress, strain etc.
  * Machine specific - depending on the machine and `tool bit` you have to determine the minimum machinable thickness. Fo cutting had materials like metals we would need to have some sought of coolant, as the machining process generates heat, or else pause in between for the tool bit to cool-down.

Machining
===

- Details about ShopBot - the CNC available in our lab.

  * bed size - 8x4 feet
  * The longest side is the **x** axis and the shorter one is the **y** axis.
  * degrees of freedom - 3
  * about *tool bits*

    - according to the diameter we have 1/8, 1/4, 1/2 inch and 6mm dia tool bits.
    - according to the number of flutes present we have single, double and four flute tool bits.
    - according to the action of the tool bit we have 2 varieties
     * upcut - this removes the chips cut upward and out of the work piece. It results in fine finish on the top while rough at the bottom surface.
     * downcut - this removes the chips and pushes it into the work piece. This provides a finer bottom and rough top surface finish.

  * spindle - spindle is the end effector part which holds the tool bit and rotates to enable  machining. The speed of rotation depends mainly on the type of bit and type of machining material. You should read the machining handbook that comes with the ShopBot before experimenting with the spindle speed.

- **The software and getting the machine ready**

  * V-Carve pro customized for ShopBot is used for setting up the machining parameters. Some of them are

    * Tool path - according to the need we can choose from a handful of options like profile, pocket, holes, basic engraving etc.
    * Each tool path has similar set of options like the **cut-depth, type of tool-bit, number of passes, specifics about the path to be taken while machining etc**. Switch on the machine only after completing these much steps.

  * Zeroing process - Select a arbitrary point and zero the x&y axis. From then that point will be replace the machine origin. Next zero the **z** axis following the technique used in your machine.

  * After having all the above in pace turn the spindle key to ON and feed the **Cut Part** to the job-control software. Once the **START** button is pressed the software will show some warnings for checking if we have the right tool-bit in place, have zeroed the z-axis etc. After agreeing to al those it will ask you to start the spindle and once you do that the milling begins !!

Safety First
===

- Wear goggles when going near working machines
- Wear safety gloves if needed
- If you have long hair, tie it up properly so that it wont get in the way of a moving parts.

Common errors
===

This is gonna be a very long list as there are many trivial, typical and frequent mistakes which could lead to catastrophic results or stuff for good stories.

#### Precautions

* Have the right tool mounded
* Tighten the collet as desired and don't overdo it.
* check if the spindle is at prescribed speed.
* Always have the cutting placed as the last step of the job as once the piece is completely separated from the board, it can come loose and thus all the alignments are lost.  
* Don't forget to zero the x, y and z axis properly. 
