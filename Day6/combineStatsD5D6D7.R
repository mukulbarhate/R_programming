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




######################    DAY7  ########################
x<-c(1,2,3,4,5,6,7,9,8)
y<-c(1,5,6,7,1,7,8,4,2)

plot(x,y)
abline(lm(y~x))

mtcars
data1 = mtcars

par(mfrow=c(1,2))
lm(wt~mpg,data=data1)
plot(data1$disp,data1$hp,xlab='disp',ylab = 'hp',main = 'DISP VS HP')
abline(lm(hp~disp,data=data1),col='red')
lm(hp~disp,data = data1)

boxplot(data1$disp,data1$hp,xlab='disp',ylab = 'hp',main = 'DISP VS HP')

names(data1)
#par(mfrow = c(1,2))
par(mfrow=c(1,1))
plot(data1$wt,data1$mpg,xlab = "Weight",ylab = "Milage", main = "Weight vs Milage")
abline(lm(mpg~wt,data = data1),col = 'red')
?plot
pairs(data1)
pairs(~wt+mpg+disp+cyl, data = data1)

plot(data1$mpg,data1$wt,xlab = "Milage",ylab = "Weight", main = "Milage vs Weight")
abline(lm(wt~mpg,data = data1),col = 'red')
lm(wt~mpg,data=data1)

par(mfrow=c(1,1))
air<-airquality
View(air)
plot(air$Solar.R,air$Ozone,xlab = 'Solar',ylab = 'ozone')

boxplot(air$Ozone,main="air$Ozone",col = 'red',border = 'red')

x=boxplot(air$Wind,main="air$Ozone",col = 'red',border = 'red')

#wind
x=boxplot(air$Wind,main="air$Ozone",col = 'red',border = 'red')
x$out

boxplot(air$Ozone,main="air$Ozone",col = 'red',border = 'red',horizontal = T)
boxplot(air$Ozone,main="air$Ozone",col = 'red',border = 'red',horizontal = T, notch = T)
boxplot(air,main='air',col = 'green',border = 'red')
boxplot(Temp~Month,data-air, main="TEmp~Month",col='green',border='red')

abline(plot(air$Ozone,air$Day,main="air$Ozone",xlab='indes',clab='ozone',col = 'green',))
a=boxplot(air$Ozone,col = 'green')
a$out   # out outliers

?which
which(air$Ozone==max(air$Ozone))
which(air$Ozone==135)
which(air$Ozone==168)
which(air$Ozone %in% a$out)
var=while (air$Ozone==max(air$Ozone))
var

x<-c(2,2,5,11,21,21,5,11,21,31,31)
table(x)
max(x)
which(x==max(x))
mean(x)
median(x)
mode<-function(x){
  y<-table(x)
  #print(y)
  m<-names(y)[which(y == max(y))]
  print(m)
}
mode(x)  
boxplot(x)

?quantile
quantile(x,c(0.25,0.5,0.75))
#decile 
quantile(x,seq(0.1,1,0.1))

#percentile
quantile(x,seq(0.1,1,0.01))

mtcars
mode(mtcars$qsec)

getwd()
setwd('D:/PG-DBDA CDAC/R/Day6')
data=read.csv('sales_data.csv')
View(data)
plot(data$Customer_Age,main="air$Ozone",col = 'red',border = 'red')

boxplot(data$Customer_Age,main="air$Ozone",col = 'red',border = 'red')
ou=boxplot(data$Customer_Age,main="air$Ozone",col = 'red',border = 'red')
ou$out
which(data$Customer_Age %in% ou$out)

mean(data$Customer_Age)
sprintf("Mean %s",mean(data$Customer_Age))

mode(data$Customer_Age)
sprintf("Mode %s",mode(data$Customer_Age))

median(data$Customer_Age)
sprintf("Mean %s",median(data$Customer_Age))

data$Customer_Age
quantile(data$Customer_Age,c(0.25,0.5,0.75))

#5th decile =50% 35
quantile(data$Customer_Age,seq(0.1,1,0.1))

#For sales_data display frequency distribution data for every product category 
table(data$Product_Category)

#find the total revenue generated in Canada by selling bike racks
install.packages('tidyverse')
library(tidyverse)
summary(data)

data %>% head
data %>% 
  filter(Country=='Canada',Sub_Category=='Bike Racks')%>%
  summarise(Revenue=sum(Revenue))

data %>% 
  group_by(Country)%>%
  filter(Sub_Category=='Bike Racks')%>%
  summarise(Revenue=sum(Revenue))

#find the total revenue generated in Canada by selling bike racks in year 2013




########################    Exponential Distribution  ################
#choose(5,3)

# Question of 10 STATIONS 
n=10
p=0.6
q=1-p
v=1
v=5
v=10
choose(n,v)*p^v*q^(n-v)
?dbinom()  #BINOMIAL DISTRIBUTION
dbinom(1,10,0.6)
dbinom(5,10,0.6)
dbinom(10,10,0.6)


comb<-function(n,x){
  
}
comb(5,1)


# Question of A producer of pins realized that on a normal 5% of his item are faulty.
# He offers pin a parcel of 100 and insurances that not more than  4 pins will be flawed. What is the 
# likelihood that a bundle will meet the ensured quality?

?dpois
dpois()
total=100
percentpin=5/100;percentpin
lambda=total*percentpin

requiredProbab=(exp(-lambda)*(lambda^4))/factorial(4)
requiredProbab

0.006737+0.033+0.08422+0.1403+0.1754

#we can use dpois for the Poisson Distribution
dpois(0,5)+dpois(1,5)+dpois(2,5)+dpois(3,5)+dpois(4,5)

?ppois
ppois(0,5,lower.tail = F)


# Question There are 20 red marbles, 10 blue marbles and 5 white marbles in a jar.
# Select a marble without lookin, note the colour and then replace the marble in a jar. Find the probabliity that 
# 5 marbles are selected befroe selected first red marble.
?dgeom
dgeom(5,4/7)

(3/7)^5*(4/7)

pbinom(5,10,0.5)

# Generate 100 samples from binomial when n =10, p=0.5
?set.seed
?rbinom
?pbinom

set.seed(100)
a=rbinom(100,10,.6)
table(a)

# A radioactive sources emits 4 particles during a 5 second period    4->lambda  x=5
# 1. Calculate the prob that it emits 3 particels during 5 second period 3->x Poision rear event 
# 2. It emits at least one particle during 5 second peroid  P(x>=1) 1 - P(x<1) = 1-P(x=0)
# depois(x=0,lambda=1)
# 3. During a 10 second period, what is the probability that 6 particles are emitted. lambda=8, x=6

dpois(3,4)

#Q A baseball player has a 30% chance of getting a hit on any given pitch. Ignoring balls what is the probability 
# that the player earns a hit before the strike out

p=.3
q=1-p
p+q*p+q*q*p
dgeom(3,0.3)
?dgeom

values=c(460,140,240,160)
dimnames=list(c('high','low'),c('rich','poor'))
m=matrix(values,nrow=2,ncol = 2,byrow = T,dimnames = dimnames);m
t=as.table(m)
a=chisq.test(m)
a$p.value
format(a$p.value,scientific=F)


# Can vaccination be regarded as a preventive measure of smallpox as evidenced by following
# data of 1490 persons exposed exposed to a locality 310 in all were attacked of these 1490 persons
# 350 were vaccinated and of these 40 were attacked

values=c(40,270,310,870)
dimnames=list(c('Vaccinated','Not-Vaccinated'),c('Attacked','Not-Attacked'))
m=matrix(values,nrow = 2,ncol = 2, byrow = T, dimnames = dimnames)
t=as.table(m)
a=chisq.test(m)
a$p.value
format(a$p.value,scientific = F)





