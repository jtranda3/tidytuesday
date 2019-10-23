#Jim Randall
#Module 8 Homework
#Graph 1
library(tidyverse)
library(ggplot2)
library(dplyr)
library("RColorBrewer")

parks <- read.csv("data/national_parks.csv")
View(parks)
summary(parks)

 c <- parks %>%
  select(year, region, unit_type, state, visitors) %>%
  filter(state == "NC") %>%
  filter(year != "Total")
View(c)
  
a <- c %>%
  ggplot(mapping = aes(x = year, y = visitors)) +
    geom_area(aes(color = unit_type)) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 90)) +
    labs(title = "Park Visitation in North Carolina from 1904 to 2016", 
         x="Year", 
         y="Number of People visiting Parks")
    
a + scale_color_brewer(palette = "Set3")

  

