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

New_Plot<-gapminder%>%group_by(continent,year)%>%summarize(mean_lifeExp=mean(lifeExp))%>%
  ggplot()+
  geom_point(mapping=aes(x=year,y=mean_lifeExp,color=continent))+geom_line(mapping=aes(x=year,y=mean_lifeExp,color=continent))
New_Plot

#Problem 2

#My first guess is that scale_x_log10() creates a log10 scale on the x-axis.
#My other guess is that geom_smooth creates a smooth plot line that is curved rather than creating smooth lines between points

#Now, we shall test it.

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color = continent), size = .25) + 
  scale_x_log10() +
  geom_smooth(method = 'lm', color = 'black', linetype = 'dashed') +
  theme_bw()

?scale_x_log10
?geom_smooth
#It turns out that scale_x_log10() does seem to log transform the x-axis.
#geom_smooth creates what appears to be a best-fit line through the data points

#Challenge

#It was not very clear which code was supposed to be modified here.
#Interesting how we have to use "pop" here when "population" is what comes up.

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color = continent, size=pop)) + 
  scale_x_log10() +
  geom_smooth(method = 'lm', color = 'black', linetype = 'dashed') +
  theme_bw()

#Problem 3
gapminder[475,]
countries_vector<-c("Brazil","China","El Salvador","Niger","United States")
gapminder %>% filter(country %in% countries_vector) %>% ggplot(aes(x=country,y=lifeExp))+
  geom_boxplot(alpha=0)+geom_jitter(alpha=1)

