library(dplyr)
# deliverable 1
mechacar_mpg <- read.csv(file='C:\\Users\\etdir\\Documents\\UoW_Bootcamp\\Module-15\\15-MechaCar_Statistical_Analysis\\data\\MechaCar_mpg.csv')
mechacar_mpg
mechacar_columns
lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
model <- lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
summary(model)
#deliverable 2
suspension_coil_data <- read.csv(file='C:\\Users\\etdir\\Documents\\UoW_Bootcamp\\Module-15\\15-MechaCar_Statistical_Analysis\\data\\Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_coil_data %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
