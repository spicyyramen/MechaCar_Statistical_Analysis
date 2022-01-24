### Deliverable 1 ###
# load dplyr package
library(dplyr)

# import and read-in MechaCar_mpg.csv as dataframe
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# perform linear regression, passing all 6 variables(columns) + add dataframe as data parameter
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_df)

# generate summary statistics on model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_df))


### Deliverable 2 ###
# read in suspension_coil.csv as a table
coil_table <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# create total_summary dataframe using summarize() to generate mean, median, variance, & stdev of PSI
total_summary <- coil_table %>% 
  summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# create lot_summary dataframe using group_by() and summarize()
# to group each manufact lot by the mean,med,var,& stdev of the coil's PSI column
lot_summary <- coil_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarise(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

### Deliverable 3 ###

# write a script using t.test() to determine if PSI across all manufacturing lots 
# is statistically different from the population mean of 1500 PSI

# randomly select sample data
sample_tbl <- coil_table %>% sample_n(50)
# compare sample data to population data
t.test(sample_tbl$PSI,coil_table$PSI)

# create tables for each manufacturing lot
lot1 <- coil_table[coil_table$Manufacturing_Lot=="Lot1",]
lot2 <- coil_table[coil_table$Manufacturing_Lot=="Lot2",]
lot3 <- coil_table[coil_table$Manufacturing_Lot=="Lot3",]

# compare each lot to population data
t.test(lot1$PSI,coil_table$PSI)

t.test(lot2$PSI,coil_table$PSI)

t.test(lot3$PSI,coil_table$PSI)

