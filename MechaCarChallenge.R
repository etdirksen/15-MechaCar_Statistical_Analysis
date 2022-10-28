library(dplyr)

mechacar_mpg <- read.csv(file='C:\\Users\\etdir\\Documents\\UoW_Bootcamp\\Module-15\\15-MechaCar_Statistical_Analysis\\data\\MechaCar_mpg.csv')
mechacar_mpg
mechacar_columns

lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

model <- lm(formula=mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

summary(model)