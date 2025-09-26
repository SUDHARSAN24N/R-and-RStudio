install.packages("dplyr")
library(dplyr)
#summary of dataset in package 
head(mtcars)
#finding distance matrix
distance_mat<-dist(mtcars,methos='euclidean')
distance_mat

#Fitting Hierarchical clustering Model 
#to trainind dataset
set.seed(240)#Settind seed
Hierar_cl<-hclust(distance_mat,method="average")
Hierar_cl

#plotting dendrogram 
plot(Hierar_cl)

#choosind no of clusters
#cutting tree byu height

abline(h=110,col="green")

#cutting tree by no.of clusters
 fir<- cutree(Hierar_cl,k=3)
 fit
 table(fit)
 rect.hclust(Hierar_cl,k=3,border="green")