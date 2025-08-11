transactions <- list(
  c("milk","bread","butter"),
  c("bread","butter"),
  c("milk","bread"),
  c("milk","butter"),
  c("bread","butter","jam"),
  c("milk","bread","butter","jam")
)
min_support<-0.3
min_conf<-0.7
support<- function (item,trans){
  sum(supply(trans,functions(t)all(items%\n%\t))),
  length(trans)
}
items<-unique(unlist(transactions))
cat("frequent 1-itemsets:\n")
for(i in items)
{
  s<-support(i,transactions)
  if(s>=min_support)
    cat(printf("{%s}support:%2f\n",i,s))
}
cat("\n Association Rules:\n")
for(i in 1:(length(items)-1))
{
  for(j in (i+1):length(items))
  {
    A<- items[1];B<-items[j]
    AB<-support((A,B),transactions)
    A-B<-SAB/support(A,transactions)
    if(SAB>=min_support&&(A-B>=min_conf)
       cat(sprintf("{%s}=>{%s}(support:%2f,con:%2f)\n",A,B,SAB,(A-B))))
    
  }
}