############## Deliverable 1 ################

library(tidyverse)
library(dplyr)

#4 import and read in MechaCar_mpg.csv
data_mpg <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

colnames(data_mpg)

mpg_matrix <-as.matrix(data_mpg[,c("vehicle_length", "vehicle_weight", "spoiler_angle", "ground_clearance", "AWD", "mpg")])

correlation_matrix <- cor(mpg_matrix)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data_mpg))

############### Deliverable 2 ###############

coil_data <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

summary_statistics <- coil_data %>% summarise(mean = mean(PSI),
                                       median = median(PSI),
                                       variance=var(PSI),
                                       SD = sd(PSI),
                                       n = n())

Lot_Summary <- coil_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance=var(PSI),
            SD = sd(PSI),
            n = n(),
            .groups = 'keep')

############### Deliverable 3 #################
t.test(coil_data$PSI, mu=1500)

t.test(subset(coil_data,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(coil_data,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(coil_data,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
