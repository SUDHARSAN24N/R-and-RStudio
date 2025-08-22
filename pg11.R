library(caret)
library(randomForest)
data(iris)
head(iris)

set.seed(123)

trainIndex<-createDataPartition(iris$Species,p=0.8,list=FALSE)
trainData<-iris[trainIndex,]
testData<-iris[-trainIndex,]

model<-randomForest(Species ~.,data=trainData)
predictions <- predict(model,newdata=testData)
confMatrix<-confusionMatrix(predictions,testData$Species)
print(confMatrix)