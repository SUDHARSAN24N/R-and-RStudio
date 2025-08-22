data(iris)
dist_matrix<-dist(iris[,1:4])
hc<-hclust(dist_matrix,method="complete")
plot(hc,main="Hierarchical clustering",labels=FALSE)
clusters<-cutree(hc,3)
print(clusters)
iris$cluster<-clusters