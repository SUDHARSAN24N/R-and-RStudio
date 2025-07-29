v1 <- c(10,20,30,40,50)
v2 <- c(1,2,3,4,5)
sum_vec <- v1+v2
diff_vec <- v1-v2
prod_vec <- v1*v2
div_vec <- v1/v2
third_element <- v1[3]
subset_vec <- v1[2:4]
greather_than_25 <- v1[v1>25]
cat("v1:",v1,"\n")
cat("v2:",v2,"\n")
cat("sum:",sum_vec,"\n")
cat("subtract:",diff_vec,"\n")
cat("product:",prod_vec,"\n")
cat("Divison",div_vec,"\n")
cat("subset of v1(2 to 4)",subset_vec,"\n")
cat("values in v1>25:",greather_than_25,"\n")
