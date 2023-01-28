# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![linear_regression](https://github.com/ggalguera/MechaCar_Statistical_Analysis/blob/main/linear_regression.png)
From the analysis we can conclude that the vehicle_length and ground_clearance have P values lower then 0.05 so they provided a non-random amount of variance to the mpg values in the dataset. The slope of the linear model is not considered to be zero because the p-value of the F-statistic (5.35e-11) is much less than 0.05, indicating that at least one of the coefficients is not zero. For this case, the R-squared value of 0.7149 means that about 71.49% of the variance in the mpg variable can be explained by the other variables in the model (vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD). This suggests that the model has a relatively good fit to the data, but it is not a perfect fit.
It is possible that other variables or interactions between variables might also be important in predicting mpg, and that these are not included in the current model. Additionally, even though the R-squared value is relatively high, it is important to check the residuals and make sure the assumptions of the linear model are met before interpreting the model.

## Summary Statistics on Suspension Coils
### Total Summary Overview
![total_summary](https://github.com/ggalguera/MechaCar_Statistical_Analysis/blob/main/total_summary.png)
### Lot Summary Overbiew
![lot_summary](https://github.com/ggalguera/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)
### Interpretation
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The current manufaturing data shows that 2 lots meet the specifications but lot 3 does not. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Lot 3 is 70.29 PSI over the limit and should be rejected. The other two lots PSI Variance is low compared with the limit.

## T-Tests on Suspension Coils
For Lots 1 and 2 we failed to reject the null hypostesis as the P > 0.05 but for Lot 3 we reject null hypotesis which means that the PSI on that lote is statistically different from the population mean of 1,500 pounds per square inch. We will recommend the manufacturer to hold this lote for further investigation.
### t-Test for the Whole Population
![total_t_test](https://github.com/ggalguera/MechaCar_Statistical_Analysis/blob/main/total_t_test.png)
### t-Test by Lot
![lots_t_test](https://github.com/ggalguera/MechaCar_Statistical_Analysis/blob/main/lots_t_test.png)

## Study Design: MechaCar vs Competition
To compare MechaCar performance against the competition, we need to obtain samples of cars from the competition. Gas consumption is crucial due to its high cost, so we will focus on it. Our null hypothesis for the average fuel efficiency is: MechaCar cars do not use 2% less gasoline than the competition's cars. To test this hypothesis, we will use a Two-Sample t-Test, comparing data from MechaCar samples and the competition sample, we also can use a One-Sample t-Test is we have the consumption from all MachaCar but this will depend of the study. The data we will need is the average consumption for city and highway driving, presented in a table format, with MechaCar and the competition's data in the same columns but with its corresponding attribute. The more samples we have, the higher our confidence level in our analysis will be.
