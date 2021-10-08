surveys<- read.csv("data/portal_data_joined.csv")
surveys

head(surveys)
nrow(surveys)
ncol(surveys)
head(surveys)
tail(surveys)
View(surveys)
colnames(surveys)
rownames(surveys)
str(surveys)
summary(surveys)
head(surveys,10)
tail(surveys,10)
surveys[1,2]
surveys[2,3]
surveys$species
unique(surveys$species)
length(unique(surveys$species))
table(surveys$species)
sum(!duplicated(surveys$species))
levels(surveys$species)
?factor()
species_factor<-factor(surveys$species)
typeof(species_factor)
class(species_factor)
levels(species_factor)

surveys_200<-data.frame(surveys[200,])
surveys_200
surveys_last<-data.frame(surveys[nrow(surveys),])
surveys_last

surveys_length<-nrow(surveys)
surveys_length
class(surveys_length)                 
surveys_middlerow<-surveys_length/2
surveys_middlerow
middlerow->surveys[surveys_middlerow,]
