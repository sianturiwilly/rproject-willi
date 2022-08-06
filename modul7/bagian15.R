# Modul 7: Project: Data Scientist Assessment Using R
# Bab 4: Machine Learning with R
# Materi: Model Decision Tree
# Link: https://storage.googleapis.com/dqlab-dataset/suv_data.csv

# install.packages("readr")
# install.packages("caret")
# install.packages("rpart")

library(caret) #pre-defined 
library(rpart) #pre-defined
library(readr) #pre-defined
set.seed(123)  #pre-defined

suv_data <- read_csv("https://storage.googleapis.com/dqlab-dataset/suv_data.csv") #pre-defined

#split data to training & testing set
trainIndex <- createDataPartition(suv_data$Purchased, p=0.8, list=FALSE)
training_set <- suv_data[trainIndex, ]
testing_set <- suv_data[-trainIndex, ]

#build model with decision tree
model_dt <- rpart(Purchased ~.,data=training_set, method="class")
predictions_dt <- predict(model_dt, newdata=testing_set, type = "class")

#evaluate performance with new data/ testing_set
testing_purchased <- factor(testing_set$Purchased) #pre-defined

#show the evaluation result 
evaluation_result <- confusionMatrix(predictions_dt,testing_purchased)
evaluation_result