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
library(tidyverse)
surveys<-read.csv("data/portal_data_joined.csv")
surveys2<-surveys3%>%filter(!is.na(hindfoot_length))
surveys2$hindfoot_length
surveys3<-surveys2%>%group_by(genus,hindfoot_length)%>%mutate(avg_hindfoot = mean(hindfoot_length))
surveys_wide<-surveys3%>%pivot_wider(names_from="plot_type",values_from="avg_hindfoot")
surveys_wide$`Long-term Krat Exclosure`
surveys_wide$`Short-term Krat Exclosure`
surveys_wide$`Rodent Exclosure`
