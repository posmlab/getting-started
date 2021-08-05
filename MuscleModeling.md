# Muscle Mechanics and Modeling Primer

### Basics
Muscle mechanics are intrinsically difficult to model because of the practical difficulty. It's hard to measure muscle characteristics and kinematics without drastically altering the conditions they perform in. Without these measurements, models can be difficult to verify. To get a sense of where the field of muscle mechanics stands, read [Nishikawa et al SICB 2018](https://drive.google.com/file/d/1J6hNHWgol3XgY8FOeU45y29ljOrWOW2b/view?usp=sharing), focusing on force-length relationships, titin, and stretch. You don’t need to know much about cross-bridge models, as we don’t focus on neuromuscular systems. 

In a lot of muscle mechanics literature, you see references to OpenSim, which is a useful modeling software for looking at large musculoskeletal systems, specifically humans. While I wouldn’t recommend going to the trouble of downloading it unless you plan to construct a new musculoskeletal model or have a specific model to work with, its muscle modeling methods are widely accepted. Skim [Millard et al ASME 2013](https://drive.google.com/file/d/1y5CJJ-qYJhhKfPMGGYU025OqLAb6s4x4/view?usp=sharing) to see some ways people go about modeling muscles, though our methods are signifantly more simplified. Our more sophisticated muscle motors are based in the Hill Muscle model. Read [Thelen ASME 2013](https://drive.google.com/file/d/1P7f6-phYuhpiZ6_2U_tazHxfViYWgDnz/view?usp=sharing), and draw the force-length relationship graph, force-velocity relationship graph, and labeled muscle diagram from this paper.

### Within the LaMSA Model

Open the LaMSA model in MATLAB and pull up the GUI. You’ll see unlatching and loading motor tabs. As you can see below, the loading motor compresses the spring and the unlatching motor yanks the latch out of the way (or holds the latch in place until it’s ready to unlatch in the case of the deactivating motor).
![Steps of LaMSA model](images/LaMSA-loading.jpg)

If you generate some 1D and 2D plots, you’ll also notice that the LaMSA plot is contrasted with direct actuation. Direct actuation shows what would happen if the mass was propelled by the loading motor instead of the spring.

Let’s now look at each of the motors. Generate a few kienamtics and 1D plots with each, look at their code, draw the muscle they represent (like the diagram from Thelen), and write a good circumstance to use them. For loading motors you have: LinearMotor, HillMuscleMotor, and TwoPartMuscle muscle. 

<details open>
   <summary>
   LinearMotor
   
   </summary>

The LinearMotor simply exerts a given Force until it fulfills its function. 
![LinearMotor Force-Length Relationship](images/linearFL.jpg)
![LinearMotor Force-Velocity Relationship](images/linearFV.jpg)
![LinearMotor Force-Time Relationship](images/linearFT.jpg)

 </details>

<details open>
   <summary>
   DeactivatingMotor
   
   </summary>

The DeativatingMotor extends instead of contracting, exerting force in the opposite direction of the others. This makes it useful as an unlatching motor, but not a loading motor.

</details>

<details open>
   <summary>
   HillMuscleMotor
   
   </summary>

The HillMuscleMotor incorporates a hill muscle model from [Rosario et al RSPB 2016](https://drive.google.com/file/d/1hQZRgUJSEeX45XuyvUjl70zC1H38Xo8d/view?usp=sharing) Read the paper and draw the muscle model, force-length, force-velocity, and force-activation curves that you see. Note suitability of this model to modeling elastic systems.
![HillMuscleMotor Force-Length Relationship](images/hillFV.jpg)
![HillMuscleMotor Force-Velocity Relationship](images/hillFL.jpg)
![HillMuscleMotor Force-Time Relationship](images/hillFT.jpg)

</details>

<details open>
   <summary>
   TwoPartMuscleMotor
   
   </summary>

The TwoPartMuscleMotor incorporates a version of the hill muscle model with a contractile and parallel elastic element. It also uses different constants and equations to model motion, so it’s more flexible. Read the paper it’s based on, [Hauefle et al JEB 2014](https://drive.google.com/file/d/1FPZSl_6uO3dHY5OEQ8Jqka2fGD2D--AG/view?usp=sharing), and draw the muscle element diagram as well as the force length curve with and without the parallel elastic element engaged.
![TwoPartMuscleMotor Force-Length Relationship](images/twopartFL.jpg)
![TwoPartMuscleMotor Force-Velocity Relationship](images/twopartFV.jpg)
![TwoPartMuscleMotor Force-Time Relationship](images/twopartFT.jpg)

</details> 

### Next Steps

TwoPartMuscleMotor is new and could be further fine tuned. Also, it's capable of eccentric contraction, which isn't currently being utilized. The large number of constants in the constructor, which shape the force-length and force-velocity relationship curves, could be fine-tuned to reflect other types of muscle.

Generally, the existing muscle models could all stand to be further verified, whether using an alternate muscle-modeling software or checked against experimental data. 

Also, it could be useful to set up a kinematics tab to model direct actuation as well as LaMSA, to study muscle mechanics or verify new muscle motors.
