# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![MechaCar MPG Stummary Statistics](images/MechaCar_sumstats.png)

- The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset were: **vehicle length**, **ground clearance**, and **intercept**.
- The slope of the model is not considered to be zero, as the p-value (5.35e-11) is sufficiently small to fail to reject the null hypothesis.
- This linear model effectively predicts mpg of MechaCar prototypes for this particullar dataset (r-sqaured=0.715), however this may be a case of overfitting as only 3 of the 6 coefficients were statistically significant.