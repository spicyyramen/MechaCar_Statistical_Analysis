# MechaCar Statistical Analysis

## Overview
The purpose of this analysis is to:
- Perform multiple linear regression to identify which variables are predictive of MPG for the MechaCar prototypes
- Collect summary statistics on PSI of suspension coils from various manufacturing lots
- Run t-tests to determine whether manufacturing lots are consistent statistically with the mean population
- Design a study to compare performance of the MechaCar against competitors' vehicles

## Linear Regression to Predict MPG
### MechaCar MPG Summary Statistics
![MechaCar MPG Stummary Statistics](images/MechaCar_sumstats.png)

- The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset were: **vehicle length**, **ground clearance**, and **intercept**.
- The slope of the model is not considered to be zero, as the p-value (5.35e-11) is sufficiently small to fail to reject the null hypothesis.
- This linear model effectively predicts mpg of MechaCar prototypes for this particullar dataset (r-sqaured=0.715), however this may be a case of overfitting as only 3 of the 6 coefficients were statistically significant.

## Summary Statistics on Suspension Coils

### Overall Suspension Coil Statistics
![Suspension Coil Summary Statistics](images/total_sum.png)

### Suspension Coil Statistics by Manufacturing Lot
![Suspension Coil Summary Statistics by Manufacturing Lot](images/lot_sum.png)

When looking at the overall suspension coil statistics, it appears that the variance (~62.3) falls just under the maximum allowed variance of 100 lbs per square inch. 

However, if broken down by manufacturing lot it becomes clear that Lots 1 & 2 are well under the maximum allowed variance- whereas Lot 3 was well *above* the allowed variance, skewing the overall data. Lot 3 in particular fails to meet manufacturing specifications as it has a very high variance and standard deviation.

## T-Tests on Suspension Coils
### Summary
For all performed T-Tests(sample vs pop, lot1 vs pop, lot2 vs pop, lot3 vs pop) the p-value was above 0.05, indicating that there was no statistically significant difference between each sample group's mean and the population mean. 
 
### Sample vs Population
![Suspension Coil Summary Statistics by Manufacturing Lot](images/sample_vs_pop.png)


### Lot 1 T-Test Results
![Suspension Coil Summary Statistics by Manufacturing Lot](images/lot1_ttest.png)

### Lot 2 T-Test Results
![Suspension Coil Summary Statistics by Manufacturing Lot](images/lot2_ttest.png)

### Lot 3 T-Test Results
![Suspension Coil Summary Statistics by Manufacturing Lot](images/lot3_ttest.png)

## Study Design: MechaCar vs Competition
Another important metric to consider for MechaCar would the the cost of the vehicle compared to the competition. First, you would need consumer data on current car buying prices. Narrow down the list of vehicle prices to be limited to vehicle types that MechaCar also offers(sedan, truck, minivan, etc.).

Once you have the data required, you can take a random sample from each dataset (using sample_n()), and run a two-sample t-test to determine if there is a significant difference in distribution of average cost for MechaCar models vs competition models.

The null hypothesis would be if the difference between MechaCar sample dataset and competition sample dataset is zero (no significant difference in cost). The alternative hypothesis would be if the difference between MechaCar sample data *is not* equal to zero (significant difference in cost). 