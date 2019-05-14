#week 7 exercises

#read in fish data
fish_data <- read.csv("Gaeta_etal_CLC_data_1.csv")

#create new categorical size column
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

#change category cut-off size
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

# remove rows that have scalelength less than 1 mm from fish_data_cat
fish_data_cat = fish_data %>%
  filter(scalelength > 1)
#fish_data_cat now has 4,029 rows!


#### scatterplot
library(ggplot2)

#create scatterplot: x axis - length, y-axis scalelength
ggplot(data = fish_data_cat) +
  geom_point(mapping = aes(x=length, y=scalelength, color = lakeid))
