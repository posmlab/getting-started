# PosMLab Training & Onboarding

Welcome to PoSMLab! Here you will find an introduction to our group and useful onboarding information.

## Onboarding Logistics


<span class='caret'>Logistical details if you want to get started in PoSMLab (expand/collapse)</span>

### General Logistics

#### MATLAB

Most of our analysis and simulation code is written in MATLAB. If you don't have MATLAB installed, please follow the [HMC Instructions for Installing MATLAB on your computer](https://docs.google.com/document/d/1-dmjftyCPrAWVC4g5OvJ4mv9C1jUWgiwmJVQw4iSR5w/pub)

If you are relatively new to MATLAB, a good place to start is the two-hour [MATLAB onramp](https://www.mathworks.com/learn/tutorials/matlab-onramp.html) course. If you're looking for some more advanced topics, you could also check out the [MATLAB ordinary differential equation course](https://matlabacademy.mathworks.com/R2020a/portal.html?course=odes) that is helpful for some of our simulation work, or go through this set of
[MATLAB image processing course notes](http://www.math.hkbu.edu.hk/~zeng/Teaching/math3615/ls.pdf) that is useful for the experimental side of our research.

#### Github

We are starting to use Github to organize and collaborate on projects (even ones that aren't heavy on coding). If you haven't done so already, [create a Github account](https://github.com/join) and let Mark know your username so you can be added to the [posmlab organization on Github](https://github.com/posmlab).

If you haven't used Github before, the [Github Desktop App](https://desktop.github.com/) helps to step you through the actions.

*Note*: for most of our repositories we use a [Centralized Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows#centralized-workflow) and make commits directly to master. 

The Github platform uses Markdown to style text. This [Markdown Guide](https://guides.github.com/features/mastering-markdown/) is helpful if you're new to using Markdown.

#### Slack
We use Slack to communicate as a whole team.  (especially in the summer when we are working full time). When you are actively working on a posmlab project, try to get in the habit of logging into Slack. 

Make sure that you are added to the [posmlab Slack workspace](posmlab.slack.com).

#### Google Drive

The shared [posmlab Google Drive folder](https://drive.google.com/open?id=1HxL1mvqemhXWwuLllHtH9DN2VYXCkKgf) is a place to store large files/data. Currently its structure is in need of cleaning up.

The ["poslmab/Papers"](https://drive.google.com/open?id=1xL2xKtIF53JZkphJZ3PyK3RLj6TUwCBH) folder is currently where we store pdf files of relevant literature. Please add any new papers here with the naming convention of the first author last nameplace copies of relevant literature in that folder 

Number of authors | Filename Format | Example 
--------------| --------------- | -------
1 | Authorlastname Journalname Year.pdf | Doe Phys Rev Lett 2015.pdf 
2 | Firstauthorlastname and Secondauthorlastname Journalname Year.pdf | Lee and Doe Science 2018
3+ | Firstauthorlastname et al Journalname Year.pdf | Lee et al Nature 2017

Once saved in Google Drive, you can right click on the document and "Get shareable link" to provide easy access from other sources (e.g. Github repository readme file).

Ask Mark for:
- Swipe access to the Lab Galileo B101 (need your Student ID Number)
https://docs.google.com/forms/d/e/1FAIpQLSd_ZfhmSiPN566x26YyP1rT3-csjoCd-qcJXw094bjZ1R4T4w/viewform
- passwords to accounts
- lab notebook
- access to posmlab Google Drive Folder
- access to posmlab Slack workspace 
- to be added to the posmlab Github organization (need your Github username)

Group Accounts:
   Service     |   Name       
-------- | -------------
Gmail | physicsofsoftmatter@gmail.com
Instagram | https://www.instagram.com/posm_lab/
Squarespace (managed by Mark) | posmlab.org 
Google Drive | [posmlab shared drive](https://drive.google.com/open?id=1HxL1mvqemhXWwuLllHtH9DN2VYXCkKgf)
Slack | posmlab.slack.com
Github | github.com/posmlab

### Other (less important) off-campus logistics

#### VPN Connection 

[Guide to connecting to HMC by VPN](https://docs.google.com/a/g.hmc.edu/document/d/1VpuXDPbi40UPM2APm8cxQGtQ_Dlo8ju8Yam5p2Awf74/pub)

A VPN connection is needed for remote access of lab computers, accessing journal articles online that have a paywall (and other HMC specific things too). But if you don't need these specific functions, make sure you aren't connected via VPN because it will slow down your network access.

#### Accessing Lab Computers 

If you need more computational power than your personal device can handle, there are two computers in Galileo B101 connected via remote access: "Happy" and "Grumpy" (yes, all of our computers are 7 dwarf themed). 

You will need a [Remote Desktop Client](https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/clients/remote-desktop-clients)


| Computer Name  | | IP Address  |
| ------- | --------|-------------------------| 
| Happy | |134.173.33.112 |
| Grumpy | | 134.173.33.104 |

Ask Mark for username and password.


------------------------------------------

## Group Culture
[Rockwell Retro Encabulator](https://www.youtube.com/watch?v=RXJKdh1KZ0w)

Entering a new area of research is difficult! 

If you don't understand something, it's probably because it wasn't explained well!
- ask for clarification: any question is a good question that arises from curiosity or a desire to understand!
- document your new understanding for future group members

Mark is a teammate/collaborator/advisor not a boss/supervisor. Openly questioning his advice is encouraged! To promote an open and equal discussion please refer to Mark on a first-name basis in our research group (rather than Prof. Ilton). 

Generally, our group culture has been one where we are supportive of one another, take interest in what others in the group are doing, and are willing to put our work aside momentarily to help someone else out!

----------------------------------------
</details>



## Introduction to PoSMLab Research 

<details>
   
<summary>Introduction to the physics of ultra-fast elastic movements (expand/collapse)</summary>

+ Introduction video
    + examples in nature (ultra-fast movements)
    + size-scale 
    + engineered devices
    + high level goals of our research
+ Engaging in Primary Literature 
    + why primary literature; how to read
    + Task 1: pick an organism from [Inspiration from Nature](organisms.md)
    + Task 2: pick an engineered device  [Engineering examples](devices.md)
+ LaMSA systems
    + Discussion of [Longo et al JEB 2019](https://drive.google.com/open?id=1qVMa5j6ePS5s1gtqKgDq5B0CHeS0kLzg) including definitions and examples of motor spring latch load
+ when does a spring beat a motor? (simple toy model example; LaMSA zone)
    + video 
    + Task: derive equations of motion for motor model
    + Task: derive equations of motion for spring model
    + 
+ what can springs do? 
    + roles of springs in biology: [Roberts and Azizi JEB 2011](https://drive.google.com/open?id=1IT0M8tKtYCogp_DZB_ffbrGxaPEbItUH)
    + four main determining factors for performance: (materials, geometry, size-scale, load)
    + what are max velocity (vmax), max acceleration (amax), recoil duration (deltat), max power (Pmax) as a function of k, m, ymax?
        - what if the spring has mass (ms << m vs. ms ~ m)?
    + spring load deformation: compression, tension, shear, bending, torsion
    + materials + geometry ----> k, ms (for small deformation)
    + what are vmax, amax, deltat, Pmax as a function of E, A, L, rho, epsilon for unixaxial tension?
+ recoil experiments (previous work, free vs heavy, uniaxial extension vs bending)
+ materials: measuring mechanical properties (elasticity, viscoelasticity; rheology; resilience & tan delta, loading geometry)

Modeling Subgroup
+ evolutionary biomechanics introduction (phylogeny and ontogeny; morphology, mechanical sensitivity, and tempo)
+ what can muscles really do? (intro to muscle  physiology)
+ the role of latches (control and energy mediation)
+ current state of the toy model

Materials Testing Subgroup
+ introduction to high-speed videography, digitization, and kinematic fitting
+ wave propagation in materials
+ materials selection introduction
+ mechanical batteries introduction


+ How to prepare a journal club (or rapid fire journal club)
    + Reading a paper with purpose
    + annotating
    + extracting key ideas into separate notes
    + extracting key figures


## Other Ideas


+ journal club readings (both rapid fire and full) and videos
+ 

## To Do (MI)

- [ ] make sample JC presentation
- [ ] outline goals and first steps for each project
- [ ] populate each repository with initial uploads and README.md summarizing the contents
- [ ] 

</details>
