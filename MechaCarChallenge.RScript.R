library(dplyr) # Load dplyr Library
mechacar_df <- tibble(read.csv("MechaCar_mpg.csv")) # Import MechaCar_mpg.csv
linear_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
                     ground_clearance + AWD, data = mechacar_df)# Create linear model
summary(linear_model) # Determine the p-value and the r-squared value

suspension_coil_df <- read.csv("Suspension_Coil.csv") # Import Suspension_Coil.csv
# Create the total_summary dataframe
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), 
    Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) # Create total summary
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
    Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) # Create Lo Summary
t.test(suspension_coil_df$PSI, mu = 1500) # Perform t-test
lot1_psi <- subset(suspension_coil_df, Manufacturing_Lot == "Lot1")$PSI # Lo1 Subset
t.test(lot1_psi, mu = 1500) # Perform t-test Lot 1
lot2_psi <- subset(suspension_coil_df, Manufacturing_Lot == "Lot2")$PSI # Lo2 Subset
t.test(lot2_psi, mu = 1500) # Perform t-test Lot 2
lot3_psi <- subset(suspension_coil_df, Manufacturing_Lot == "Lot3")$PSI # Lo3 Subset
t.test(lot3_psi, mu = 1500) # Perform t-test Lot 3
