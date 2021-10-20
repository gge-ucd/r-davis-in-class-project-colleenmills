#************************#
#Week 3 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#October 19, 2021
#************************#

#Homework Week 3
#install.packages("tidyverse")
library(tidyverse)
surveys<- read.csv("data/portal_data_joined.csv")
?select
surveys_base_in_progress<-select(surveys,species_id,weight,plot_type)
surveys_base_in_progress
surveys_base<-surveys_base_in_progress[1:60,]
surveys_base
str(surveys_base)
?factor
surveys_base[,'species_id']<-as.factor(surveys_base[,'species_id'])
str(surveys_base)
surveys_base %>% select(surveys_base,!is.na(weight))

#CHALLENGE
challenge_base<-surveys_base %>%filter(weight>150)
