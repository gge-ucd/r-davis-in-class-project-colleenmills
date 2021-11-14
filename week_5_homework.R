#************************#
#Week 5 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#October 25, 2021
#************************#

#Week 5 Homework

#Problem 1

#This was attempt #1. Still working through why this didn't work.

#library(tidyverse)
#surveys<-read.csv("data/portal_data_joined.csv")
#surveys2<-surveys3%>%filter(!is.na(hindfoot_length))
#surveys2$hindfoot_length
#surveys3<-surveys2%>%group_by(genus,hindfoot_length)%>%mutate(avg_hindfoot = mean(hindfoot_length))
#surveys_wide<-surveys3%>%pivot_wider(names_from="plot_type",values_from="avg_hindfoot")
#surveys_wide$`Long-term Krat Exclosure`
#surveys_wide$`Short-term Krat Exclosure`
#surveys_wide$`Rodent Exclosure`

#Attempt #2 with a bit of help from the answer key and the course materials.

library(tidyverse)
surveys<-read.csv("data/portal_data_joined.csv")
head(surveys)
surveys_wide <- surveys %>% filter(!is.na(hindfoot_length)) %>% group_by(genus,plot_type) %>% summarize(mean_hindfoot_length=mean(hindfoot_length)) %>% pivot_wider(names_from="plot_type",values_from="mean_hindfoot_length") %>% arrange(Control)
#How can I separate a long line of code into two lines?
head(surveys_wide)

#Problem 2





