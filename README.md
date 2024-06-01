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
![0](https://github.com/Panithecracker/Differential-Equations/assets/97905110/4181aec4-d4b1-410e-ab7b-37f986bec6e1)
![1](https://github.com/Panithecracker/Differential-Equations/assets/97905110/f296ea3e-cefe-46c1-9fdf-abfc80449fe9)
![2](https://github.com/Panithecracker/Differential-Equations/assets/97905110/26e7f888-59f7-47a3-a8f0-66a93c4139e6)
![3](https://github.com/Panithecracker/Differential-Equations/assets/97905110/c5d4caea-905d-4a79-83d6-4d9a81367790)



#### Flutter App Screenshots
<table>
  <tr>
    <td><img src="![3](https://github.com/Panithecracker/Differential-Equations/assets/97905110/5a6f7ca5-3367-4c25-b49b-afc0674baf0f)
" alt="Image 1" ></td>
    <td><img src=![0s](https://github.com/Panithecracker/Differential-Equations/assets/97905110/37f53280-250e-48ec-a30b-72d1fc679fa1)
 alt="Image 2" width="250" height="250"></td>
    <td><img src="image3_url" alt="Image 3" width="250" height="250"></td>
    <td><img src="image4_url" alt="Image 4" width="250" height="250"></td>
    <td><img src="image5_url" alt="Image 5" width="250" height="250"></td>
    <td><img src="image6_url" alt="Image 6" width="250" height="250"></td>
  </tr>
</table>

<table>
  <tr>
    <td><img src="https://github.com/Panithecracker/Differential-Equations/assets/97905110/c5d4caea-905d-4a79-83d6-4d9a81367790" alt="Image 1" width="250" height="250"></td>
    <td><img src="https://github.com/Panithecracker/Differential-Equations/assets/97905110/another-image-url" alt="Image 2" width="200" height="200"></td>
  </tr>
  <tr>
    <td><img src="https://github.com/Panithecracker/Differential-Equations/assets/97905110/yet-another-image-url" alt="Image 3" width="200" height="200"></td>
    <td><img src="https://github.com/Panithecracker/Differential-Equations/assets/97905110/fourth-image-url" alt="Image 4" width="200" height="200"></td>
  </tr>
</table>
