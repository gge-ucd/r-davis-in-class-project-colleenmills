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
