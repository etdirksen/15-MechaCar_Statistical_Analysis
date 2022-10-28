# Module 15 Challenge
## Deliverable 1
 
### Linear Regression to Predict MPG
![Multiple Linear Regression to Predict MPG](resources/multiple_linear_regression.png)

- The coefficients that provided a non-random amount of variance to the MPG values in the dataset were: vehicle_length, vehicle_weight, and ground_clearance. I used the significance codes key to determine how impactful each coefficient was. 
- Looking at the linear regression summary statistics, the p-value is 5.35e-11, which is much smaller than our assumed significane level of 0.05%. Because of this, there is sufficient evidence to where I can reject the null hypothesis, meaning that the slope of our linear model is not zero.
- The multiple R-squared value from these statistics is 0.7149. This means that 71.49% of the variability of the dependent variable can be explained using this linear model.