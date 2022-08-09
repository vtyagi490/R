rm(list=ls(all=T))
setwd("E:/Others/Edwisor")

#Load Libraries
library(rpart)
library(MASS)

#Load practice data
df = birthwt

#Divide the data into train and test
#set.seed(123)
train_index = sample(1:nrow(df), 0.8 * nrow(df))
train = df[train_index,]
test = df[-train_index,]
 
# ##rpart for regression
fit = rpart(bwt ~ ., data = train, method = "anova")

#Predict for new test cases
predictions_DT = predict(fit, test[,-10])

#MAPE
#calculate MAPE
MAPE = function(y, yhat){
             mean(abs((y - yhat)/y))
}

MAPE(test[,10], predictions_DT)

#Error Rate: 10.33
#Accuracy: 89.67

