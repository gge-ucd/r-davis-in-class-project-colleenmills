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
#Would be helpful to have more tally and arrange examples online. Had to take a peek at the answers to help here.
surveys<-read.csv("data/portal_data_joined.csv")
head(surveys)
where_are_NAs <- surveys %>% filter(is.na(weight)) %>% group_by(species) %>% tally()
where_are_NAs
#where_are_NAs <- surveys %>% filter(is.na(weight)) %>% group_by(species) %>% summarize(max_NAs_species = max(NAs))
where_are_NAs <- surveys %>% filter(is.na(weight)) %>% group_by(genus) %>% tally() %>% arrange(desc(n))
where_are_NAs
where_are_NAs <- surveys %>% filter(is.na(weight)) %>% group_by(plot_type) %>% tally() %>% arrange(desc(n))
where_are_NAs
where_are_NAs <- surveys %>% filter(is.na(weight)) %>% group_by(plot_id) %>% tally() %>% arrange(desc(n))
where_are_NAs %>% print(n=24)

#Was very glad to have the answer key here. Was very close, but had things out of order
surveys <- surveys %>% filter(!is.na(weight)) %>% group_by(species,sex) %>% mutate(avg_weight=mean(weight))
surveys
surveys_avg_weight<-select(surveys,species,sex,weight,avg_weight)
surveys_avg_weight

surveys_avg_weight <- surveys_avg_weight %>% mutate(above_average = (weight > avg_weight)) %>% print(n=60)
surveys_avg_weight
