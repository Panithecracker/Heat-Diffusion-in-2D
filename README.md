# Heat Equation in 2D:
Solving the heat equation in 2D numerically with a forward in time and centered in space scheme (FTCS) and later visualizing the predicted diffusion of heat given different initial distributions and diffusivity values.

# How is it solved?
The equation describing the temperature of an object whose height can be assumed to not affect its temperature is modeled by:
![heat-equation-01](https://github.com/Panithecracker/Differential-Equations/assets/97905110/a7edba8b-b120-4480-a8db-5c47540b55eb) 

where T is a function of the position in the $x,y$ -plane and the time $t$.The constant $\alpha$ is known as the diffusivity coefficient and it has units of area per time, representing the speed at which the heat diffuses, which may be different among various materials.
The algorithm I implemented discretizes the above equation and iteratively solves the following finite difference equation based on the boundary values and initial distribution.

![image](https://github.com/Panithecracker/Differential-Equations/assets/97905110/04b6ba3a-3601-4cca-a145-e269da143cbb)

# Model simulation and visualization:
Some snapshots in time with diffuivity coefficient $\alpha = 1$.


![0 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/81624978-edf2-4f12-912a-9f40dd36257d) ![1 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/0e574889-284c-4918-b05b-478ac3f5317a)

![2 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/1bff8e71-a78f-48b3-9d48-668582de4de6) ![3](https://github.com/Panithecracker/Differential-Equations/assets/97905110/66a2dd25-0506-4d50-a340-07a05d520042)







#### Flutter App Screenshots

