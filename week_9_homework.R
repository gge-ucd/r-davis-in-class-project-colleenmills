#************************#
#Week 9 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#December 01, 2021
#************************#
#Notes
#brw = Barrow, Alaska - Alaska Standard Time (GMT-9)
#mlo = Mauna Loa, Hawaii - Hawaiian-Aleutian Standard Time (GMT-10)
#smo = American Samoa - Samoa Standard Time (GMT-11)
#sum = Summit, Greenland - (GMT-3)
#thd = Trinidad Head, California - Pacific Standard Time (GMT-8)
#spo = South Pole, Antarctica

#Missing Values
#6: Wind Direction -999
#7: Wind Speed -999.9
#8: Wind Steadiness Factor -9
#9: Barometric Pressure -999.90
#10: Temperature at 2 Meters -999.9
#11: Temperature at 10 Meters -999.9
#12: Temperature at Tower Top -999.9
#13: Relative humidity -99
#14: Precipitation intensity -99

install.packages('lubridate')
library(lubridate)
mloa <- read_csv("https://raw.githubusercontent.com/gge-ucd/R-DAVIS/master/data/mauna_loa_met_2001_minute.csv")

head(mloa)
mloa[60,]
View(mloa)

#Remove missing values in rel_humid, temp_C_2m, and windSpeed_m_s
mloa2<-mloa%>%filter(rel_humid!=-99,temp_C_2m!=-999.99,windSpeed_m_s!=-999.9)
head(mloa2)

#Generate column called "datetime" using year, month, day, hour24, and min columns
mloa2$datetime<-paste(mloa2$year," ",mloa2$month," ",mloa2$day," ",mloa2$hour24," ",mloa2$min,sep="")
mloa2$datetime

#Create new column called "datetimeLocal" that converts times to Honolulu/Pacific time
mloa2$datetime<-ymd_hm(mloa2$datetime)
mloa2$datetime
mloa2$datetimeLocal<-as_datetime(mloa2$datetime,tz="Pacific/Honolulu")
mloa2$datetimeLocal

#Calculate mean temperature each month using temp_C_2m and the datetimeLocal column
?month()
months<-month(mloa2$datetimeLocal)
hours<-hour(mloa2$datetimeLocal)
#mloa2$meanMonthlyTempByHour<-mloa2%>%group_by(months)
mloa3<-mloa2%>%group_by(month(mloa2$datetimeLocal),hour(mloa2$datetimeLocal))%>%mutate(mean_temp=mean(temp_C_2m))
head(mloa3)
mloa3
mloa2
