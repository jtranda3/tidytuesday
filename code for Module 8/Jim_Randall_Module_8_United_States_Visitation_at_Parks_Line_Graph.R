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

b <- parks %>%
  select(year, region, unit_type, state, visitors) %>%
  filter(year != "Total")
View(b)
  
    
#View(b)
b %>%
  ggplot(mapping = aes(x = visitors, y = unit_type)) +
    geom_line(aes(colour = region)) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 0)) +
    labs(title = "Total Visitations to Parks in the United States from 1904 to 2016", 
         x="Total Number of People visiting Parks", 
         y="Types of Parks")
  
  

