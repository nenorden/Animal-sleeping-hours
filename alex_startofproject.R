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

# check for outliers and look at the data:
 
ggplot(sleep_data, aes(sleep_data$sleep)) + geom_histogram() + stat_bin(bins=15)

rownames(sleep_data)<- sleep_data[,1]
used_data <- sleep_data[,c(4:5,7,8,10,11)]
View(used_data)

missing_values<- used_data[rowSums(is.na(used_data)) > 0,]
View(missing_values)


number_of_rows_with_missing_values <- length(missing_values[,1])
number_of_features= length(missing_values[1,]) -1

N_mis_values_per_feature <- vector("numeric",5)


for (i in 1:number_of_features+1) {
  N_mis_values_per_feature[i]= sum(is.na(missing_values[,i]))
  
}

N_mis_values_per_feature

#starting data exploration

View(sleep_data)
summary(sleep_data)

used_data = na.omit(used_data)
ggplot(used_data, aes(x=brain, y=body)) + geom_point() +geom_smooth(method=lm)

summary(used_data)
cor(used_data)

data_fit( )
