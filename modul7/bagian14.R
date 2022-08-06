# Modul 7: Project: Data Scientist Assessment Using R
# Bab 4: Machine Learning with R
# Materi: Training dan Testing
# Link: https://storage.googleapis.com/dqlab-dataset/iris.csv

# install.packages("readr")
# install.packages("caret")

library(readr)
library(caret)
set.seed(123)
iris <- read_csv("https://storage.googleapis.com/dqlab-dataset/iris.csv")

trainIndex <- createDataPartition(iris$Species, p=0.8, list=FALSE)
training_set <- iris[trainIndex, ]
testing_set <- iris[-trainIndex, ]

dim(training_set)
dim(testing_set)