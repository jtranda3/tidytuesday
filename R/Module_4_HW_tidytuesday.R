#This code is looking at the Video Game Dataset in the tidytuesday repository.
#The Video Game Dataset has information on video game titles, developers, publishers.
#It also contains data such as release date, price, average and median play time for each game.

#I am using this dataset to learn if total time played has a correlation with the metascores of video games.

library(tidyverse)
library(ggthemes)
library(ggplot2)
ggplot2::ggplot()

#retrieving the data on video games from 
video_games <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-07-30/video_games.csv")

#looking at the data frame
view(video_games) 

#plotting data into bar grapgh
ggplot() +
  geom_col(data = video_games, mapping = aes(x = metascore, y = average_playtime)) +
  theme_few() +
  labs(x = "Metascore Rating", y = "Total Average Play time (minutes)", title = "Metascores vs. Total Average Play time")

#saving the new graph to my directory
ggsave("Module4HW.pdf", scale = 1, width = 11, height = 8, units = c("in"))

