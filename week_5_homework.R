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

#Attempt #2, started fresh with a bit of help from the answer key and the course materials.

library(tidyverse)
surveys<-read.csv("data/portal_data_joined.csv")
head(surveys)
surveys_wide <- surveys %>% filter(!is.na(hindfoot_length)) %>% group_by(genus,plot_type) %>% summarize(mean_hindfoot_length=mean(hindfoot_length)) %>% pivot_wider(names_from="plot_type",values_from="mean_hindfoot_length") %>% arrange(Control)
#How can I separate a long line of code into two lines?
head(surveys_wide)

#Problem 2

surveys<-read.csv("data/portal_data_joined.csv")
summary(surveys$weight)
surveys<-surveys%>%filter(!is.na(weight))
summary_weight[[1]]
summary_weight[[2]]
summary_weight[[5]]
summary_weight<-summary(surveys$weight)
weight<-surveys$weight
#Also, instructions were unclear of the fact that I need to fully do this with ifelse and then repeat with case_when
surveys$weight_cat<-ifelse(surveys$weight<=summary_weight[[2]],"small",
                                     ifelse(surveys$weight>summary_weight[[2]] 
                                            & surveys$weight<summary_weight[[5]],"medium","large"))
head(surveys)
weights<-surveys%>%mutate(weight_cat=case_when(weight<=summary_weight[[2]]~"small",weight>summary_weight[[2]] & weight<summary_weight[[5]]~"medium",T~"large"))
head(weights)
#An attempt to do this with case_when only
#surveys$weight_cat<-surveys%>%filter(!is.na(weight)%>%mutate(weight_cat=case_when(weight>=48.00~"large",weight > 20.00 && weight < 48.00 ~ "medium",weight)))



