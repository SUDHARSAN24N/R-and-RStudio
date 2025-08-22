data(iris)
set.seed(123)
Kmeans_result<-kmeans(iris[,1:4],centers = 3)
print(K_means_result)
iris$cluster<-Kmeans_result$cluster
plot(iris[,1:2],col=iris$cluster,main="K_means clustering",xlab="sepal length",ylab="sepal width",pch=19)