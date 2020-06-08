# Bioinspired Microrobotic Devices

Using nature as inspiration, recent work in robotics has taken principles of design from some ultra-fast movements in nature. This page includes examples of engineered systems that (often) use the storage and quick release of elastic energy to drive movement.

To contribute to this page, choose a device from the list below and add information. Some starting references are provided as Google Drive links in each section. If you find other research papers, be sure to save them to the posmlab Google Drive "Papers" folder and link to them here. The organisms listed are from Table 1 of [Ilton et al Science 2018](https://drive.google.com/open?id=1uo5F2MfkcKfCjjJiLNwWVN3OzWN_OLh7), but add other examples here if you come across them.

[Micro elastomer jumper](#micro-elastomer-jumper)

[Energetic silicon jumper](#energetic-silicon-jumper)

[Chameleon tongue–inspired system](#chameleon-tongue–inspired-system)

[Flea-inspired robot](#flea-inspired-robot)

[Steerable MSU jumper](#steerable-MSU-jumper)

[Water strider–inspired robot](#water-strider–inspired-robot)

[EPFL 7 g robot](#EPFL-7-g-robot)

[JPL hopper](#jpl-hopper)

[High-speed fingered hand](#high-speed-fingered-hand)

[Locust-inspired robot](#locust-inspired-robot)

[Flytrap-inspired robot](#flytrap-inspired-robot)

[Galago-inspired Salto robot](#galago-inspired-salto-robot)

[Sand flea–inspired robot](#sand-flea–inspired-robot)

[Sandia Mars hopper](#sandia-mars-hopper)

[Soft combustion robot](#soft-combustion-robot)

[Bipedal jumper Mowgli](#bipedal-jumper-mowgli)

----------------------------

### Micro elastomer jumper
[Gerratt and Bergbreiter Smart Mater Struct 2013](https://drive.google.com/open?id=1lLtdhQMT8jIQa2Tt-brgbHMaO9Imt2zi)

### Energetic silicon jumper
[Churaman et al J Microelectromech Syst 2012](https://drive.google.com/open?id=1Oy4LIYb04gKtzj8Dq-sJMZs0Hqa1iC1O)


### Chameleon tongue–inspired system 

This system takes inspiration from the capability of the chameleon tongue to project to more than 6 times its rest length, the flexibility of the moving element, and the lack of continuous force during the forward motion. THe system consists of 4 separate manipulators, each mimicking different aspects of the cameleon tongue system, moving towards completely mimicking the system (as close as it is possible to get without biological methods). 

The common elements the 4 engineering manipulators are as follows:
> + extend as they move
> + flexible moving element
> + no continuous applied force

The first manipulator reproduces the basics of the tongue system. The second manipulator extends the mechanical capabilites of the first, and attempts to more closely reproduce the mechanical specifications of nature. The third attempts to better reproduce the motion of the chameleon tongue, mimicking the motion as a function of time. Finally, the fourth went beyond the chameleon tongue model, including wings to take advantage of aerodynamics. The ability to project and retract was thus implemented slightly differently in each manipulator.

##### Table 1 from Debray describes how the four manipulators were implemented mechanically, and how that relates to the same function in the chameleon model.
![Debray Table 1](images/manipulatorstable.JPG)

##### Figure 3 from Debray shows photographs of the four manipulators dicussed. (a) coilgun elastomer system (b) coilgun-dc motor system (c) coilgun-dc-elastomer system (d) aerodynamic system.
![manipulators from Debray Fig 3](images/manipulatorschameleondevice.JPG)


Future improvements on the existing models include:
> + studying performance of catching as a function of aiming direction
> + incoorporating an active catching device, similar to what is present in the chameleon tongue and allows for capture of heavier prey
> + incoorporating the wings in controlling direction during motion
> + sensors being integrated for real-time position monitoring

This device has great potential applications, specifically in factory lines. The extensibility is limited by the rigidity of the arm, but as the arm is designed to extend, many positions can be reached without the system occupying much volume. The flexibility of the moving element reduces the impact of collisions, as does the lack of a continuous force being applied such as with a robotic arm. 


[Debray Bioinspir Biomim 2011](https://drive.google.com/open?id=1Xv6ejFxYzqn1a_La159wmyE9qjkg3uG_)

### Flea-inspired robot 
[Koh et al IEEE 2013](https://drive.google.com/open?id=1lA-ZneFo5w-ecYH2pIVgz0naCB40lueS)


### Steerable MSU jumper 
[Zhao et al IEE Trans Robot 2013](https://drive.google.com/open?id=1SuD1m8c1r9tTVZf9lBW2tahWxfTb56k3)

### Water strider–inspired robot 
[Koh et al Science 2015](https://drive.google.com/open?id=199GLhP84E0Q2wsT6UpgleDHqnFasI4Tx)


### EPFL 7 g robot 

The 7g jumping robot is capable of overcoming obstacles of around 1.4 m tall and is made to accomodate different payloads. The system has a total mass of 10 g and takes off at a 75 degree angle. To optimize the efficiency of the energy transmission from the legs, a four bar linkage design is used. In addition, this design also allows for adjustments in the take-off angle and acceleration time. Based on the mechanical properties of small jumping animals, energy is stored slowly by a DC motor into two springs connected to the legs and body and is released by a click mechanism.

Imaging of the 7g Jumping Robot from
[Kovac et al IEEE 2008](https://drive.google.com/open?id=13YTO5TTnOkXzwpymIFafRse-I0hbXCDk)

##### Figure 5 from Kovac et al. The CAD model of the jumping mechanism.
![7g Jumping Robot from Kovac Fig 5](images/EPFL_7g_robot.png)


##### Summary of Kinematic Peformance from Kovac et al

| Kinematic Metric | 7g Jumping Robot performance |
| -------- | ------- |
| Duration (Jump) | 1.02 s |
| Duration (Acceleration) | 15 ms | 
| Max. Velocity | 5.96 m/s |



 For further reading, [Kovac et al IEEE 2008](https://drive.google.com/open?id=13YTO5TTnOkXzwpymIFafRse-I0hbXCDk) has more details about the 7g jumping robot.

### JPL hopper
[Burdick and Fiorini Int J Robot Res 2003](https://drive.google.com/open?id=1RDAN-QERuIzK9G48AAmUMkePTsg68OTL)

### High-speed fingered hand
[Namiki et al IEEE 2003](https://drive.google.com/open?id=10x_SWtJawHzpsDgerjedE_YeRe9PFubD)

### Locust-inspired robot
[Zaitsev et al Bioinspir Biomim 2015](https://drive.google.com/open?id=1fTxzcXYomh5jkyz-gF_PDHIlgxKalwWC)

### Flytrap-inspired robot
[Kim et al Bioinspir Biomim 2014](https://drive.google.com/open?id=13-rasGR4xlGQ_rDX6gAwDK3ehuEcGWgo)

### Galago-inspired Salto robot
[Haldane et al Sci Robot 2016](https://drive.google.com/open?id=1wXFkodmrF1W6-VN_5c5PPKGcimqS5GeJ)

### Sand flea–inspired robot
[Boston Dynamics legacy product](https://www.youtube.com/watch?v=6b4ZZQkcNEo)


### Sandia Mars hopper
[Weiss Sci News 2001](https://drive.google.com/open?id=1Kbf9YQMrja2S2vOF0P3kuah-KQe3au7Y)

[Sandia Lab News](https://www.sandia.gov/LabNews/LN05-19-00/software_story.html)


### Soft combustion robot 
[Bartlett Science 2015](https://drive.google.com/open?id=1I_E8SdiUy-zPiZ4Tt8aURbBA9AXHFX1q)


### Bipedal jumper “Mowgli”
[Niiyama et al IEEE 2007](https://drive.google.com/open?id=12cTxWiK3cYqswlMm9cqM8sM4KdUn2Jvx)

