emp<- data.frame(
  ID=1:4,
  Name=c("alice","bob","charlie","ethan"),
  Department=c("HR","IT","Finance","HR"),
  Salary=c(50000,60000,55000,48000),
  Exp=c(2,4,3,1),
  stringsAsFactors = FALSE
) 
cat("original Employee data:\n");
print(emp)
cat("\nEmployees with salary > 55000:\n")
print(subset(emp,Salary>55000))
emp$Bonus<-emp$Salary*0.05
cat("\n Data with bonus column :\n")
print(emp)
cat("\n Average salary by department:\n")
print(aggregate(Salary ~ Department,emp,mean))
cat("\n Employee sorted by Experience (descending):\n")
print(emp[order(-emp$Exp),])