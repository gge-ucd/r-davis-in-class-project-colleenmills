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
library(tidyverse) #Reading in the tidyverse library
surveys<- read.csv("data/portal_data_joined.csv") #Reading in the data
?select
surveys_base_in_progress<-select(surveys,species_id,weight,plot_type)#Selected specified columns only
surveys_base_in_progress
surveys_base<-surveys_base_in_progress[1:60,] #Pulled up first 60 rows
surveys_base
str(surveys_base)
head(surveys_base)
tail(surveys_base)
?factor
surveys_base[,'species_id']<-as.factor(surveys_base[,'species_id']) #Convert species_id to factors
surveys_base[,'plot_type']<-as.factor(surveys_base[,'plot_type']) #Convert plot_type to factors
#A factor takes various variable names and turns them into numerical categories
str(surveys_base)
surveys_base <- surveys_base %>% filter(!is.na(weight)) #Filter out NA's in the weight column
surveys_base
#CHALLENGE
challenge_base<-surveys_base %>%filter(weight>150) #Select only weights that are greater than 150 g
challenge_base
