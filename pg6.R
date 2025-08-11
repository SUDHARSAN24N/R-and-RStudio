x<-10
if(x>0){
  cat(" x is positive \n")
  }else{
  cat("z is zero or negative\n")
}
cat("\n printing no using for loop:\n")
for(i in 1:5){
  cat(i," ")
}
cat("\n\n while loop (counting upto 3):\n")
count <- 1
while (count<=3){
  cat("COUNT:",count,"\n")
  count <-count +1;
  
}
cat("\n Repeat loop example:\n")
y<-1
repeat{
  cat("Y=",y,"\n")
  y<- y+1
  if(y>3){
    break
  }
}
cat("\n switch statement eg:\n")
day<-3
day_name<-switch(day,"sunday","Monday","Tuesday","Wednesday","Thursday","Friday","saturday")
cat("Day 3 is: ",day_name,"\n")