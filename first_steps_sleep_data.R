#this is to import the data from Github. Let us always reference 
#the data as sleep_data. Also I made a package section where we can add 
#the packages that we use. This will help, because then we can just 
#include the below sections in every new file and it will automatically 
#load the data and add all neccessary packages.

install.packages('curl')
library(curl)
library(MASS)
library(ggplot2)

sleep_data <- read.csv(curl("https://raw.githubusercontent.com/yuany-pku/data/master/sleep1.csv"))
View(sleep_data)


