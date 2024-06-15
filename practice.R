#creating a vector
v1=c(10,20,30,40,50)
v2=c('a','b','c','d')
v3=c(TRUE,FALSE,TRUE)

v1;v2;v3

v4<-c(10,"a",TRUE) #R converts every value to character type
v4
class(v4)

v5 <- c(FALSE,2) #R converts every value to numeric type
v5
class(v5)

v6 <- c('A',1)
v6
class(v6)

v7=c(60:69)
v7

v8=seq(60,69,2)
v8

v9=60:69
v9

v10=seq(from=69, by=2, length.out=10)
v10

temp=c(10,20,30)
names(temp)=c('a','b','c')
temp

price=seq(20,25,2);price
names(price)=paste0('p',1:3)
price

sum(v1)
sd(v1)
var(v1)
prod(v1)
max(v1)
min(v1)

v1[v1<30]

price1<-seq(550,670,20)
names(price1)<-paste0("p",1:7)
price1

#1. Using index position
price1[3]
price1[3:4]
price1[c(1:4)]
price1[c(2,6)]

#4.Using exclude position method
price1[-2]
price1[c(-2,-5)]

#5. Using comparision operator
price1[price1>600]

#Handling NA values in vectors
o_d<-c(1,2,3,NA,5,NA,6,NA)
names(o_d)=c('a','b','c','d','e','f','g','h')
o_d
o_d+5

#To add two vectors
new_order <- c(1,7);new_order
o_d + new_order
update_order <- o_d+new_order
update_order

first=o_d[1:2];first
l=length(o_d);l

v1=o_d[l:1];v1

#Extract all the values below 30
o_d<30
o_d[o_d<3]

#To omit NA value from the vector
na.omit(o_d[o_d<7])

(o_d %% 3 == 0)
o_d[o_d %% 3 == 0]
na.omit(o_d[o_d%%3==0])

sum(o_d,na.rm = T)
mean(o_d,na.rm = T)
max(o_d,na.rm = T)
min(o_d,na.rm = T)
sd(o_d,na.rm = T)
sqrt(o_d)

##############  MATRIX  ###############33
v <- 20:30
v
matrix(v)
mat1<-matrix(2:10,3,3)
mat1
det(mat1)
mat3=matrix(2:13,ncol =  4, byrow = T);mat3

# Creating matrix from vectors

stock1 <- c(450,451,452,445,468)
stock2 <- c(230,231,232,236,228)
stocks <- c(stock1,stock2) # Merge both the vectors
stocks
stocks.m=matrix(stocks,byrow = T,nrow = 2)
stocks.m

# Naming a matrix using colnames() and rownames()

days=c('M','T','W','T',"F");days
st.nam=c('stock1','stock2');st.nam

colnames(stocks.m)=days
rownames(stocks.m)=st.nam
stocks.m

# Functions associated with matrix
nrow(mat3)
ncol(mat3)
dim(mat3)
rownames(stocks.m)
colnames(stocks.m)
dimnames(stocks.m)

colSums(stocks.m)
rowSums(stocks.m)
rowMeans(stocks.m)

# Adding rows and columns to a matrix using rbind() and cbind() function
stock3 <- c(150,151,149,120,114)
total_stock=rbind(stocks.m,stock3)
total_stock
avg=rowMeans(total_stock);avg

total_stock=cbind(total_stock,avg);total_stock

# Matrix selection and indexing
student<-
  matrix(c(20,30,NA,70,22,28,36,80,26,54,78,98,45,21,NA,65),nrow=4,ncol=4,byrow = T)
dimnames(student)<-list(c('John','Mathe','sam','elon'),c('Phy','Chem','Bio','Maths'))
student

#Extraction of columns
student[,1]
student[,1:3]
student[,c(1,4)]

# Extraction of rows
student[3,]
student[1:3,]
student[c(1,4),]
student[2,2]
student[2,2:4]

student[3:4,2:3]
student[2:4,c(1,4)]

#Find John's score in chem and Bio
student['John',2:3]
student['John',c('Chem','Bio')]
# Find John's and Sam's score in math
student[c('John','sam'),4]

# Find maths & Bio score of sam and elon
student[c('sam','elon'),3:4]

# Find avg score of John
mean(student[c('John'),],na.rm = T)

# Find the avg and total score for all the students 
apply(student,1,mean,na.rm=T) # here 1 stands for the row and 2 is for columns
help(apply)
?apply
apply(student,1,sum,na.rm=T)
passing_score<-c(25,25,25,70)
passing_score



# Find in how many subjects elon has passed
pass<-(student[c('elon'),]>passing_score)
pass


# set working Directory in R
getwd()
setwd("D:/PG-DBDA CDAC/R/Day1/")
getwd()

# exporting dataset
write.csv(iris,'iris.csv')
write.table(iris,'D:/PG-DBDA CDAC/R/Day1/iris.txt', sep = " ")

install.packages("openxlsx")
library(openxlsx)

write.xlsx(iris,"iris.xlsx")

?write.xlsx
?read.xlsx
?read.csv
first_data = read.csv("iris.csv") # this is used to read the data from the csv file
first_data

?read.table
second=read.table("iris.txt",header = T)
second

# how to import data from URL
data2<-read.table("http://www.bio.ic.ac.uk/research/mjcraw/therbook/data/cancer.txt",header = T)
head(data2)

# taking input from User
var=readline()
var1=readline("Enter first number: ")


#Take multiple input from user
{
  var1=readline("Enter first number: ")
  var2=readline("Enter second number: ")
}

{
  var1=as.integer(readline("Enter first number: "))
  var2=as.integer(readline("Enter second number: "))
  var3=as.integer(readline("Enter third number: "))
  var4=as.integer(readline("Enter forth number: "))
}
{
  var1=as.numeric(readline("Enter first number: "))
  var2=as.numeric(readline("Enter second number: "))
  var3=as.numeric(readline("Enter third number: "))
  var4=as.numeric(readline("Enter forth number: "))
}

x=scan()  # if you have multiple inputs
typeof(x)
class(x)

# if you want character then 
y=scan(what = character())
y




