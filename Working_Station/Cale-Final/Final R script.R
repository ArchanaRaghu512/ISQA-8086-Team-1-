setwd("C:/Users/cale/Desktop/ISQA8086 Final Project")

set1data <- read.csv("Set 1.csv",stringsAsFactors = FALSE)

str(set1data)

head(set1data)

set1data$ï..Type <- factor(set1data$ï..Type)
set1data$DataYears <- factor(set1data$DataYears)
set1data$County <- factor(set1data$County)
set1data$District <- factor(set1data$District)
set1data$School <- factor(set1data$School)
set1data$Agency.Name <- factor(set1data$Agency.Name)
set1data$Subject <- factor(set1data$Subject)
set1data$Grade_Code <- factor(set1data$Grade_Code)
set1data$Category <- factor(set1data$Category)
set1data$AYP.Group <- factor(set1data$AYP.Group)
set1data$Standard.Code <- factor(set1data$Standard.Code)
set1data$Standard <- factor(set1data$Standard)

str(set1data)

head(set1data)

summary(set1data$Standard.Correct.Percent)

install.packages("moments");
library(moments);
skewness(set1data$Standard.Correct.Percent);#Positive Skewness means right tail is longer
kurtosis(set1data$Standard.Correct.Percent);#Positive Kurtosis means more outliers are present

install.packages("ggplot2");
library("ggplot2");

#uses violin  to build density to identified bimodality (more than one mode)

#Splits the data set into District, State, School.
subjectlist <- split(set1data, set1data$Type)
summary(subjectlist)

#1 = District
#2 = School
#3 = State

#Plots the Boxplot and violin plot for State level, by Subject
ggplot(subjectlist[[3]], aes(x=Subject, y=Standard.Correct.Percent))+
  geom_violin(fill='lightgreen')+
  geom_boxplot(fill="orange",width=0.2)+
  ggtitle("State Scores by Subject")+
  labs(x="Subject", y="Score Percentage");

#Plots the Boxplot and violin plot for State level, by Student Demographic
ggplot(subjectlist[[3]], aes(x=AYP.Group, y=Standard.Correct.Percent))+
  geom_violin(fill='lightgreen')+
  geom_boxplot(fill="orange",width=0.2)+
  ggtitle("State Scores by Demographic")+
  labs(x="Student Demographic", y="Score Percentage")+
  scale_x_discrete(labels = abbreviate);


##MATH SCORES

#Plots the Boxplot and violin plot for School level, by Student Demographic For Mathematics
ggplot(subjectlist[[2]][which(subjectlist[[2]]$Subject=="Mathematics"),], aes(x=AYP.Group, y=Standard.Correct.Percent))+
    geom_violin(fill='lightgreen')+
    geom_boxplot(fill="orange",width=0.2)+
    ggtitle("State Scores for Mathematics")+
    labs(x="Student Demographic", y="Score Percentage")+
    scale_x_discrete(labels = abbreviate);


##SCIENCE SCORES

#Plots the Boxplot and violin plot for School level, by Student Demographic For Science
ggplot(subjectlist[[1]][which(subjectlist[[1]]$Subject=="Science"),], aes(x=AYP.Group, y=Standard.Correct.Percent))+
    geom_violin(fill='lightgreen')+
    geom_boxplot(fill="orange",width=0.2)+
    ggtitle("State Scores for Science")+
    labs(x="Student Demographic", y="Score Percentage")+
    scale_x_discrete(labels = abbreviate);


##READING SCORES

#Plots the Boxplot and violin plot for School level, by Student Demographic For Reading
ggplot(subjectlist[[2]][which(subjectlist[[2]]$Subject=="Reading"),], aes(x=AYP.Group, y=Standard.Correct.Percent))+
    geom_violin(fill='lightgreen')+
    geom_boxplot(fill="orange",width=0.2)+
    ggtitle("State Scores for Reading")+
    labs(x="Student Demographic", y="Score Percentage")+
    scale_x_discrete(labels = abbreviate);



##WRITING SCORES

#Plots the Boxplot and violin plot for School level, by Student Demographic For Writing
ggplot(subjectlist[[2]][which(subjectlist[[2]]$Subject=="Writing"),], aes(x=AYP.Group, y=Standard.Correct.Percent))+
    geom_violin(fill='lightgreen')+
    geom_boxplot(fill="orange",width=0.2)+
    ggtitle("State Scores for Writing")+
    labs(x="Student Demographic", y="Score Percentage")+
    scale_x_discrete(labels = abbreviate);
