# Materi: Pemodelan/Modelling

train2 = train
# Setting the reference
train2$REKOMENDASI_TINDAK_LANJUT = relevel(train2$REKOMENDASI_TINDAK_LANJUT, ref = "Angsuran Biasa")
# training model
require(nnet)

# training the multinomial mode
multinom_model = multinom(REKOMENDASI_TINDAK_LANJUT ~ ., data=train2)

# checking model
summary(multinom_model)

# converting the coefficients to odds by taking the exponential of the coefficients
exp(coef(multinom_model))

head(round(fitted(multinom_model), 2))

# predicting the values for train dataset
train2$ClassPredicted = predict(multinom_model, newdata = train2, "class")
train_prob = predict(multinom_model, newdata = train2, "probs")
df = train_prob
df$max = apply(df,1,max)

train2$score = df$max
test_prob = predict(multinom_model, newdata = test, "probs")
df2 = test_prob
df2$max = apply(df2,1,max)

# Building classification table
tab_train = table(train2$REKOMENDASI_TINDAK_LANJUT, train2$ClassPredicted)
round((sum(diag(tab_train))/sum(tab_train))*100,4)

test$ClassPredicted = predict(multinom_model, newdata = test, "class")
test$score = df2$max
tab_test = table(test$REKOMENDASI_TINDAK_LANJUT, test$ClassPredicted)
round((sum(diag(tab_test))/sum(tab_test))*100,4)