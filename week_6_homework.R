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

gapminder<-gapminder%>%group_by(continent,year)%>%summarize(mean_lifeExp=mean(lifeExp))%>%ggplot()+geom_point(mapping=aes(x=year,y=mean_lifeExp,color=continent))+geom_line(mapping=aes(x=year,y=mean_lifeExp,color=continent))
                                                                                                              
