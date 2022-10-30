library(dplyr)
# deliverable 1
mechacar_mpg <- read.csv(file='C:\\Users\\etdir\\Documents\\UoW_Bootcamp\\Module-15\\15-MechaCar_Statistical_Analysis\\data\\MechaCar_mpg.csv')
mechacar_mpg
lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
model <- lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
summary(model)
#deliverable 2
suspension_coil_data <- read.csv(file='C:\\Users\\etdir\\Documents\\UoW_Bootcamp\\Module-15\\15-MechaCar_Statistical_Analysis\\data\\Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_coil_data %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
#deliverable 3
# suspension_coil_data %>% t.test(PSI, mu = mean(PSI), subset=suspension_coil_data %>% filter(Manufacturing_Lot == 'Lot1'))

sample_data <- sample_n(suspension_coil_data,50)
t.test(x=sample_data$PSI, mu=mean(suspension_coil_data$PSI))

filtered_lot_1 <- suspension_coil_data %>% filter(Manufacturing_Lot == 'Lot1')
filtered_lot_2 <- suspension_coil_data %>% filter(Manufacturing_Lot == 'Lot2')
filtered_lot_3 <- suspension_coil_data %>% filter(Manufacturing_Lot == 'Lot3')
sample_n(x = suspension_coil_data, size = 50, replace = TRUE)

?sample()

