#matrix operation
mat <- matrix(1:9,nrow=3,ncol=3)
mat_add<-mat+10
mat_transpose<-t(mat)
mat_multiply<-mat%*%mat
cat("matrix:\n")
print(mat)
cat("\n matrix + 10:\n")
print(mat_add)
cat("\n Tranpose of matrix :\n")
print(mat_transpose)
cat("\n Matrix multipled by itself:\n")
print(mat_multiply)
#Array Operation
arr<-array(1:18,dim=c(3,3,2))
element<-arr[2,2,1]
slice<-arr[,,2]
cat("\n 3D Array:\n")
print(arr)
cat("\n Element at [2,2,1]:",element,"\n")
cat("\n Slice of 3rd dimension (layer 20):\n")
print(slice)
#factor Operation 
colors<-factor(c("red","green","blue","green","red","blue"))
factor_levels<-levels(colors)
factor_summary<-summary(colors)
cat("\n factor (colors):\n")
print(colors)
cat("\n levels of factor:\n")
print(factor_levels)
cat("\n summary of factor:\n")
print(factor_summary)