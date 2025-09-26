# Load required packages
library(ClusterR)
library(cluster)

# Load the dataset
data(iris)

# Check the structure of the dataset 
str(iris)

# Remove the species label
df <- iris[,-5]
head(df)

# Set seed for reproducibility
set.seed(123)

# Fit k-means clustering model
km <- kmeans(df, centers = 3)
km

# Check cluster assignments
km$cluster

# Confusion matrix
cm <- table(iris$Species, km$cluster)
cm

# Basic cluster visualization
plot(df[c("Sepal.Length", "Sepal.Width")],  # fixed typo
     col = km$cluster,
     main = "K-means Clustering",
     xlab = "Sepal Length",
     ylab = "Sepal Width")

# Enhanced visualization using clusplot
clust <- km$cluster
clusplot(df[, c("Sepal.Length", "Sepal.Width")],  # use 'df' instead of 'iris_1'
         clust,
         color = TRUE,
         shade = TRUE,
         labels = 2,
         lines = 0,
         main = "Clusters of iris dataset using k-means",
         xlab = "Sepal Length",
         ylab = "Sepal Width")
