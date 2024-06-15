x<-c(30,40,50,65,70,75)
y<-c(70,65,60,55,50,40);x

plot(x,y)
abline(lm(y~x))
cor(x,y)


x<-c(53,59,72,43,93,35,55,70)
y<-c(35,49,63,36,75,28,38,76)
sqrt(9)

n<-length(ms);n
# r<-((n*sum(x*y))-sum(x)*sum(y)/sqrt(n*sum(x^2)-(sum(x)^2))*sqrt(n*sum(y^2)-(sum(y^2))))
# r=(n*sum(x*y))-sum(x)*sum(y)/sqrt(n*sum(x*x)-sum(x)^2)*sqrt(n*sum(y*y)-sum(y)^2)

r=(n*sum(x*y)-sum(x)*sum(y))/(sqrt(n*sum(x*x)-(sum(x)^2)))*sqrt(n*sum(y*y)-(sum(x)^2)))
r

cor(ms,me)#by default pearson

?cor


x<-c(15,12,16,13,17,14,18,11)
y<-c(17,14,20,25,23,24,22,21)
n<-length(x)
a<-sum(rank(x))
b<-sum(rank(y))
#r=1-(6(sum((rank(x)-rank(y))^2))/n(n^2-1));r
r<-1-6(a-b)^2/n(n*n-1);r


xx<-c(84,91,72,68,87,78)
am<-mean(x);am

i<-c(16,20,30,35,45,50)
n<-c(2,5,4,6,2,1)
freq<-i*n;freq
am=sum(freq)/sum(n);am

a<-c(60,63,66,69,72)
b<-c(62,65,68,71,74)
f=c(5,18,42,27,8)
x<-(a+b)/2;x
df<-data.frame(a,b,x);df
freq=(x*f)
am=sum(freq)/sum(f);am

v<-c(35,49,225,50,30,65,40,55,52,76,48,325,47,32,60)
v=
sor<-sort(v);sor
len<-length(sor);len

if(len%%2==0){
  n1=(len/2)
  n2=((len/2)+1)
  p1=sor[n1];p1
  p2=sor[n2];p2
  res=(p1+p2)/2;res

}else{
  pos<-(len+1)/2;pos

  val<-sor[pos];val
}
median(v)

?cumsum
x<-c(10,15,25,40,60,75)
f<-c(3,4,6,17,12,7)
fre<-data.frame(X=x,F=f,lt=cumsum(f));fre
N=fre[6,3]
 

obs=(N+1)/2
obs

for (i in fre$lt) {
  if(i>=obs){
    print(i)
    break
  }
}
fre$X[which(fre$lt==i)]







# getwd()
# setwd('D:/PG-DBDA CDAC/R/Day6')

data=read.csv('sales_data.csv')
View(data)

install.packages('tidyverse')
library(tidyverse)
summary(data)
 
data %>%
  group_by(Country, Customer_Gender)%>%
  filter(Product_Category == 'Accessories')%>%
  summarise(sum(Order_Quantity))
      
data%>%
  group_by(Country)%>%
  fiter




