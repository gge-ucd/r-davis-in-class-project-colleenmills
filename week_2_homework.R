#************************#
#Week 2 Homework
#
#Author: Colleen Mills
#
#comills@ucdavis.edu
#
#October 5, 2021
#************************#

#Week 2 Homework
set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2

#Problem 1
hw22<-hw2[!is.na(hw2)]
hw22
prob1<-hw22[c(hw22>=14 & hw22<=38)]
prob1

#Problem 2
times3<-3*prob1
times3
plus10<-10+times3
plus10

#Problem 3
i <- 1
ivector<-c(i)
x<-length(plus10) #23
x

repeat{
  i<-i+2
  if(i>x)
  {break
  }
  ivector<-c(ivector,i)
}
ivector
finalvector<-plus10[c(ivector)]
finalvector
