# Modul 7: Project: Data Scientist Assessment Using R
# Bab 4: Machine Learning with R
# Materi: Membuat Model Sederhana
# Link: https://storage.googleapis.com/dqlab-dataset/electric_bill.csv

# install.packages("readr")
library(readr)
electric_bill <- read_csv("https://storage.googleapis.com/dqlab-dataset/electric_bill.csv")
model <- lm(amount_paid ~ num_people + housearea, data = electric_bill)

model