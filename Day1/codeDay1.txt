#### Section I ####
80+95
955-200
5^4
78%%2 #Modulo- returns remainder
18%%7
(20*60)-(20-6)  #order of operations
(2*(2*5)-3)

# Assigning operator
selling <- 500
selling
print(selling)
cost = 200
profit <- selling - cost
profit
selling <- 250;selling  #creating variable & printing on same line

num <- 3.7
class(num)
typeof(num)

i <-10
class(i)
typeof(i)

i=5L
typeof(i)
class(i)

i=5.5
class(i)
typeof(i)

l=as.integer(i)
l

# Comples
x=5+9i
x
j=as.complex(i);j

t <- TRUE
f <- FALSE
class(t)
typeof(t)

# Text/String
ch = "Hello";ch
class(ch)
typeof(ch)

length(ch)

cha="How are you?";cha
length(cha)

View(iris)# show datasets in readable format
View(mtcars)  # inbuilt dataset

data()  #list of dataset
?iris
print(iris)

print(paste("Hello",5)) # paste function to oncanate string

print(paste("Hello","students",sep=", ")) # if you want to change the separater by ,

print(paste0("Hello","students")) # if you don't want separates 

# Vectors in R
# Create vectors variable with multiple values, can store numeric & character
vec1 <- c(10,30,50);vec1  # c is for combine
class(vec1)

typeof(vec1)
length(vec1)

vec2<-c("a","b","c");vec2

class(vec2)
typeof(vec2)

vec3 <- c(TRUE, FALSE, TRUE);vec3
class(vec3)
typeof(vec3)

z=1:100
z

z=7.5:15.5  # by default increment operator is 1
z
w=7.5:16
w
?seq

# don't use z=7.5:15.5:-1
seq(7.5,15.5,0.5)
seq(from=7.5, to =15.5, by=.5)
seq(10,1,-1)
seq(from=5, to =1, by=-1)

?rep
rep(1,10)
# Create a vector "ABC" and store 7 -3 times, 6-9 times and 11-2times in it

ABC=c(rep(7,3),rep(6,9),rep(11,2));ABC
length(ABC)

vec4<-c(10,"a",TRUE)
class(vec4)
typeof(vec4)

vec5=c(FALSE, 2);class(vec5)
typeof(vec5)

c1=c(2,1,0,-1,-2)
class(c1)
c2=as.logical(c1)
c2
class(c2)

vec6=c("A",1)
vec6
typeof(vec6)

vec7<-c(1:20);vec7

vec8<-seq(1,20);vec8
vec9<-1:20;vec9
# Create vector with 10 add values starting from 20

vec10<-seq(from=21, by=2, length.out=10);vec10


# This will assign the tempreature to the names
temprature <- c(72,71,68,73,69,75,71)
temprature

names(temprature) <- c ('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temprature



days <- c ('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temprature1 <- c(72,71,68,73,69,75,71)
names(temprature1) <- days; temprature1

price<-seq(100,220,20)
names(price)<-paste0('p',1:7);price
?paste0

v1<-c(1,2,3);v1
v2<-c(5,6,7);v2
sum(v1)



.3
#Basic operation on vectors
v1 <- c(2,1,4,5,2)  # it will add to next sequence
v1 <- c(2,1,4)
v2 <- c(5,6,7)
v1+v2
v1-v2
v1*v2
v1/v2

# using basic math operations
v1

sum(v1)
sd(v1)  # standard deviation
var(v1) #variance
mean(v1)  # mean
prod(v1) # give the product of the vector
max(v1) # returns maximum value
min(v1) # returns minimum value

# print multiple of 7 from 7 to 100
seq(from=7, to=100, by=7)

# Indexing similar to python
v=c(2,5,7,9)
v[1]
v[1:2]
v[2]=27

v=1:100
v=c(1:100)
v[c(7,17,21,22)]

# create 7,11,-1,-2 print all +ve no from it
v=c(7,11,-1,-6)
#c=c(7,11,-1,-6)>0;c
a=v[v>0] # this will print the +ve no from the list
a 
# subsetting values of R------------------ chatgpt

rev(v)  # it is used to reverse the order

#Create a vector F store any 50 elements in it then create another vector J & store random 5
#position in it and then access element from F with specified postion in J

F=4:54;F
J=c(5,6,23,10,32);J
F[J]
?sample

# Comparision vectors using Comparision operator
v1 <- c(19,12,45)
v2 <- c(19,20,30)
v1 < v2
v1 > v2
v1!=v2
v1==v2
v1>=v2
v1<=v2


v<-c(1,2,3,4,5)
v<3

# vector slicing and indexing 
price1<-seq(550,670,20)
names(price1)<-paste0("p",1:7);price1

price1[3]
price1[3:4]
price1[c(1,4)]
price1[c(2,6)]

price1[c("p3")]
price1[c("p3","p4","p7")]
price1["p3"]

price1[-2]
price1[c(-2,-5)]

price1[price1>600]

filter <- price1>600
price1[filter]

# Handling NA values in vectors


order_detail <-c (10,20,30,NA,50,60)
order_detail
names(order_detail) <-c ("Mon","Tue","Wed","Thu","Fri","Sat")
order_detail
order_detail + 5 #Any operation peformed on vector, will be applied to all the values of vector

#To add two vectors

new_order <- c(5,10)
order_detail + new_order
update_order <- order_detail+new_order
update_order

#Creating subset of vector

firsttwo<-order_detail[1:2]
firsttwo
l<-length(order_detail)
l

v1<-order_detail[(l-1):l]
v1
v2<-order_detail[(l-1):2]
v2
v3<-order_detail[l:1]
v3
v4<-order_detail[(l-2):l]
v4

#Extract all the values below 30
order_detail<30
order_detail[order_detail<30]

#To omit NA vaue from the vector
na.omit(order_detail[order_detail<30])

#To find the order details that are multiple of 3

(order_detail %% 3)==0
order_detail[(order_detail %% 3)==0]
na.omit(order_detail[(order_detail %% 3)==0])

sum(order_detail) #Returns NA because there is an NA value in the order detail vector

# Use na.rm to remove the NA value
sum(order_detail,na.rm=T)

mean(order_detail,na.rm=T)
max(order_detail,na.rm=T)
min(order_detail,na.rm=T)
sd(order_detail,na.rm=T)
sqrt(order_detail) # returns the square root

#### Operators ####
abs(-5)
sqrt(625)
x_1 = c(10,2,3,4)
y_1 = c(50,6,7,8)
x_1+y_1
x_1-y_1
x_1*y_1
x_1/y_1
y_1%/%x_1 # integer division
y_1%%x_1  # Modulus(Remainder from Division)
y_1^x_1# expeonent

# Logical Operators
# Zero is considered as FALSE and non-zero as TRUE
# operators & and | perform element-wise operation
x<- c(TRUE,FALSE,0,8)
y<-c(TRUE, FALSE,FALSE,TRUE)
x&y
x | y
!x


#### Miscellanous Operator ####
# This operator is used to identify if an element belongs to a vector
v1 <- 2
v2 <- 12
t <- 1:10
print(v1 %in% t)
print(v2 %in% t)

s<-'b'
vowel <- c('a','e','i','o','u')
s %in% vowel

letters
LETTERS
toupper("a")
tolower("A")

# this is Matrices
?matrix
?det()
v <- 20:30
v
matrix(v)
mat1 <- matrix(3,3,3) # save 0 of 3X3 matrix
mat1
det(mat1)
mat2 <- matrix(1:9,3,3)
mat2
matk <- matrix(1:5,3,3)
matk 

mat3 <- matrix(1:9,nrow=3, byrow=T)
mat3

mat4 <- matrix(1:9,3,3, byrow=T)
mat4

# create a vector store 9 characters in it and convert that vector in matrix
ch=c(letters[1:9])
c=matrix(ch,3,3,byrow = T)
c

# Creating matrix from vectors MERGE
stock1<-c(450,451,452,445,468);stock1
stock2=c(230,231,232,236,228);stock2
stocks<-c(stock1,stock2);stocks
stock.matrix<- matrix(stocks,byrow = T, nrow = 2);stock.matrix

# Naming a matrix using colnames() and rownames()
days<- c ('Mon','Tue','Wed','Thu','Fri');days
st.names <- c('stock1','stock2');st.names

colnames(stock.matrix) <- days;stock.matrix
rownames(stock.matrix) <- st.names;stock.matrix
stock.matrix

nrow(mat3) # returns no of rows
ncol(mat3)  # returns no of columns
dim(mat3) # returns no of rows and columns
rownames(stock.matrix)  # returns row names
colnames(stock.matrix)  # returns column matrix
dimnames(stock.matrix)

# Arithmetic operation in Matrix
mat1 <- matrix(1:50,byrow=T,nrow=5);mat1
mat1

5+mat1# matrix addition
5*mat1  # matrix multi  elementary transfromation we don't use
2/mat1  # matrix division   reciprocal quotient
mat1/2  # returns the quotient

# THE R BOOK ***********************************************

# Exponent
mat1^2

# Matrix arithmetic with multiple matrices IT REQURIES SAME ORDER
mat1 + mat1
mat1-mat1
mat1*mat1
# mat1[3:3]%*%mat1[3:3] #operator used for MATRIX MULTIPLICATION ROWS=COLUMNS square matrix

mata=matrix(c(1:4),2,2);mata

matb=matrix(c(5:8),2,2);matb

mata%*%matb

# Matrix Operations
colSums(stock.matrix) # returns the sum for each column
rowSums(stock.matrix) # returns sum for each row
rowMeans(stock.matrix)  #retunrs the mean for each row

# Adding rows and columns to a matrix using rbin() and cbind() function 

stock3 <- c(150,151,149,120,114)
stock4 <- c(20,50,30,45,39)
rowsw=c(stock3,stock4)
total_stock <- rbind(stock.matrix,stock3) # it should have same no of rowsit will add in row wise manner
total_stock

stock3 <- c(150,151,149,120,114)
total_stock <- rbind(stock.matrix,stock3);total_stock
total_stock

avg <- rowMeans(total_stock)
avg 

total_stock <- cbind(total_stock,avg) # it will add in column manner
total_stock

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


#*********************** After Break ****************************

# set working Directory in R
getwd()
setwd("D:/PG-DBDA CDAC/R/Day1/")
getwd()

# exporting dataset
write.csv(iris,'iris.csv')
write.table(iris,'D:/PG-DBDA CDAC/R/Day1/iris.txt', sep = " ")

#install.packages("openxlsx")
#library(openxlsx)

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

?scan # by default numeric question nmax
