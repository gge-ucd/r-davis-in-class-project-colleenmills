#************************#
#Week 4 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#October 21, 2021
#************************#

#Homework Week 4
library(tidyverse)
surveys<-read.csv("data/portal_data_joined.csv")
surveys
surveys <- surveys %>% filter(weight >= 30 & weight <= 60) %>% head()
surveys
surveys <- read.csv("data/portal_data_joined.csv") %>% filter(!is.na(weight))
surveys
biggest_critters <- surveys %>% group_by(species_id,sex) %>% summarize(max_weight = max(weight))
biggest_critters
biggest_critters <- surveys %>% group_by(species_id,sex) %>% summarize(min_weight = min(weight), max_weight = max(weight))
biggest_critters
?arrange
?tally
where_are_NAs <- tally(surveys,is.na(weight))
where_are_NAs

surveys <- surveys %>% filter(!is.na(weight)) %>% group_by(species,sex) %>% mutate(avg_weight=mean(weight))
surveys
surveys_avg_weight<-select(surveys,species,sex,weight,avg_weight)
surveys_avg_weight
