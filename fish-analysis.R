#week 7 exercises

#read in fish data
fish_data <- read.csv("Gaeta_etal_CLC_data.csv")

#create new categorical size column
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))
