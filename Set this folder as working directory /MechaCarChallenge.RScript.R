#MPG Regression

mechatable <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~vehicle_length  + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechatable) #generate multiple linear regression model
summary(lm(mpg ~vehicle_length  + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechatable)) #generate summary statistics


#Suspension Coil Summary

sustable <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
sustable %>% summarize(Mean_PSI=mean(PSI),median(PSI),sd(PSI)) # Mean, Median & Standard Deviation
var(sustable$PSI) #Variance


#Suspension Coil T-Test

t.test(sustable$PSI,mu=1500) #compare sample versus population means