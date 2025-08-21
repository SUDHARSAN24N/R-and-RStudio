transactions <- list(
  c("milk","bread","butter"),
  c("bread","butter"),
  c("milk","bread"),
  c("milk","butter"),
  c("bread","butter","jam"),
  c("milk","bread","butter","jam")
)

#thresholds
min_support<-0.3
min_conf<-0.7

#support func
support<- function(items,trans){
  sum(sapply(trans,function(t)all(items %in% t)))/length(trans)
}

#Unique items
items<-unique(unlist(transactions))

cat("frequent 1-itemsets:\n")
for(i in items)
{
  s<-support(i,transactions)
  if(s>=min_support)
    cat(sprintf("{%s}support:%.2f\n",i,s))
}

cat("\n Association Rules:\n")
for(i in 1:(length(items)-1))
{
  for(j in (i+1):length(items))
  {
    A<- items[i];B<-items[j]
    sAB<-support(c(A,B),transactions)
    cA_B<-sAB/support(A,transactions)
    cB_A<-sAB/support(B,transactions)
    if(sAB>=min_support && cA_B>=min_conf)
       cat(sprintf("{%s}=>{%s}(support:%.2f,conf:%.2f)\n",A,B,sAB,cA_B))
     if(sAB>=min_support && cB_A>=min_conf)
      cat(sprintf("{%s}=>{%s}(support:%.2f,conf:%.2f)\n",B,A,sAB,cB_A))
  }
}
