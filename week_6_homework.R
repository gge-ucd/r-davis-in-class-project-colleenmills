#************************#
#Week 6 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#November 16, 2021
#************************#

library(tidyverse)
gapminder <- read_csv("https://gge-ucd.github.io/R-DAVIS/data/gapminder.csv")
head(gapminder)

#Problem 1
gapminder<-gapminder%>%group_by(continent,lifeExp)%>%summarize(mean_lifeExp=mean(lifeExp))%>%ggplot(data=gapminder,mapping=aes(x=continent,y=mean_lifeExp)) + geom_point()
