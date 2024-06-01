# Heat Equation in 2D:
Solving the heat equation in 2D numerically with a forward in time and centered in space scheme (FTCS) and later visualizing the predicted diffusion of heat given different initial distributions and diffusivity values.

# How is it solved?
The equation describing the temperature of an object whose height can be assumed to not affect its temperature is modeled by:
![heat-equation-01](https://github.com/Panithecracker/Differential-Equations/assets/97905110/a7edba8b-b120-4480-a8db-5c47540b55eb) 

where T is a function of the position in the x,y -plane and the time t.The constant $alpha$ is known as the diffusivity coefficient and it has units of area per time, representing the speed at which the heat diffuses, which may be different among various materials.
The algorithm I implemented discretizes the above equation and iteratively solves the following finite difference equation based on the boundary values and initial distribution.

![image](https://github.com/Panithecracker/Differential-Equations/assets/97905110/04b6ba3a-3601-4cca-a145-e269da143cbb)

# Model simulation and visualization:


![2](https://github.com/Panithecracker/Differential-Equations/assets/97905110/579bfcc9-8438-49ef-bcee-34b71c676a8d)                                                   
![1](https://github.com/Panithecracker/Differential-Equations/assets/97905110/845e7f36-449f-4c1a-95b4-62762c6231f9)
![0](https://github.com/Panithecracker/Differential-Equations/assets/97905110/8067332d-68b8-4135-8466-2f03d6194430)
![3](https://github.com/Panithecracker/Differential-Equations/assets/97905110/3cd7307c-e19b-4c9d-989a-1c23cd8a33e0)

#### Flutter App Screenshots

<table>
  <tr>
    <td>First Screen Page</td>
     <td>Holiday Mention</td>
     <td>Present day in purple and selected day in pink</td>
  </tr>
  <tr>
    <td><img src=![0](https://github.com/Panithecracker/Differential-Equations/assets/97905110/8067332d-68b8-4135-8466-2f03d6194430) width=270 height=480></td>
    <td><img src="screenshots/Screenshot_1582745125.png" width=270 height=480></td>
    <td><img src="screenshots/Screenshot_1582745139.png" width=270 height=480></td>
  </tr>
 </table>
