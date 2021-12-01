#************************#
#Week 7 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#November 30, 2021
#************************#
library(tidyverse)
gapminder <- read_csv("https://gge-ucd.github.io/R-DAVIS/data/gapminder.csv")

Great.plot<-gapminder%>%select(continent,country,year,pop)%>%filter(year>2000)%>%pivot_wider(names_from=year,values_from=pop)%>%
  mutate(pop_diff=`2007`-`2002`)
Another.great.plot<-Great.plot%>%mutate(pop_diff="2007"-"2002")
head(Great.plot)
