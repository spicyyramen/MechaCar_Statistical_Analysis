# load dplyr package
library(dplyr)

# import and read-in MechaCar_mpg.csv as dataframe
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# perform linear regression, passing all 6 variables(columns) + add dataframe as data parameter
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_df)

# generate summary statistics on model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_df))
