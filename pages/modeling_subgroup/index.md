# Modeling Subgroup

This is the page about the Modeling Subgroup. Everything you want to know about how we predict the behvaior of materials using code.

1) Motor Model: Derive the take-off velocity for a mass $$m$$ that starts at rest and is driven by a motor that has a range of motion $$d$$ and a force-velocity trade-off 

$$F = F_{max}(1-v/v_{max})$$. 

Here $$F_{max}$$ and $$v_{max}$$ are the motor's maximum force and velocity, respectively. Do this for $$F_{max} = 20$$ N, $$v_{max} = 5$$ m/s, and $$d = 5$$ mm.
  
<details>
<summary markdown='span'>Hint 1</summary>

Start with Newton's second law $$m \frac{dv}{dt} = F_{max}(1-v/v_{max})$$

</details>

<details>
<summary markdown='span'>Hint 2 </summary>

You should end up with a transcendental equation, so you will need to use a numerical approach. 

</details>

<details>
<summary markdown='span'>Solution</summary>

See [motor-driven-motion.pdf](motor-driven-motion/motor-driven-motion.pdf){:target="_blank"} for a mathematical derivation and [motordrivenmotion.m](motor-driven-motion/motordrivenmotion.m){:target="_blank"} for an implementation of the numerial solution in MATLAB.

You should end up with a graph that looks like:
![motor-drirven-motion.png](motor-driven-motion/motor-driven-motion.png)

</details>

2) Spring Model: Derive the take-off velocity $$v_{to}$$ for a mass $$m$$ that starts at rest and is driven by a spring of stiffness $$k$$. The spring is loaded by the same motor as the one in the "Motor Model" above. As an added bonus, what are the maximum acceleration ($$a_{max}$$), launch duration ($$\Delta t$$) (sometimes referred to as take-off time $$t_{to}$$), and maximum power deliver to the mass ($$P_{max}$$). Remember $$P(t) = F(t)\,v(t) = m \,a(t)\, v(t)$$. 

3) How would the Spring Model change if the spring had a mass $$m_s$$? 

<details>
<summary markdown='span'>Hint</summary>

Consider the simplified case where the spring mass is much smaller than the load mass ($$m_s << m$$), so that the strain is uniform in the spring throughout the entire release. What is the velocity of each segment of the spring as a function of the velocity of the end of the spring? Conserve total energy (including kinetic energy from both the load mass and the spring mass) to get the take-off velocity

</details>

<details>
<summary markdown='span'>Answer</summary>

The answer is the same, but mass $$m$$ gets replaced by an effective mass $$m_{eff} = m + m_s/3$$. See [this note](Springmasscontribution.pdf) for a rough sketch of the argument. If you come up with a more fully explained solution, be sure too edit this document and add your contribution!

</details>

4) Read [Cook et al Integrartive Organismal Biology 2022](https://academic.oup.com/iob/article-pdf/4/1/obac032/45637152/obac032.pdf){:target="_blank"}. This paper presents the simplified LaMSA model that we are currently using in posmmlab. Re-derive the equations of motion in the supplementary information at the end of that paper.

5) Download our [MATLAB LaMSA Template Model Software](https://posmlab.github.io/lamsa-template-model/){:target="_blank"}. Get the model to run on your computer, and start to play around with the components and parameters. Reproduce Figure 4A of [Ilton et al Science 2018](https://drive.google.com/drive/u/0/folders/1xL2xKtIF53JZkphJZ3PyK3RLj6TUwCBH){:target="_blank"} using the software.

6) Read more about [muscle modeling](MuscleModeling){:target="_blank"} to understand how muscle motors are implemented in the MATLAB LaMSA Model.
   
7) To understand how we use our MATLAB LaMSA Model to answer questions in biology, watch Prof. [Phil Anderson's 2022 SICB talk](https://drive.google.com/file/d/1Dj4MvMZeqiALX5iHjqrTwP3cui3K3rqP/view?usp=sharing){:target="_blank"}

8) If you are working on larval mantis shrimp modeling, watch [Jacob Harrison's 2022 SICB talk](https://drive.google.com/file/d/1Dl48QgxQS8QxSCjXUHHZW-JSlU1x7Ezp/view?usp=sharing){:target="_blank"}

9) For an overview of current projects, see the [Summer 2022 Modeling directory](https://drive.google.com/drive/u/0/folders/1PvuxRRX3qj0vFsGm9evReVvs94iv2nY_){:target="_blank"} 