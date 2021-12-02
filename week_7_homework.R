#************************#
#Week 7 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#November 30, 2021
#************************#
library(tidyverse)
gapminder <- read_csv("https://gge-ucd.github.io/R-DAVIS/data/gapminder.csv")
#install.packages("cowplot")
library(cowplot)

Great.plot<-gapminder%>%select(continent,country,year,pop)%>%filter(year>2000)%>%pivot_wider(names_from=year,values_from=pop)%>%
  mutate(pop_diff=`2007`-`2002`)
head(Great.plot)


Africa.plot<-Great.plot%>%filter(continent=="Africa")%>%ggplot(aes(x=reorder(country,pop_diff),y=pop_diff))+
  geom_bar(stat='identity',width=0.5,fill="purple",color="purple")+
  theme(axis.text.x=element_text(angle=45,vjust=1),axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title=element_text(hjust=0.5))+
  ggtitle("Africa")+theme_light()
Africa.plot
Americas.plot<-Great.plot%>%filter(continent=="Americas")%>%ggplot(aes(x=reorder(country,pop_diff),y=pop_diff))+
  geom_bar(stat='identity',width=0.5,fill="blue",color="blue")+
  theme(axis.text.x=element_text(angle=45,vjust=1),axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title=element_text(hjust=0.5))+
  ggtitle("Americas")+theme_light()
Americas.plot
Asia.plot<-Great.plot%>%filter(continent=="Asia")%>%ggplot(aes(x=reorder(country,pop_diff),y=pop_diff))+
  geom_bar(stat='identity',width=0.5,fill="green",color="green")+
  theme(axis.text.x=element_text(angle=45,vjust=1),axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title=element_text(hjust=0.5))+
  ggtitle("Asia")+theme_light()
Asia.plot
Europe.plot<-Great.plot%>%filter(continent=="Europe")%>%ggplot(aes(x=reorder(country,pop_diff),y=pop_diff))+
  geom_bar(stat='identity',width=0.5,fill="yellow",color="yellow")+
  theme(axis.text.x=element_text(angle=45,vjust=1),axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title=element_text(hjust=0.5))+
  ggtitle("Europe")+theme_light()
Europe.plot
plot_panel<-plot_grid(Africa.plot,Americas.plot,Asia.plot,Europe.plot,nco1=2,nrow=2)
plot_panel


