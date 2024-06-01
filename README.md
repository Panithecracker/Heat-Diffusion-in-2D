# Heat Equation in 2D:
Solving the heat equation in 2D numerically with a forward in time and centered in space scheme (FTCS) and later visualizing the predicted diffusion of heat given different initial distributions and diffusivity values. The spatial domain is a square and the boundary conditions are Dirichlet type but the code can be easily adapted to any problem by just making a change in one line.

# How is it solved?
The model describing the temperature of a 2D object (or 3D which is short enough) is :

![heat-equation-01](https://github.com/Panithecracker/Differential-Equations/assets/97905110/a7edba8b-b120-4480-a8db-5c47540b55eb) 

with $T(x,y,0) = T_0$ (initial temperature distribution) and prescribed boundary conditions (Dirichlet, Neumann, Periodic, Mixed,...)

where $T(x,y,t)$ is the temperature at position $x,y$ after $t$ units of time.The constant $\alpha$ is known as the diffusivity coefficient and it has units of area per time, representing the speed at which the heat diffuses, which may be different across various materials.
The algorithm I implemented discretizes the above equation and iteratively solves the following finite difference equation based on the boundary values and initial distribution.

![image](https://github.com/Panithecracker/Differential-Equations/assets/97905110/04b6ba3a-3601-4cca-a145-e269da143cbb)

# Model simulation and visualization:
Some snapshots in time with diffusivity coefficient $\alpha = 1$ units of area per time.


![0 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/81624978-edf2-4f12-912a-9f40dd36257d) ![1 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/0e574889-284c-4918-b05b-478ac3f5317a)

![2 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/1bff8e71-a78f-48b3-9d48-668582de4de6) ![3](https://github.com/Panithecracker/Differential-Equations/assets/97905110/66a2dd25-0506-4d50-a340-07a05d520042)
# Movies for $\alpha = 1$

https://github.com/Panithecracker/Differential-Equations/assets/97905110/767543c8-3739-497f-9b71-dd4f043e6702

https://github.com/Panithecracker/Differential-Equations/assets/97905110/ad8533a1-e0b8-4e22-8be6-471b3f5377a5







# Movies for $\alpha =0.1$

https://github.com/Panithecracker/Differential-Equations/assets/97905110/dfccf2be-6be9-4557-aa94-7b9c5ddbfabc

https://github.com/Panithecracker/Differential-Equations/assets/97905110/c1c98828-4aff-4f74-8438-ce09d3f47c2d


