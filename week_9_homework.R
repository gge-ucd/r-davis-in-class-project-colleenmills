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

