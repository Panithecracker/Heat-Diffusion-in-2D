Solving the heat equation in 2D numerically with a forward in time and centered in space scheme (FTCS) and later visualizing the predicted diffusion of heat given different initial distributions and diffusivity values. The spatial domain is a square and the boundary conditions are Dirichlet type but the code can be easily adapted to any problem by just making a change in one line.

# How is it solved?
The model describing the temperature of a 2D object (or 3D which is short enough) is :

![heat-equation-01](https://github.com/Panithecracker/Differential-Equations/assets/97905110/a7edba8b-b120-4480-a8db-5c47540b55eb) 

with $T(x,y,0) = T_0$ (initial temperature distribution) and prescribed boundary conditions (Dirichlet, Neumann, Periodic, Mixed,...)

where $T(x,y,t)$ is the temperature at position $x,y$ after $t$ units of time.The constant $\alpha$ is known as the diffusivity coefficient and it has units of area per time, representing the speed at which the heat diffuses, which may be different across various materials.
The algorithm I implemented discretizes the above equation and iteratively solves the following finite difference equation based on the boundary values and initial distribution. 
 

![image](https://github.com/Panithecracker/Differential-Equations/assets/97905110/04b6ba3a-3601-4cca-a145-e269da143cbb)

## Important note : For a uniform spatial mesh, the stability condition for the heat equation requires that $\ \Delta t < \frac{\Delta x^2}{4D} \$.

# Model simulation and visualization:
Some snapshots in time of the temperature distribution (seen from above) with diffusivity coefficient $\alpha = 1$ units of area per time with initial distribution $T_0(x,y) = (1+cos(\pi x))(1+cos(\pi y))$


![0 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/81624978-edf2-4f12-912a-9f40dd36257d) ![1 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/0e574889-284c-4918-b05b-478ac3f5317a)

![2 (1)](https://github.com/Panithecracker/Differential-Equations/assets/97905110/1bff8e71-a78f-48b3-9d48-668582de4de6) ![3](https://github.com/Panithecracker/Differential-Equations/assets/97905110/66a2dd25-0506-4d50-a340-07a05d520042)
# Movies for $\alpha = 1$

![D_1](https://github.com/Panithecracker/Differential-Equations/assets/97905110/0720c5f6-c306-4502-98ce-39a28ff91734)


# Movies for $\alpha =0.1$

![D_0 1](https://github.com/Panithecracker/Differential-Equations/assets/97905110/7aac2e26-396d-48ba-8d18-af992e9e6b57)




## As expected, making the diffusivity coefficient 10 times smaller results in a slower diffusion of heat.
## In both cases due to the initial condition and boundary conditions, the distribution decays exponentially in time to to $z = 0$ since the ends of the body are not insulated. 
