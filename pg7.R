library(ggplot2)
data<- data.frame(Category =rep(c("A","B","c"),each=10),
                  Value=c(rnorm(10,mean=5),rnorm(10,mean=7),rnorm(10,mean=6)),
                  Group=rep(c("G1","G2"),15)
                  )
#scatter plot
p1<-ggplot(data,aes(x=Category,y=Value,color=Group))+
  geom_jitter(width=0.2,size=3)+
  labs(title="scatter plot",x="Category",y="Value")+
  theme_minimal()
print(p1)
#box plot
p2<-ggplot(data,aes(x=Category,y=Value,fill=Category))+
  geom_boxplot(alpha=0.6)+
  labs(title="box plot",x="Category",y="Value")+
  theme_classic()
print(p2)
#Histogram
p3<-ggplot(data,aes(x=Value,fill=Group))+
  geom_histogram(binwidth=0.5,alpha=0.7,position="identity")+
  labs(title="Histogram",x="Value",y="Count")+
  theme_light()
print(p3)