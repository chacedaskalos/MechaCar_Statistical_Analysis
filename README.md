# MechaCar_Statistical_Analysis

## Project Overview

In this challenge I perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes,
collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, run t-tests to determine if the manufacturing lots are statistically different from the mean population, and design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* intercept, vehicle length, and ground clearamce

### Is the slope of the linear model considered to be zero? Why or why not?
* no because p-value: 5.35e-11

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* with an R2 of 0.7149 this model is effective in predicting MPG

![MechaCar_SummaryStatistics](https://user-images.githubusercontent.com/96211484/162598897-a7f94fa4-563f-4b5a-bad7-6c04d16751f4.png)

## Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
* The current manufacturing data does meet the specifications for all manufacturing lots in general (varience = 62.29), but not for each lot individually. Lot 1 has a variance of 0.98, Lot 2 has a variance of 7.47, but Lot 3 has a variance of 170.29

![Suspension_Coil_SumStats](https://user-images.githubusercontent.com/96211484/162599300-f2dd4387-d42c-4e3c-9f0e-7c449ef58b0a.png)

![lot_summary](https://user-images.githubusercontent.com/96211484/162599307-8661dad7-fb9b-4c85-9e03-16e348a625f2.png)

## T-Tests on Suspension Coils
* The t-test from Lot 1 has a p-value = 1, the t-test from Lot 2 has a p-value = .6072, and the t-test from Lot 3 has a p-value = .04168

![PSI_All_Lots](https://user-images.githubusercontent.com/96211484/162599957-4f0e9abf-0958-4072-a9c3-cb267314c1f5.png)

![PSI_Lot1](https://user-images.githubusercontent.com/96211484/162599966-888a9eaa-1d41-4a0b-9789-e19bf8c51d79.png)

![PSI_Lot2](https://user-images.githubusercontent.com/96211484/162599974-f4adbbe3-0f81-4b4d-8d7d-2b3a8d1db7d1.png)

![PSI_Lot3](https://user-images.githubusercontent.com/96211484/162599981-3539f52f-6b51-493d-b813-fb7a1a6ef072.png)

## Study Design: MechaCar vs. Competition
* A study I would design would be to look at if fuel efficiency has an effect on safety rating. Bigger, bulkier cars appear to be safer than smaller cars, while smaller cars tend to get better gas mileage. I'd like to look at if there is a correlation between the two. I would use a simple cor() test on the metrics/data of cars average mpg and the safety rating. 
