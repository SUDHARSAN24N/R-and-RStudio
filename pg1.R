numbers <- c(1,2,3,4,5,6,7,8,9,10)
sum_even <- function(vec){
  total <- 0
  for(num in vec){
    if(num%%2==0){
      total <- total + num
    }
  }
  return(total)
}
even_sum <- sum_even(numbers)
cat("The sum of even no is:",even_sum,"\n")

