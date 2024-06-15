#### Assignment & Introduction ####

#To run any command press Ctrl + Enter
#You can write a comment in the script by starting a line with the "#" sign
#A comment is not run by R when you press ctrl + Enter
#R is Case Sensitive
#rm(list = ls()) to clear environment
#cat("\014") to Clear Console
cat("\014")
rm(list = ls())
#ctrl + shift + c is use to comment multiple line
##Assignment
#rm(list = ls())
#cat("\014")
x = 2 #Created an Object having value 2
 print(x)
x
class(x)
z = 4L
z
class(z)
print(x)
print(X)

X = 5
X
rm(list = ls())

print(x)
x
y <- 2
y
x
Z = "Hello"
print(Z)
#print
print("Hello World")

class(x)
class(y)
class(Z)
#### Vectors ####

#Types of Vectors

# Creating a sequence from 8 to 17.
v <- 8:17
v
print(v)

# Creating a sequence from 5.5 to 17.5.
v <- 5.5:17.5
print(v)
print(v)

# If the final element specified does not belong to the sequence 
#then it is discarded.
v <- 3.8:11.4
print(v)

#Using sequence (Seq.) operator
?seq
# Create vector with elements from 5 to 9 incrementing by 0.5
s <- seq(5, 9, by = 0.5)
length(s)
print(s)
?seq
# Create vector with elements from 10 to 20 incrementing by 0.1
# print even number between 10 to 20 
#print multiple of 7 from 7 to 100
#Using the c() function
### VECTORS

v = c(14,26,38,30) ### use c() to store several values in one variable
v
class(v)
length(v)
v[1]
v[1:3]
v[2] = 27
v_1 <- c(12.111,12.2)

v_1 = as.integer(v_1)
class(v_1)
v_2= c("Hello","Good morning","Nice to meet you","Me too")
v_2
class(v_2)
v_2[1]
v_2[1:2]
v_2[2:3]

v_2[1] <- "A"
v_2

v_3 = c(10,20,30,"Hello")
class(v_3)
grade <- c("A","B","c","D","E")
class(grade)
grade <- as.factor(grade)
grade <- as.character(grade)
class(grade)
class(v_1)
class(v)
class(v_2)
class(v_3)


#The non-character values are coerced
#to character type if one of the elements is a character.
# The logical and numeric values are converted to characters.
s <- c('apple',"red",5,TRUE)
print(s)
class(s)
s[1] #Print first value
s[4] #Print fourth value
t <- c(F,5,TRUE)
class(t)

#Accessing vector elements
#You can access an individual element of a vector by its position (or "index"), 
#indicated using square brackets.
#In R, the first element has an index of 1

grade <- c("A","B","c","D","E")
grade[5] <- "O" #update the fifth element from "E" to "O"
# Call 3rd value of v
v[3]

g = c(7,9,0,TRUE)
g
class(g) #numeric
letters
LETTERS
#You can also change the elements of a vector using the same notation 
#as you use to access them:
##create a vector and store first 5 multiple of 5,first 5 multiple of 7 & first 5 multiple of 16 in it.
v[1] <- 5

#You can access multiple elements of a vector by specifying a vector of element indices
#Inside the square brackets.
v <- c(10,12,14,16,18,20,22,24,26,28,30,32)
length(v) #to check the length of vector
rev(v)
?rev
v[c(1,2)] #First & Second element of vector v
v[c(1,5,10)]
v[1:3] #First 3 elements

rev(v) #Print the reverse
v[-1] #remove first element
v_updated = v[-1]
v[c(-1:-2)]
dummy <- v[c(-1:-3)]
#
v = -5:5
print(v)
v[v>0]
v[v<0]

#finding index from name
k = c(11,13,15,7,8,9)
which((k == 11))

Roll <- c(1:20)
Roll[c(5,10,15,20)]
Roll_5 <- Roll[c(5,10,15,20)]

Roll <- c(1:100)
seq(5,100,5)
Roll[seq(5,100,5)]
Roll_5 <- Roll[seq(5,100,5)]
Roll_5

#Create a vector "F" store any 50 elements in it
#then create another vector "J" and store random 5 
#positions in it and then access elements from F
# with specified position in J.


a <- 'a'
class(a)
b <- 'bcd'
class(b)

v <- seq(6,12, by = 2)
v

m <- seq(12,6, by = -2)
m[-1]
m[-1:-3]

v[2]=17
v[-1]
v[-1:-3:-5]
c <- v[! v %in% c(14,18)]

v
#Logical Data Type
l <- T
class(l)
l_1 <- TRUE
class(l_1)

l_2 <- "TRUE"
class(l_2)


#Numeric Data Type
Num1 = 63.5
class(Num1)

#Integer Data Type
Num2 = 63L
class(Num2)

#Complex data type
comp1 = 3+2i
class(comp1)


#### Operators ####
#Arithmetic Operators
x <- 4
y <- 17

#Addition
x+y
#Subtraction
x-y
#Multiplication
x*y
#Division
y/x
#Integer Division
y%/%x
#Modulus(Remainder From Division)
y%%x
#Exponent
y^x

####
x_1 <- c(1,2,3,4)
y_1 <- c(5,6,7,8)

#Addition
x_1+y_1
#Subtraction
x_1-y_1
#Multiplication
x_1*y_1
#Division
y_1/x_1
#Integer Division
y_1%/%x_1
#Modulus(Remainder From Division)
y_1%%x_1
#Exponent
y_1^x_1

##

x_1 <- c(1,2,3,4)
y_1 <- c(5,6,7)

#Addition
x_1+y_1
#Subtraction
x_1-y_1
#Multiplication
x_1*y_1
#Division
y_1/x_1
#Integer Division
y_1%/%x_1
#Modulus(Remainder From Division)
y_1%%x_1
#Exponent
y_1^x_1


#
x_1 <- c(1,2,3,4,5,6)
y_1 <- c(5,6,7)

#Addition
x_1+y_1
#Subtraction
x_1-y_1
#Multiplication
x_1*y_1
#Division
y_1/x_1
#Integer Division
y_1%/%x_1
#Modulus(Remainder From Division)
y_1%%x_1
#Exponent
y_1^x_1

x_1 <- c(1,2,3,4,11,12,13)
y_1 <- c(5,6,7,8)

x_1+y_1
#
8.9%/%2.9

x = 10
y = 3
y%%x
x%%y
  
#Relational Operators


x <- 18
y <- 17

#Less than
x<y
#Greater than
x>y
#Less than or equal to
x<=9
#Greater than or equal to
y>=17
#Equal to
y == 17

#Not equal to
x != 18

x_1 <- c(17,18,19,20)
y_1 <- c(17,18,19,20)

#Less than
x_1<y_1
#Greater than
x_1>y_1
#Less than or equal to
x_1<=9
#Greater than or equal to
y_1>=17
#Equal to
y_1 == 17

#Not equal to
x_1 != 18


x_1 == y_1

z <- c(1,3,T)
class(z)


#Logical Operators
#Zero is considered as FALSE and non-zero numbers are taken as TRUE
#Operators & and | perform element-wise operation 

#But && and || examines only the first element of the operands resulting into a single length logical vector.

x <- c(TRUE,FALSE,0,8)
y <- c(TRUE,FALSE,FALSE,TRUE)

a <- c(1,1,0,1)
b <- c(0,1,0,1)
class(x)
class(y)
!a


#Logical NOT
!x
#Element-wise logical AND
x&y
#Logical AND
x&&y
#Element-wise logical OR
x|y
#Logical OR
x||y

x <- c(TRUE,FALSE,0,8);length(x);class(x)
y <- c(TRUE,FALSE,1,7);length(y);class(y)

x && y
x || y
#Miscellanous Operator

#This operator is used to identify if an element belongs to a vector.
v1 <- 2
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t) 

s <- "b"
vowel <- c("a","e","i","o","u")
s %in% vowel

#Take input from the user and check whether it is vowel or not
#print in new line
numbers = 1:10

for (i in numbers) {
  cat(i,"\n")
  #print(i)
}

#This operator is used to multiply a matrix 

M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
t = M %*% t(M)
print(t)

M = matrix( c(2,6,5,1,10,4,1,2,3), nrow = 3,ncol = 3,byrow = TRUE)
M1 = matrix( c(1,6,5,1,10,4,1,2,3), nrow = 3,ncol = 3,byrow = TRUE)
t = M %*% M1
#### Data Objects ####
#### MATRICES ####
?matrix
M = matrix(nrow=2,ncol=2)
v <- c(10,20,30,40)
matrix(v)
# Create matrix with values from my_vector, 2 rows and 2 columns
M = matrix(v,nrow=2,ncol=2,dimnames = list(c("A","B"),c("X","Y")))
M = matrix(v,nrow=2,ncol=2)
M = matrix(v,nrow=2,ncol=2,byrow = T)
# Call
M
M_2 = matrix(1:9, nrow= 3, ncol = 3, byrow = FALSE)
M_3 = matrix(1:9, nrow= 3, ncol = 3, byrow = TRUE)
M_3

# Create vector with 9 integers from 1 to 9
1:9


M_2 = matrix(1:9, nrow= 3, ncol = 3);M_2
M_2


# Access value on second row, second column
M_2[2,2]

# Access value on first row, second column
M_2[1,2]

# Access value on Third row, First column
M_2[3,1]
# Access second row
M_2[2,] 


# Access second column
M_2[,2]

# Access sub-matrix with components on both first 2 rows and first 2 columns
M_2[1:2,1:2]

# Access sub-matrix with components that are not on 3rd row and 3rd column
M_2[-3,-3]

M_2[3,3]

M_2[3,3]

#Transpose of Matrix
t(M_2)

###Sir what if we want a specific no. of columns and don't know the no. of rows.... as about high no. of elements?
M_2 = matrix(1:26, ncol = 3)
M_2

M_2 = matrix(1:26, 3)

#Write a R program to create two 2*3 matrix and add,subtract
#multiply,and divide the matrix.

#Acessing rownames & Colnames
rownames(M)
colnames(M)

#Update rownames  & Colnames

rownames(M) <- c("Rohit","Virat")
colnames(M) <- c("Stokes","Root")

#creating Diagonal matrix
?diag

D = diag(c(5,3,3),3,3)

D = diag(c(1,1,1),3,3)

I = diag(2,3,3)

M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
t = M %*% t(M)
print(t)

M = matrix( c(2,6,5,1,10,4,1,2,3), nrow = 3,ncol = 3,byrow = TRUE)
M1 = matrix( c(1,6,5,1,10,4,1,2,3), nrow = 3,ncol = 3,byrow = TRUE)
t = M %*% M1

#create a vector ('hello','i','am',24,50,60,45,'rrr'), 
  #check if 'am' character is present in the vector or not. 
  #and create the matrix of the same vector having 2 rows and 4 columns.

d=c('hello','i','am',24,50,60,45,'rrr')

'am' %in% d

matrix(d,nrow=2,ncol=4,byrow=T)

#### DATA FRAMES ####
?data.frame
v = c(14,26,38,30) ### use c() to store several values in one variable

v_2= c("Hello","Good morning","Nice to meet you","Me too")

?data.frame
# Create data frame with 2 columns: v and v_2

D_1 <- data.frame(v,v_2)
D_1

D_1 <- data.frame(v,v_2,row.names = c("A","B","C","D"))
D_1

rownames(D_1) = 1:4
D_1
class(D_1)
row.names(D_1)[1] = "abc"
row.names(D_1)[1:2] = c("abc","d")

rownames(D_1)[1] = "e"
rownames(D_1)[c(1,4)] = c("x","y")
?rownames
?row.names
#D_1.head
?head
head(D_1)
View(D_1)
class(D_1)
str(D_1)
dim(D_1)
?data.frame
D = data.frame(XYZ = c(10,11,12,13),ABC = c("A","B","C","D"))
D

D[-c(2,4),]
a = c(2,"F")
rbind(D,a)
?cbind
b = data.frame(XYZ = c(14,15),ABC = c("E","F"))
rbind(D,b)
str(D)
D$ABC = as.factor(D$ABC)
D$XYZ = NULL
?head
# Change colnames of all columns 
colnames(D_1) <- c("PQR", "STU")

#Change name of one column
colnames(D_1)[colnames(D_1) == "PQR"] <- "XYZ"
names(D_1)
colnames(D_1)[1] <- "UVW"

##
fr_data <- data.frame("id" = c(1:5),fr_name = c("A","B","C","D","E"),stringsAsFactors = T)
str(fr_data)
summary(fr_data)
fr_data <- data.frame("id" = c(1:5),fr_name = c("A","V","Z","D","E"),stringsAsFactors = T)
str(fr_data)

fr_data$id
#expand a dataframe

fr_data$KGF = c("X","Y","Z","1","2")

#names(D_1)[3] <- "Employee"
#names(D_1)
letters[2:7]

rep("shruti",7)
#Reordering the dataframe by column number
fr_data[c(2,3,1)]
names(fr_data)
#Reordering the dataframe by column name
d <- fr_data[c("fr_name","KGF","id")]


#Add new column

D_1$Employee <- c("1", "2", "3", "4")
D_1$Employee_New <- c(1,2,3,4)
str(D_1) #to check structure of dataframe


# Change colnames of some columns
colnames(D_1)[colnames(D_1) %in% c("XYZ", "STU")] <- c("uvw", "def")



#%in% operator in R, is used to identify if an element belongs to a vector.
# Look at data frame's overall type
class(D)

# Look at columns' type
class(D$XYZ)
class(D$ABC)
D$XYZ <- as.character(D$XYZ)
D$ABC <- as.character(D$ABC)
# Call a column in a data frame
D_1$Employee # OR
D_1$uvw
#D_1[,1]

# Create sub data frame with first 3 rows only
D_2= D_1[1:3,]
D_2

#Practise
#Create a dataframe which has 3 columns & 10 rows 
#column 1 is serial no column 2 is name of the item
#column is quantity purchase

#add 4th column price of one quantity
#add 5th column total price
d$total_Price = d$quantity_purchase*d$b
#if 20% discount is given then add column of new price

d$new_price = d$total_price*0.8

#missing values

x = c(NA,2,3)
y = c(6,7,8)
z = c(10,11,NA)

d7 = data.frame(x = x, y = y,z = z)
#d8 = data.frame(x,y,z)

is.na(d7)
is.na(d7$x)

sum(is.na(d7$x))
sum(d7)
sum(d7,na.rm = T)
cleaned_data = na.omit(d7)
sum(cleaned_data)
#### LISTS ####
#Lists are the R objects which contain elements of different types like - numbers,
#strings, vectors and another list inside it. 
#A list can also contain a matrix or a function as its elements.
#List is created using list() function.

?list()
# Create a list containing strings, numbers, vectors and a logical
# values.
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
length(list_data)

print(list_data)

#Naming List Element
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

list_data = list(I_Quarter<- c("Jan","Feb","Mar"), A_Matrix<- matrix(c(3,9,5,1,-2,8), nrow = 2),
                  A_Inner_list<- list("green",12.3))

list_data = list(I_Quarter= c("Jan","Feb","Mar"), A_Matrix= matrix(c(3,9,5,1,-2,8), nrow = 2),
                 A_Inner_list= list("green",12.3))
names(list_data)
list_data$I_Quarter
list_data$A_Matrix



list_data$A_Matrix[1,]
list_data$A_Matrix[1,1]

list_data[1]
list_data[1][1]
list_data[1][2]

list_data[[1]]
list_data[[1]][1]
list_data[[1]][2]
list_data[[1]][3]


list_data[2]
list_data[[2]][1]
list_data[[2]][2]
list_data[[2]][3]
list_data[[2]][4]

list_data[[3]][1]
list_data[[3]][2]


?list
length(list_data)
print(list_data)
# Give names to the elements in the list.
names(list_data)
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
names(list_data)
# Show the list.
print(list_data)


#Acessing List Elements
#Acessing elements from the nested list


# Access the first element of the list.
print(list_data[1])

#Practise
list_data <- list(I_Quarter<- c("Jan","Feb","Mar"), A_Matrix<- matrix(c(3,9,5,1,-2,8), nrow = 2),
                  A_Inner_list<- list("green",12.3))

list_data[[1]] <- new_Quarter
list_data
new_Quarter <- c("June","July","Aug","Sept")


# Access the third element. As it is also a list, all its elements will be printed.
print(list_data[3])

# Access the list element using the name of the element.
print(list_data$A_Matrix)
list_data$A_Matrix
list_data[4]
#Manipulating List Elements

# Add element at the end of the list.
list_data[4] <- "New element"
list_data
print(list_data[4])

list_data[-1]
# Remove the last element.
list_data[4] <- NULL
list_data
length(list_data)
# Print the 4th Element.
print(list_data[4])

# Update the 3rd Element.
list_data[3] <- "updated element"
print(list_data[3])

#Merging List
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)
merged.list
class(merged.list)
# Print the merged list.
print(merged.list)
#append

li = list('java','python')
li

li2 = append(li,2)
li2

li2 = append(li,2:3)
li2
?append
#add element at specified position

li = list('java','python',"C")
li


li2 = append(li,'r',after = 2)
li2

new = 1:21
li2 = append(li,new)
li2


li = list(x = 'java',y = 'python',z = "C")
li


#new = 1:21
new = 1:5
li2 = append(li,new)
li2

li2 = append(li,new1 = 1:5)
li2
length(li2)
install.packages("rlist")
library(rlist)
li = list(x = 'java',y = 'python',z = "C")
li

li2 = list.append(li,a = "R")
li2

li3 = list.append(li2,new)
li3
?append

#renaming list elements

li = list(x = 'java',y = 'python',z = "C")
li
names(li)

names(li) = c("a","b","c")

names(li)[names(li) == "c"] = "d"

#() = "d"

#= c("a","b","c")

#[3]

#### Arrays ####
#Arrays are the R data objects which can store data in more than
#two dimensions. For example - If we create an array of dimension
#(2, 3, 4) then it creates 4 rectangular matrices each with 
#2 rows and 3 columns

#An array is created using the array() function. 
#It takes vectors as input and uses the values in the dim parameter
#to create an array.
?array
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
?array
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)
result_rowwise = aperm(result,c(2,1,3));result_rowwise
result_rowwise = aperm(result);result_rowwise

?array
?aperm
result_rowwise1 = aperm(result,c(1,3,2));result_rowwise1

#Practise

oneA <- array(c(vector1,vector2),dim = c(1,2,3));oneA
twoB <- aperm(oneA,c(1,3,2));twoB
threeC <- array(c(vector1,vector2),dim = c(1,3,2));threeC
fourD <- array(c(vector1,vector2),dim = c(3,2,1));fourD
fiveE <- array(c(vector1,vector2),dim = c(3,1,2));fiveE


# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15,16)
?array
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)


# Create two vectors of different lengths.
vector1 <- c(5,9,3,4,7)
vector2 <- c(10,11,12,13,14,15,16)
?array
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)


#

vector1 <- c(5,9,3,5,9,3,5,9,3)
vector2 <- c(10,11,12,13,14,15,10,11,12)
?array
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

result <- array(c(vector1,vector2),dim = c(3,3,3))
print(result)

#Naming Columns & Rows
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,
                                                                  matrix.names))
print(result)

#Accessing Array Elements
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,
                                                                  matrix.names))
print(result)
#element in third row of second matrix
result[3,,2]
#element in the first row and 3rd column
result[1,3,]
#2nd matrix
result[,,2]

#access elements from 1st matrix-2nd row ,2nd matrix 2nd row.

#Manipulating Array Elements
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))

# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector3,vector4),dim = c(3,3,2))

# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]


# Add the matrices.
result <- matrix1+matrix2
print(result)

#adding elements Row wise
?aperm

result_rowwise = aperm(result)
####  Factors ####
#Factors are the data objects which are used to categorize the data
#and store it as levels. They can store both strings and integers.
#They are useful in the columns which have a limited number of unique values. 
#Like "Male, "Female" and True, False etc. They are useful in data analysis for 
#statistical modeling.

#Factors are created using the factor () function by taking a vector as input.

?factor
# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
class(factor_data)
print(is.factor(factor_data))

#Factors as Data_Frame
# Create the vectors for data frame.
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")
?as.factor
# Create the data frame.
input_data <- data.frame(height,weight,gender)
print(input_data)
str(input_data)
# Test if the gender column is a factor.
print(is.factor(input_data$gender))
input_data$gender = as.factor(gender)
as.factor(gender)

#changing the labels
input_data$gender = as.factor(input_data$gender,levels = c("male","female"),labels = c("male","female"))
input_data$gender = as.factor(input_data$gender,levels("male","female"))
input_data$gender = as.factor(input_data$gender,levels())
?as.factor
# Print the gender column so see the levels.
print(input_data$gender)
class(input_data$gender)
#Changing the order of levels
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
# Create the factors
factor_data <- factor(data)
print(factor_data)

# Apply the factor function with required order of the level.
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

?as.factor
#Generating Factor Levels
#We can generate factor levels by using the gl() function. 
#It takes two integers as input which indicates how many levels
#and how many times each level.
?gl
#Syntax
#gl(n, k, labels)

v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)

v1 <- gl(3, 4, labels = c("Thane", "Borivali"))
print(v1)

# Set working directory (tells R where to import files from/export files to)

setwd("D:/C Drive/Desktop/SURAJ SINGH/Teaching/SM VITA/2022/OCT - SEPT/Lecture Notes/Data/")



# Get working directory
getwd()


### Import  .txt with space separated values

# read.table() function to import .txt files
Titanic = read.table("Titanic_space_separated.txt", header=TRUE) # No "sep" term, as space is the default separator
Titanic = read.table("D:/C Drive/Desktop/SURAJ SINGH/Teaching/C-DAC/Lecture Notes/Data/Titanic_space_separated.txt",header=TRUE)

?read.table
class(Titanic)


### SEE DATA

# See all data
View(Titanic)

head(Titanic)
## See first 10 rows
head(Titanic,10)

tail(Titanic)
# See last 5 rows
tail(Titanic,5)

str(Titanic)

# Change column's type to character
Titanic$Sex = as.factor(Titanic$Sex) # Sex column is overwritten by "character" version of Sex column

summary(Titanic)

# Change column's type to factor
Titanic$Sex = as.factor(Titanic$Sex)


### Import .txt with comma separated values

# read.table() function to import .txt files
Orange = read.table("Orange_comma_separated.txt", header = TRUE, sep = ",") # sep= "," for comma separated files
class(Orange)
View(Orange)
summary(Orange)

Orange$Tree = as.factor(Orange$Tree)


### Import .csv file


#  Use read.csv() to import .csv files

Countries = read.csv("Countries Population.csv")

names(Countries)
summary(Countries)
str(Countries)
Countries$`Country Name` = as.factor(Countries$`Country Name`)
Countries$`Country Code` = as.factor(Countries$`Country Code`)
## Note: Column names have spaces in them, hence are not in proper format. R add `this quotes` to treat columns normally



### Import excel document

# Install readxl package to machine and load in Rsession to use read_excel() fucntion
install.packages("readxl")
library(readxl)

# Use read_excel() to import xlsx documents
Countries_Region1 <- read_excel("Countries Region Mapping.xlsx")
View(Countries_Region)

Countries_Region2 <- read_excel("Countries Region Mapping.xlsx",sheet = 2)
View(Countries_Region2)


#check all inbuilt dataset present in R
data()
#Data Exploration of inbuilt IRIS Dataset
data <- iris
View(data)
?write.table
?write.csv
write.csv(data,file = "new_data.csv")
#Check Dimension of data
dim(data)
a = 40000000000000000000000000
print(a)
format(a,scientific = F)

write.csv(data,file = "D:/C Drive/Desktop/SURAJ SINGH/Teaching/C-DAC/Lecture Notes/new_data.csv")
write.table(data,file = "D:/C Drive/Desktop/SURAJ SINGH/Teaching/C-DAC/Lecture Notes/new_data_comma.txt",sep = ",")
Desktop
#To check missing value
missing_count <- sum(is.na(data))

missing_count_1 <- sum(is.na(data$Sepal.Width))
colSums(is.na(data))#in each variable
#Calculate basic descriptive statistics
str(data)
summary(data)

#is.na(data$Sepal.Length)

#To calculate summary of a particular column, say third column
summary(data[3])

#To calculate summary of a particular column by its name
summary(data$Petal.Length)

#list names of variables in dataset
names(data)

#Calculate no of rows in datset
nrow(data)

#Calculate no of columns in datset
ncol(data)

#structure of dataset
str(data)

head(data) #default is first 6 values
head(data,n=5) #to display n rows
head(data,n = -1) #all rows except last row
tail(data) #last 6 rows
tail(data, n = 5) #last  n rows
tail(data, n = -1) #all rows except first rows
?data.frame
datalife <- LifeCycleSavings
names(LifeCycleSavings)
newrows <- data.frame(sr = rep(2,10),pop15 = rep(3,10),pop75 = rep(4,10),dpi = rep(5,10),ddpi = rep(6,10),row.names = c("Ind","Pak","Aus","Sri","Ban","NZ","SA","WI","USA","CAN"))
datalife = rbind(datalife,newrows)
View(datalife)
rep(2,10)
#### Data Importing ####
data()
?AirPassengers
#Reading Data into R

getwd()
# Set working directory (tells R where to import files from/export files to)


#setwd("C:/Desktop/SURAJ SINGH/Teaching/NMIMS/Data Science/")

#setwd("C:/Desktop/SURAJ SINGH/Teaching/NMIMS/Data Science/")

# Get working directory
setwd("D:/C Drive/Desktop/SURAJ SINGH/Teaching/SM VITA/2022/OCT - SEPT/Lecture Notes/Data/")
getwd()

setwd("D:/C Drive/Desktop/SURAJ SINGH/Teaching/SM VITA/2023/DATA/")
### Import  .txt with space separated values

# read.table() function to import .txt files
Titanic = read.table("Titanic_space_separated.txt", header=TRUE) # No "sep" term, as space is the default separator
Titanic
#[1:2,1:2]
row.name`s(Titanic)
rownames(Titanic) = 33:64
rownames(Titanic)[rownames(Titanic) == 33] = "abc"

rownames(Titanic[1,]) = "abc"
rownames(Titanic)
View(Titanic)
?read.table
class(Titanic)
names(Titanic)
colnames(Titanic)
#Without setting working diectory
Titanic_1 = read.table("C:/Desktop/SURAJ SINGH/Teaching/NMIMS/Data Science/Titanic_space_separated.txt", header=TRUE) # No "sep" term, as space is the default separator
View(Titanic_1)

### SEE DATA

# See all data
View(Titanic)

head(Titanic)
## See first 10 rows
head(Titanic,10)

tail(Titanic)
# See last 5 rows
tail(Titanic,5)

str(Titanic)
summary(Titanic)
# Change column's type to character
Titanic$Sex = as.factor(Titanic$Sex) # Sex column is overwritten by "character" version of Sex column

summary(Titanic)

# Change column's type to factor
Titanic$Sex = as.factor(Titanic$Sex)


### Import .txt with comma separated values

# read.table() function to import .txt files
Orange = read.table("Orange_comma_separated.txt", header = TRUE, sep = ",") # sep= "," for comma separated files
class(Orange)
View(Orange)
summary(Orange)

Orange$Tree = as.factor(Orange$Tree)
iris

### Import .csv file


#  Use read.csv() to import .csv files

#Countries = read.csv("Countries Population.csv")
#View(Countries)
#names(Countries)
#summary(Countries)
#str(Countries)
#Countries$`Country Name` = as.factor(Countries$`Country Name`)
#Countries$`Country Code` = as.factor(Countries$`Country Code`)
## Note: Column names have spaces in them, hence are not in proper format. R add `this quotes` to treat columns normally
## Next chapter covers how to get proper format for column names

new_data.csv
a = read.csv("bike_buyers.csv")

b = read.csv(file.choose())
### Import excel document

# Install readxl package to machine and load in Rsession to use read_excel() fucntion
install.packages("readxl")
library(readxl)

# Use read_excel() to import xlsx documents
Countries_Region <- read_excel("Countries Region Mapping.xlsx")
??read_excel
Countries_Region2 <- read_excel("Countries Region Mapping.xlsx",sheet = "Sheet1")

data <- iris
View(data)
?write
?write.csv
write.csv(data,file = "C:\new_data.csv")
#Check Dimension of data
?write.table
write.table(iris,"D:/Dhiraj/export1.txt")

#### Tidyverse ####
install.packages("tidyverse")
library(tidyverse)
View(diamonds)
?diamonds
str(diamonds)
names(diamonds)
?data
data()
data("tidyverse")
#install.packages("D:/C Drive/Desktop/SURAJ SINGH/Teaching/C-DAC/Lecture Notes/tidyverse_1.3.1.tar.gz", repos = NULL, type="source")
getwd()
write.csv(diamonds,"diamonds.csv")
#%>% is called the forward pipe operator in R
#What the function does is to pass the left hand side of the operator 
#to the first argument of the right hand side of the operator. 
#In the following example, the data frame iris gets passed to head():

#library(magrittr)
iris %>% head()

#iris %>% head() %>% summary() is equivalent to summary(head(iris))

#mutate
# Adds new columns or modifies current variables in the dataset.

#Create three new column in diamonds dataset namely JustOne store 1 in it,Values store something in it,
diamonds %>% 
  mutate(JustOne = 1,
         Values = "something",
         Simple = TRUE)

#diamonds %>% mutate(JustOne = 1,Values = "something",Simple = TRUE)

head(diamonds %>%  # original dataset
  mutate(price200 = price - 200,        # $200 OFF from the original price
         price20perc = price * .20,     # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2)             
  )


diamonds %>%  # original dataset
  mutate(price200 = price - 200,        # $200 OFF from the original price
         price20perc = price * .20,     # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2) %>% head()

diamonds %>%  # original dataset
  mutate(price200 = price - 200,        # $200 OFF from the original price
         price20perc = price * .20,     # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2) 

names(diamonds)
unique(diamonds$cut)
?summarize
diamonds.new <- # saving changes to diamonds as a new object
  diamonds %>%  # original dataset
  mutate(price200 = price - 200,        # $200 OFF from the original price
         price20perc = price * .20,     # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2)             # Square the original depth

diamonds.new

str(diamonds.new)

#nesting functions

diamonds %>% 
  mutate(m = mean(price))

diamonds %>% mutate(m = mean(price))

diamonds %>% 
  mutate(m = mean(price),     # calculates the mean price
         sd = sd(price),      # calculates standard deviation
         med = median(price)) # calculates the median price

#recode()
#modifies the values within a variable. Here is the basic structure for using recode

#data %>% mutate(Variable = recode(Variable, "old value" = "new value"))


diamonds %>% 
  mutate(cut.new = recode(cut,
                          "Ideal" = "IDEAL"))

diamonds %>% 
  mutate(cut.new = recode(cut,
                          "Ideal" = "IDEAL",
                          "Fair" = "Okay",
                          "Premium" = "pizza"))

# creating a dataset with 2 variables (Sex , TestScore)
Sex <- factor(c("male", "m", "M", "Female", "Female", "Female"))
TestScore <- c(10, 20, 10, 25, 12, 5)
dataset <- tibble(Sex, TestScore)
str(dataset)

?tibble

dataset %>% 
  mutate(Sex.new = recode(Sex, 
                          "m" = "Male",
                          "M" = "Male",
                          "male" = "Male"))

dataset = as.data.frame(dataset)
#summarize()
#collapses all rows and returns a one-row summary

diamonds %>% 
  summarize(avg.price = mean(price))

diamonds %>% 
  summarize(avg.price = mean(price),     # average price of all diamonds
            dbl.price = mean(price) * 2, # calculating double the average price
            random.add = 1 + 2,          # a math operation without an existing variable 
            avg.carat = mean(carat),     # average carat size of all diamonds
            stdev.price = sd(price))     # calculating the standard deviation 

diamonds %>% 
  summarize(avg.price = mean(price),     # average price of all diamonds
            dbl.price = mean(price) * 2, # calculating double the average price
            random.add = 1 + 2,          # a math operation without an existing variable 
            avg.carat = mean(carat),     # average carat size of all diamonds
            stdev.price = sd(price)     # calculating the standard deviation 
            count = n() )

diamonds %>% 
  summarize(count = n(diamonds$carat))
#group_by() and ungroup()


## Creating identification number to represent 50 individual people
ID <- c(1:50)
?rep
## Creating sex variable (25 males/25 females)
Sex <- rep(c("male", "female"), 25) # rep stands for replicate
## Creating age variable (20-39 year olds)
Age <- c(26, 25, 39, 37, 31, 34, 34, 30, 26, 33,
         39, 28, 26, 29, 33, 22, 35, 23, 26, 36,
         21, 20, 31, 21, 35, 39, 36, 22, 22, 25,
         27, 30, 26, 34, 38, 39, 30, 29, 26, 25,
         26, 36, 23, 21, 21, 39, 26, 26, 27, 21)

## Creating a dependent variable called Score
Score <- c(0.010, 0.418, 0.014, 0.090, 0.061, 0.328, 0.656, 0.002, 0.639, 0.173,
           0.076, 0.152, 0.467, 0.186, 0.520, 0.493, 0.388, 0.501, 0.800, 0.482,
           0.384, 0.046, 0.920, 0.865, 0.625, 0.035, 0.501, 0.851, 0.285, 0.752,
           0.686, 0.339, 0.710, 0.665, 0.214, 0.560, 0.287, 0.665, 0.630, 0.567,
           0.812, 0.637, 0.772, 0.905, 0.405, 0.363, 0.773, 0.410, 0.535, 0.449)
## Creating a unified dataset that puts together all variables
data <- tibble(ID, Sex, Age, Score)

data1 = as.data.frame(data)
install.packages("magittr")
library(magittr)
#average score of male and female separately
data %>%
  group_by(Sex) %>%
  summarize(m = mean(Score), # calculates the mean
            s = sd(Score), # calculates the standard deviation
            n = n()) %>% # calculates the total number of observations
  ungroup()


data %>%
  group_by(Sex, Age) %>% # grouped by Sex and Age
  summarize(m = mean(Score),
            s = sd(Score),
            n = n()) %>%
  ungroup()

###
#average score of male and female separately
data %>%
  group_by(Sex) %>%
  summarize(m = mean(Score), # calculates the mean
            s = sd(Score), # calculates the standard deviation
            n = n()) # calculates the total number of observations


data %>%
  group_by(Sex, Age) %>% # grouped by Sex and Age
  summarize(m = mean(Score),
            s = sd(Score),
            n = n()) %>%
  ungroup()


#mutate() and group_by()
#We could also utilize mutate() after group_by() to add a new column based on the group.

data %>%
  group_by(Sex) %>%
  mutate(m = mean(Score)) %>% # calculates mean score by Sex
  ungroup()

## Why ungroup
data %>%
  group_by(Sex) %>%
  mutate(m = mean(Age)) %>% # calculates the average age of males and females
  mutate(x = mean(Score)) %>% # counts number of participants
  ungroup() # closing ungroup()


data %>%
  group_by(Sex) %>%
  mutate(m = mean(Age)) %>% # calculates the average age of males and females
  ungroup() %>% # nested ungroup()
  mutate(x = mean(Score)) # counts number of participants


#filter()

#Only retain specific rows of data that meet the specified requirement(s)

diamonds %>% filter(cut == "Fair")

diamonds %>%
  filter(cut == "Fair"| cut == "Good", price <= 600)

diamonds %>%
  filter(cut %in% c("Fair","Good"), price <= 600)

diamonds %>%
  filter(cut == "Fair", cut == "Good", price <= 600)

diamonds %>%
  filter(cut == "Fair" & cut == "Good", price <= 600)

diamonds %>%
  filter(cut == "Fair" & cut == "Good" & price <= 600)


diamonds %>%
  filter(cut == "Fair" , depth < 60 , price <= 600)

#
diamonds %>%
  filter(price %in% seq(c(300:650)))

#Only display data from diamonds that do not have a cut value of Fair:
  diamonds %>% filter(cut != "Fair")

  
#select()
#Function: Select only the columns (variables) that you want to see. Gets rid of all other columns. You can
#to refer to the columns by the column position (first column) or by name. The order in which you list the
#column names/positions is the order that the columns will be displayed.
  
diamonds %>% select(cut, color)

diamonds %>% select(1:5)
# or
diamonds %>% select(1,2,4,5)
#Retain all of the columns except for cut:
  diamonds %>% select(-cut)
#Retain all of the columns except for cut and color:
  diamonds %>% select(-cut, -color)
#Retain all of the columns except for the first five columns:
  diamonds %>% select (-1,-2,-3,-4,-5)
# or
diamonds %>% select(-(1:5))
  


#arrange()
#Allows you arrange values within a variable in ascending or descending order 
#(if that is applicable to your values). This can apply to both numerical and non-numerical values.


#Arrange cut by alphabetical order (A to Z):
  diamonds %>% arrange(cut)
#Arrange price by numerical order (lowest to highest):
  diamonds %>% arrange(price)
#Arrange cut in descending alphabetical order:
  diamonds %>% arrange(desc(cut))
#Arrange price in descending numerical order:
  diamonds %>% arrange(desc(price))

  
#count()
#Collapses the rows and counts the number of observations per group of values.

#Count the number of values for each cut:
diamonds %>% count(cut)
  # is the same as
diamonds %>% group_by(cut) %>% count()  

#rename()

diamonds %>% rename(PRICE = price)

diamonds %>% rename(length = x, width = y, depth = z)

#taking input from user

#row_number()
Using row_number() with mutate() will create a column of consecutive numbers. The row_number() function is useful for creating an identification number (an ID variable). It is also useful for labeling each
observation by a grouping variable
library(tidyverse)
### Practice Dataset
practice <-
  tibble(Subject = rep(c(1,2,3),8),
         Date = c("2019-01-02", "2019-01-02", "2019-01-02",
                  "2019-01-03", "2019-01-03", "2019-01-03",
                  "2019-01-04", "2019-01-04", "2019-01-04",
                  "2019-01-05", "2019-01-05", "2019-01-05",
                  "2019-01-06", "2019-01-06", "2019-01-06",
                  "2019-01-07", "2019-01-07", "2019-01-07",
                  "2019-01-08", "2019-01-08", "2019-01-08",
                  "2019-01-01", "2019-01-01", "2019-01-01"),
         DV = c(sample(1:10, 24, replace = T)),
         Inject = rep(c("Pos", "Neg", "Neg", "Neg", "Pos", "Pos"), 4))

View(practice)
## Method1
practice %>%
  mutate(Session = row_number())

## Method2
practice %>%
  group_by(Subject, Inject) %>%
  mutate(Session = row_number())
View(practice %>%
       group_by(Subject, Inject) %>%
       mutate(Session = row_number()))
## Method3
practice %>%
  group_by(Subject, Inject) %>%
  arrange(Date) %>%
  mutate(Session = row_number())

View(practice %>%
       group_by(Subject, Inject) %>%
       arrange(Date) %>%
       mutate(Session = row_number()))

Using the practice dataset from before, create a new variable called Health with values of sick or healthy:
  • Subject 1 is sick
• Subject 2 is healthy
• Subject 3 is healthy

## Method A
practice %>%
  mutate(Health = ifelse(Subject == 1,
                         "sick",
                         "healthy"))

## Method B
practice %>%
  mutate(Health = ifelse(Subject %in% c(2,3),
                         "healthy",
                         "sick"))
var = readline()

{
  var1 = readline("Enter first number:");
  var2 = readline("Enter second number:");
  
}

#Takin input from user
var1 = readline("Enter first number:")

var1 = readline("Enter first number:")
var2 = readline("Enter first number:")
var3 = readline("Enter first number:")
var4 = readline("Enter first number:")
var5 = readline("Enter first number:")

var = c(var1,var2,var3,var4,var5)


{
  num1 = as.integer(readline("Enter I number: "))
  num2 = as.integer(readline("Enter II number: "))
  num3 = as.integer(readline("Enter III number: "))
  num4 = as.integer(readline("Enter IV number: "))
  
}

{
  num1 = as.integer(readline("Enter I number: "))
  num2 = as.integer(readline("Enter II number: "))
  num3 = as.integer(readline("Enter III number: "))
  num4 = as.integer(readline("Enter IV number: "))
}


x = scan()
print(x)
y = scan(what = character())
y

casefold(y,upper = F)
casefold(y,upper = T)

toupper(y)
tolower(y)
class(x)
var1
var2
class(var1)
#create a vector by taking age as an input from 5 of your classmates

####Control Statements in R####
#if conditon
if (condition) {
  
}

x <- -2

if (x>0) {
  print(paste(x,"is positive"))
}

?paste

X = 77
y = "is positive"
z = "and it is natural number"
print()

paste(X,y,z)

#if - else

x <- -2
if (x>0) {
  print(paste(x,"is positive"))
}else{
  print(paste(x,"is negative"))}

#if else if
x <- 0
class(x)
if (x>0) {
  print(paste(x,"is positive"))
}else if (x<0){
  print(paste(x,"is negative"))
}else{
  print(paste(x,"is neither positive nor negative"))
}


#check whether the no is even or odd using control statement?


x=4
if ( is.integer(x)) {
  
}else{
  print(paste(x,"is not an integer"))}


num = as.integer(readline("Enter a number: "))
num = as.integer(readline("Enter a number: "))

{
  num1 = as.integer(readline("Enter I number: "))
  num2 = as.integer(readline("Enter II number: "))
  num3 = as.integer(readline("Enter III number: "))
  num4 = as.integer(readline("Enter IV number: "))
  
}

?scan
x = scan() 

x1 = scan(what = character())
length(x1)
x2 = scan(what = "")
x2
x3 = scan(what = logical())
#for loop
for (variable in vector) {
  
}
letters#use for printing alphabets
LETTERS
20000000000000000000000000000000000
format(20000000000000000000000000000000000,scientific = F)

format(2000000000000,scientific = F)
x<- letters[4:10]
for (i in x) {
  print(i)
}


for (q in 1:10) {
  print(q)
}
#print multiplication table of 7 upto 7*22
x=(1:22)
for (i in x) { print(7*i)
  
}

x <- 1:22
for (i in x) {
  print(paste("7*",i,'=',7*i))
}

v=seq(1,22)
for (i in v) {
  print(paste('7 x',i,'=',7*i))
  
}



#take input from the user and print it's factorial

num = as.integer(readline("Enter a number: "))
fact = 1
if(num < 0) {
  print("no is negative so factorial does not exist ")
} else if(num == 0) {
  print("The factorial of 0 = 1")
} else {
  for(i in 1:num) {
    fact = fact * i
  }
  print(paste("The factorial of", num ,"=",fact))
}


#While loop

while (condition) {
  
}

x = 2
while (x<=5) {
  print(x)
  x = x+1
}

x = 2
while (x<=5) {
  print(x)
  x = x+0.5
}

#Print multiplication table of 7 upto 7*22 using while loop

num=7  
while (num<=22) {
  print(paste("7 X",num,"=",7*num))
  num=num+1
}


#Print sum of first n natural numbers

#repeat statement

x = 1
#print 1 to 7

repeat{
  print(x)
  x = x+1
  if (x>7) {
    break
  }
}

#rivers

for ( i in 1:10){
  if(i ==5){
    break}
  print(i)
  
}


max(c(10,20,30))
#Print multiplication table of 7 upto 7*22 using repeat statement

x=1
repeat{
  print(paste("7 X",x,"=",7*x))
  x=x+1
  if(x>22){
    break
  }
}


#next statement


x <- 1:17

#print even number

for (i in x) {
  if (i%%2 !=0) {
    next
  }
  print(i)
}

#print odd numbers using next statement
x<- seq(1:17)

for (i in x) {
  if(i%%2==0){
    next
  }
  print(i)
}

## Print number greater than 20 

x = 15:25
for (i in x) {
  if (i>=20) {
    next
  }
  print(i)
}

#Print multiplication table of upto 7*24 but only even multiple
x=1:24
for (i in x){
  if (i%%2!=0){
    next
  }
  print(paste('7 x',i,'=',7*i))  
}
##Create a numeric vector of length 2 and print its 
#max element. 

#Create a numeric vector of length 3 and print its 
#max element. 

c = c(7,3,8)

if (c[1]>c[2]) {
  if (c[1]>c[3]) {
    print(c[1])
    
  }}else if (c[2]>c[3]){
  print(c[2])
}else{
  print(c[3])
}

t = c(1,2,3)
for (i in t) {
  print(t[i])
}

#t = c(1,2,3)
for (i in c(1,2,3)) {
  print(i)
}
print(2,"is positive")

for(q in 0:400){
  q = q+2
  print(q)
}

for(q in seq(0,400,2)){
  #q = q+2
  print(q)
}

for (variable in vector) {
  if (condition) {
    
  }
}

x = c(20,21,22,45,67,98,7,66,10,32,21)
for (i in x) {
  print(x)
  
}

x = c(20,21,22,45,67,98,7,66,10,32,21)
for (i in x) {
  print(i)
  
}

#Create a character vector with 5 consonant alphabets and 3 vowels
#print all the vowels from this vector using control statement

vowels = c("a","e","i","o","u")
vec = c("a","b","c","d","e","f","g","i")

for (i in vec) {
  if (i %in% vowels) {
    print(i)
  }
  
}
#### User defined function in R ####

fun <- function(a){
  print(a*a)
}

fun(9)

x = readline()

add <- function(){
  x = as.integer(readline("Enter a number: "))
  y = as.integer(readline("Enter a number: "))
  print(x+y)
}


calc <- function(){
  x = as.integer(readline("Enter a number: "))
  y = as.integer(readline("Enter a number: "))
  print(x+y)
  print(x-y)
  print(x*y)
  print(x/y) 
}

calc()
add()

?paste

paste("the answer"," ",21)
?paste0
paste0("the answer",21)

calc <- function(){
  x = as.integer(readline("Enter a number: "))
  y = as.integer(readline("Enter a number: "))
  print(paste("Sum"," = ",x+y))
  print(paste("Difference"," = ",x-y))
  print(paste("Product"," = ",x*y))
  print(paste("Quotient"," = ",x/y))
}

calc()
add1 <- function(a,b){
  print(a+b)
}

add1(21,-89)

#Define a function to take two numbers from the user and print the bigger number

fun1<-function(){
  a=as.integer(readline("enter a no buddy"))
  b=as.integer(readline("enter a no buddy:"))
  if(a>b){
    print(paste(a,"is big"))
  }else{
    print(paste(b,"is big"))
  }
}
fun1()

#Define a function to take Four numbers from the user 
#and print the number in ascending order



#create a function which will convert upper case letter to lower case

sort(c(1,4,5,2,3))
?sort


asc=function(a=as.integer(readline()), b=as.integer(readline()),c=as.integer(readline()),d=as.integer(readline())){
  v=c(a,b,c,d)
  v1=sort(v)
  print(v1)
}
asc()


#Define a function which will take two integers as an input and then 
#Print its addition, multiplication,subtraction,division

all <- function(){
  a = as.integer(readline("Enter a number :"))
  b = as.integer(readline("Enter a number :"))
  print(paste("Addition :",a+b))
  print(paste("Substraction :",a-b))
  print(paste("Multiplication :",a*b))
  print(paste("Division :",a/b))
}

all()

#Create an user defined function to create an employee data frame (Name,Gender,Age)
employee <- function() {
  Name=readline(print("enter emp name: "))
  Gender=as.character(readline(print("enter gender: ")))
  Age= as.integer(readline(print("enetr age: ")))
  emp=data.frame(Name, gender, Age)
  emp
}

employee()

sorting = function(x) {
  for (i in 1:(length(x)-1)) {
    for (j in (i+1):length(x)) {
      if ( x[i] > x[j]) {
        x[c(i,j)] = x[c(j,i)]
      }
      
    }
    
  }
  print(x)
}



x = c(1,2,9,3,4,5,15,16,17)
sorting(x)


#### Measure of central Tendency & Measure of Dispersion ####
#mean
x <- c(2,2,5,11,21,21,5,11,21,31,31)
mean(x)
median(x)

mode <- function(x){
  y<- table(x)
  print(y)
  m <- names(y)[which(y == max(y))]
  print(m)

}
mode(x)
mode <- function(x){
  y<- table(x)
  print(y)
  m <- names(y)[which(y == max(y))]
  print(m)
  
}

mode(x)

v = var(x)
sqrt(v)

max(x) - min(x)
?quantile
quantile(x,c(0,0.25,0.5,0.75,1))
quantile(x,c(0.25,0.5,0.75))

quantile(x,c(0.25,0.5,0.75))

quantile(x,seq(0,1,0.01))
x
quantile(x,c(0.25,0.5,0.75))
quantile(x,seq(0,1,0.1))
quantile(x,seq(0,1,0.01))

sample()


#install.packages("moments")
library(moments)
skewness(x)
kurtosis(x)

abs(-2)
calc <- function(x){
  print(paste("mean -",mean(x)))
  print(paste("median -",median(x)))
  print(paste("ksewness -",skewness(x)))
  print(paste("kurtosis -",kurtosis(x)))
  mode1 <- function(x){
    y<- table(x)
    #y
    m <- names(y)[which(y == max(y))]
    return(m)
    
  }
  return(mode1)
  #print("mode-",mode1(x))
  
}

mtcars
a = summary(mtcars$mpg)
names(a)
a$Min
a$min
?mtcars
View(mtcars)
x=c(1,2,3,4,5,5)
x
y = rev(x)
y
cor(x,y)
cov(x,y)
?cor

calc(x)
iris

all_in_one = function(x){
  mode <-function(x) {
    y = table(x)
    m=names(y)[which (y==max(y))]
    return(m)
  }
  
  print(paste("The mean is ",mean(x)))
  print(paste("The median is ",median(x)))
  print(paste("The mode is ",mode(x)))
  print(paste("The range is ",max(x)-min(x)))
  print(paste("The skewness is ",skewness(x)))
  print(paste("The kurtosis is ",kurtosis(x)))
  
}

all_in_one(x)

mtcars
View(mtcars)
boxplot(mtcars$mpg,xlab = 'X-axis',ylab = 'Y-axis',main = "Boxplot",col = 'green',)
?boxplot
boxplot(mtcars$mpg,mtcars$cyl)
install.packages("psych")
library(psych)


#histogram
#scatter plot
#pie diagram
#bar chart

?hist

#### Discrete uniform distribution #####

install.packages("purrr")
library(purrr)
?rdunif()

####Binomial Distributions####
?dbinom
n = 5
x = 0:5
p = 0.8

dbinom(1,size = 5, prob = 0.2)
dbinom(3,n,p)
?dbinom
?plot

1 - pbinom(4,5,0.2)

pbinom(4,5,0.2,lower.tail = F)
#Consider 3 binomial distributions with n = 10 and p = 0.8, 0.5 and 0.2.
#Plot the spike plots to represent the pmfs of the three distributions. 
?par
x <- 0:10
dbinom(x, 10, 0.2)
?dbinom
?plot
p1 <- dbinom(x, 10, 0.8)
p1
p2 <- dbinom(x, 10, 0.5)
p2
p3 <- dbinom(x, 10, 0.2)

par(mfrow=c(1,3))
?plot
plot(x,p1,"h",main = "Binomial pmf for p=0.2")
points(x,p1,pch=16)

plot(x,p2,"h",main = "Binomial pmf for p=0.5")
points(x,p2,pch=16)

plot(x,p3,"h",main = "Binomial pmf for p=0.8")
points(x,p3,pch=16)

#First graph is negatively skewed.
#Second graph is symmetric.
#Third graph is positively skewed.
plot(x,p1,"l",main = "Binomial pmf for p=0.5")
exp(1)
factorial(4)
?plot
par(mfcol=c(1,3))
?plot
plot(x,p1,"h",main = "Binomial pmf for p=0.2")
points(x,p1,pch=16)

plot(x,p2,"h",main = "Binomial pmf for p=0.5")
points(x,p2,pch=16)

plot(x,p3,"h",main = "Binomial pmf for p=0.8")
points(x,p3,pch=16)
par(mfcol=c(1,1))

###
dbinom(0,5,0.05)
pbinom(1,5,0.05)
1 - pbinom(1,5,0.05)
1 - dbinom(0,5,0.05)
#
p = 1/3
n = 5

####
par(bg = "white")

install.packages("gtools")
library(gtools)
?permute
permutations(2)
permute(1:4)
#### Poisson Distribution ####
#For Poisson distribution having lamda = 3, 5,9,13,22. Plot the pmf and comment.
?dpois

x <- 0:20

#plot(x, dpois(x,1), 'l', col = "red") #to see both the distributions on the same graph
plot(x,dpois(x,3),"l",col="red", main = "Comparison Poisson Probabilities")    
lines(x, dpois(x,5), col = "green")
lines(x, dpois(x,9), col = "blue")
lines(x, dpois(x,13), col = "orange")
lines(x, dpois(x,22), col = "black")

legend("topright",pch = 16, col=c("red","green","blue","orange","black"),c("lambda = 3","lambda = 5","lambda = 9","lambda = 13","lambda = 22"))


#### Continous Uniform Distribution ####
?dunif
#X~U(0,20)
#P(X<5)

punif(5,0,20)

#P(7<X<15)
punif(7,0,20)
punif(15,0,20)

punif(15,0,20) - punif(7,0,20)

#P>10
punif(10,0,20,T)

5==5
5==4

a = 1 - ppois(5,4);a
a1 = round(a,11);a1
b = ppois(5,4,F);b
b1 = round(b,11);b1
a==b

a1==b1
a = dpois(5,4,F)
#### Normal Distribution ####
#For Normal(µ,σ2)  distribution plot the PDF and comment.
#i)	µ= 0 and sd= 4,6,10,20
#ii)	µ=-10,-5,0,2,8 and  σ2= 2
b <- seq(-10,10,0.01)  #seq(start,stop,step/increment)
b

dnorm(b)
par(mfrow=c(1,2))

#i.)
?dnorm

plot(b,dnorm(b,mean=0,sd=4),type='l',col="red",
     main="pdf of normal",xlab="x",ylab="pdf")
lines(b,dnorm(b,mean=0,sd=6),type = 'l',col="green")
lines(b,dnorm(b,mean=0,sd=10),type = 'l',col="blue")
lines(b,dnorm(b,mean=0,sd=20),type = 'l',col="black")
legend("topright",lty = 1, col=c("red","green","blue","black"),c("sd2","sd3","sd5","sd10"))

#ii.)

plot(b,dnorm(b,mean=-10,sd=sqrt(2)),type='l',col="red",
     main="pdf of normal",xlab="x",ylab="pdf")
lines(b,dnorm(b,mean=-5,sd=sqrt(2)),type = 'l',col="green")
lines(b,dnorm(b,mean=0,sd=sqrt(2)),type = 'l',col="blue")
lines(b,dnorm(b,mean=2,sd=sqrt(2)),type = 'l',col="black")
lines(b,dnorm(b,mean=8,sd=sqrt(2)),type = 'l',col="orange")
legend("topright",lty = 1, col=c("red","green","blue","black","orange"),c("mu-10","mu-5","mu0","mu2","mu8"))

?dnorm
#### Sampling ####
sort(sample(1:50,11))
set.seed(100)
a <- c(1,2,3,4,5,6,7)


sample(a,2)


#### Hypothesis Testing ####

#install.packages("BSDA")
library(BSDA)
z.test()
prop.test()

t.test()

sqrt(50)

a = (6.2-5.4)

b = (10.24)/sqrt(50)
a/b  

#One Sample Z test
#Suppose the IQ in a certain population is normally distributed with a 
#mean of mu = 100 and SD = 15. A scientist want to know if a new medication 
#affects 20 patients to use it for one month and record 
#their IQ levels at the end of month.

#install.packages("BSDA")
library(BSDA)
#H0 :mu = 100

#enter the data
data = c(88,92,94,94,96,97,97,97,99,99,105,109,109,109,110,112,112,113,114,115)
length(data)

z.test(data,mu = 100,sigma.x = 15)
?z.test  
#p-value = 0.3632
#If p - value is less than alpha then we reject the null hypothesis
#this p-value is not less than 0.05, we do not reject null hypothesis


# Two sample Z test
#sigma1 = 15, sigma 2 = 15
data1 = c(88,92,94,94,96,97,97,97,99,99,105,109,109,109,110,112,112,113,114,115)
length(data1)
data2 = c(90,91,91,91,95,95,99,99,108,109,109,114,115,116,117,117, 128,129,130,133)

length(data2)
#H0 = mu1 = mu2

#H0 = mu1 != mu2

z.test(x = data1,y=data2,alternative = "two.sided",sigma.x = 15,sigma.y = 15)

#one Proportion Z-test in R

#in a certain country who suppoprt a certain law is 60%

#p = 0.60
#n = 100
#x = 64

prop.test(64,100,0.60,alternative = "two.sided")

a = prop.test(64,100,0.60,alternative = "two.sided")
a$p.value
?prop.test
#Two Sample
#Ho = p1 = p2
#Ho = p1 != p2
#Group A 400 Students with 342 female students
#Group B 400 Students with 290 female students

#check whether the proportion of females are the same 
#in the two groups of students

prop.test(x = c(342,290),
          n = c(400,400))

format(9.559e-06,scientific = F)

fun=function(p_val){
  if(p_val<=0.05){
    print('reject H0')
  }else{
  }
}
print("do not reject H0")
#One Sample t test

set.seed(1234)
my_data = data.frame(
  name = paste(rep("M_"),1:10),
  weight = round(rnorm(10,20,2))
)

?paste

#Ho = mu = 25
#H1 = mu != 25

t.test(my_data$weight,mu = 25)

#Nine items  of a sample had the following values -   
#45,47,50,52,48,47,49,53,51. 
#Does the mean of 9 items differ from population mean 47.5?

#paired two sample t test
#Create a table of 20 students with column name as "ROLL NO", 
#"Internal_I_Marks" & "Internals_II_Marks" out 0f 25
#Check whether if students had any marks difference in their two internals

marks = data.frame(roll=c(1:20),
                   Internal_I_Marks = round(rnorm(20,20,2),0),
                   Internal_II_Marks = round(rnorm(10,25,2),0)
)
marks



?t.test

t.test(x = marks$Internal_I_Marks,y = marks$Internal_II_Marks, alternative = "two.sided", paired = T)

?t.test
#Chi Square test for Association of Attributes
#Ho - There is No association between Smoking & Exercise.
#H1 - There is association between Smoking & Exercise.

library(MASS)
View(survey)
?survey
str(survey)
?survey
stu_data = data.frame(survey$Smoke,survey$Exer)
stu_data

stu_data_1 = table(stu_data)
stu_data_1
?chisq.test
a = chisq.test(stu_data_1)
a$p.value
#We do not reject the NULL HYPOTHESIS
#There is no association

#Ho - There is No association between Smoking & Exercise.
#H1 - There is association between Smoking & Exercise.

#Hair colour & colour of eye
Values = c(10,22,32,15,28,29,25,20,19)
#dimnames = list(c("A","B"),c("X","Y"))
m = matrix(Values, nrow = 3,ncol = 3,byrow = T,dimnames = list(c("Brown","Blue","Grey"),c("Black","Fair","Brown")));m
t = as.table(m)
a = chisq.test(m)
tc = chisq.test(t)



####IQ And eco conditions
?table


Values = c(460, 140,240,160)
dimnames = list(c("high","low"),c("rich","poor"))
m = matrix(Values, nrow = 2,ncol = 2,byrow = T,dimnames = dimnames);m
t = as.table(m)
a = chisq.test(m)
a$p.value
format(a$p.value,scientific = F)

#ANOVA
a = PlantGrowth
?PlantGrowth
View(PlantGrowth)
#H0
set.seed(1234)
my_data <- sample(PlantGrowth,10)
?sample

my_data <- sample(a,10)

str(PlantGrowth)

a = aov(PlantGrowth$weight~PlantGrowth$group)
summary(a)


#

field_seed=data.frame(
  A=c(20,21,23,16,20),
  B=c(18,20,17,25,15),
  C=c(25,28,22,28,32)
)
field_seed

field_seed <- data.frame(Yield = c(20,21,23,16,20,18,20,17,25,15,25,28,22,28,32),
                         Seeds = c(rep("A",5),rep("B",5),rep("C",5)))

field_seed
str(field_seed)

#field_seed$Seeds = as.factor(field_seed$Seeds)
a = aov(field_seed$Yield~field_seed$Seeds)
summary(a)


?wilcox.test()
#U test
# R program to illustrate
# Paired Samples Wilcoxon Test

# The data set
# Weight of the rabbit before treatment
before <-c(190.1, 190.9, 172.7, 213, 231.4,
           196.9, 172.2, 285.5, 225.2, 113.7)

# Weight of the rabbit after treatment
after <-c(392.9, 313.2, 345.1, 393, 434,
          227.9, 422, 383.9, 392.3, 352.2)

# Create a data frame
myData <- data.frame(
  group = rep(c("before", "after"), each = 10),
  weight = c(before, after)
)

# Print all data
print(myData)

# Paired Samples Wilcoxon Test
result = wilcox.test(before, after, paired = TRUE)

# Printing the results
print(result)
#### ggplot2####
#Grammer of Graphics
install.packages("ggplot2")
library(ggplot2)
car = read.csv("D:/C Drive/Desktop/SURAJ SINGH/Teaching/COLLEGES/RJ College/2022-2023/PG/MSC SEM I/DATA/archive/CarPrice_Assignment_v1.csv")
dim(car)
View(car)
View(colors())
colors()
ggplot(data = car)
ggplot(data = car,aes(x=price))
ggplot(data = car,aes(x=price))+geom_histogram()
ggplot(data = car,aes(x=price))+geom_histogram(fill = "darkorchid3")
ggplot(data = car,aes(x=price))+geom_histogram(fill = "darkorchid3",col = "darkorange")
#by default 30 bins are there
ggplot(data = car,aes(x=price))+geom_histogram(fill = "darkorchid3",col = "darkorange",bins = 50)
ggplot(data = car,aes(x=price))+geom_histogram(fill = "darkorchid3",col = "darkorange",binwidth = 2000)

ggsave("D:/C Drive/Desktop/SURAJ SINGH/Teaching/COLLEGES/RJ College/2022-2023/PG/MSC SEM I/DATA/archive/plot1.pdf")
ggsave("D:/C Drive/Desktop/SURAJ SINGH/Teaching/COLLEGES/RJ College/2022-2023/PG/MSC SEM I/DATA/archive/plot1.png")
?aes
?geom_histogram
ggplot(data = car,aes(x = price,fill = fueltype)) +geom_histogram()
ggplot(data = car,aes(x = price,fill = fueltype)) +geom_histogram()
ggplot(data = car,aes(x = price,fill = carbody)) +geom_histogram()
ggplot(data = car,aes(x = price,fill = enginelocation)) +geom_histogram()

ggplot(data = car,aes(x=horsepower))+geom_histogram()
ggplot(data = car,aes(x=horsepower))+geom_histogram(fill = "khaki3",col = "lavenderblush")
ggplot(data = car,aes(x = horsepower,fill = cylindernumber)) +geom_histogram()

min(car$price)
max(car$price)


ggplot(data = car,aes(x=price))+geom_histogram(fill = 1:30)

#____________________________________
#barplot is used to understand the distn of categorical columns & 
#histogram is used to understand the distn of continous numerical columns

#barplot
ggplot(data = car,aes(x = carbody)) + geom_bar()
ggplot(data = car,aes(x = carbody)) + geom_bar(fill = "palegreen4")
ggplot(data = car,aes(x = carbody)) + geom_bar(fill = "palegreen4",col = "green") 

ggplot(data = car,aes(x = carbody,fill = doornumber)) + geom_bar()
ggplot(data = car,aes(x = carbody,fill = doornumber)) + geom_bar(position = "dodge")

View(mtcars)
ggplot(data = mtcars,aes(x = cyl)) + geom_bar()
ggplot(data = mtcars,aes(x = cyl,fill = gear)) + geom_bar()
?geom_histogram

ggplot(data = car,aes(x = fuelsystem)) + geom_bar()
ggplot(data = car,aes(x = fuelsystem)) + geom_bar(fill = "violet",col = "tomato")
ggplot(data = car,aes(x = fuelsystem,fill = fuelsystem)) + geom_bar()
ggplot(data = car,aes(x = fuelsystem,fill = enginetype)) + geom_bar()

#__________________________________
#ScatterPlot
# Y & X are continuous numerical columns
ggplot(data = car,aes(y = price,x = enginesize)) + geom_point()
ggplot(data = car,aes(y = price,x = enginesize)) + geom_point(col = "yellowgreen")
ggplot(data = car,aes(y = price,x = enginesize,col = cylindernumber)) + geom_point()
ggplot(data = car,aes(y = price,x = enginesize,col = cylindernumber)) + geom_point(size = 2)
ggplot(data = car,aes(y = price,x = enginesize,col = cylindernumber,shape = fueltype)) + geom_point(size = 2)

ggplot(data = car,aes(y = horsepower,x = citympg)) + geom_point()
ggplot(data = car,aes(y = horsepower,x = citympg)) + geom_point(col = "rosybrown")
ggplot(data = car,aes(y = horsepower,x = citympg,col = carbody)) + geom_point(size=2)

#____________________________________________________
#LinePlot
ggplot(data = car,aes(y = carlength,x = carwidth)) + geom_line()
ggplot(data = car,aes(y = carlength,x = carwidth)) + geom_line(col = "red")
ggplot(data = car,aes(y = carlength,x = carwidth,col = fueltype)) + geom_line()

ggplot(data = car,aes(y = citympg,x = highwaympg)) + geom_line()
ggplot(data = car,aes(y = citympg,x = highwaympg)) + geom_line(col = "sandybrown")
ggplot(data = car,aes(y = citympg,x = highwaympg,col = doornumber)) + geom_line()


#Scatter-plot
ggplot(data = car,aes(y = price,x = enginesize)) + geom_point() + geom_line()


#geom_smooth
ggplot(data = car,aes(y = price,x = enginesize)) + geom_point() + geom_smooth()
ggplot(data = car,aes(y = price,x = enginesize)) + geom_point(col = "palegreen4") + geom_smooth(col = "orange")

#boxplot
#distribution of categorical column wrt continous column
ggplot(data = car,aes(y = price,x = carbody)) + geom_boxplot()
ggplot(data = car,aes(y = price,x = carbody)) + geom_boxplot(fill = "peachpuff3")
ggplot(data = car,aes(y = price,x = carbody,fill = aspiration)) + geom_boxplot()

ggplot(data = car,aes(y = peakrpm,x = fueltype)) + geom_boxplot()
ggplot(data = car,aes(y = peakrpm,x = fueltype)) + geom_boxplot(fill = "salmon2")

#Areaplot
#area depicting the distribution of particular column

ggplot(data = car,aes(x = price)) + geom_area(stat = "bin")
ggplot(data = car,aes(x = price)) + geom_area(stat = "bin",bins = 45)
ggplot(data = car,aes(x = price)) + geom_area(stat = "bin",bins = 45,fill = "yellow")



ggplot(data = car,aes(x = price,fill = fuelsystem)) + geom_area(stat = "bin")
ggplot(data = car,aes(x = price,fill = carbody)) + geom_area(stat = "bin")

#facetgrid
#divide this category into different subgroups
ggplot(data = car,aes(x = price,fill = carbody)) +geom_area(stat = "bin") + facet_grid(~carbody)

#theme
t1 = ggplot(data = car,aes(y = price,x = enginesize)) + geom_point(col = "palegreen4") + geom_smooth(col = "orange")

t2 = t1 + theme(panel.background = element_rect(fill = "peachpuff"))
t3 = t2 + theme(plot.background = element_rect(fill = "salmon"))

t4 = t3 + ggtitle("Price vs Engine Size")

t4 + theme(plot.title = element_text(hjust = 0.5,colour = "Green"))

install.packages("cowplot")
library(cowplot)
plot_grid(a,b)

a = ggplot(data = car,aes(x = price,fill = fuelsystem)) + geom_area(stat = "bin")
b = ggplot(data = car,aes(x = price,fill = carbody)) + geom_area(stat = "bin")


#plotly
#used to make interactive plots
install.packages("plotly")
library(plotly)
plot_ly(data = car, x = ~enginesize, y = ~price)
plot_ly(data = car, x = ~enginesize, y = ~price, color = ~enginetype)
plot_ly(data = car, x = ~price, type = "histogram")
plot_ly(data = car, x = ~price, type = "histogram",color = ~price)
plot_ly(data = car, x = ~price, type = "histogram",color = ~x)
plot_ly(data = car, x = ~price, type = "box")



ggplot(data = mtcars,aes(x = gear,fill = cyl)) +geom_bar()

#### Plot ####
#Line Plot
data()
?plot
?iris
v <- c(8,14,26,5,43)
plot(v,type="p")
plot(v,type="l")

plot(v, type = "o", col = "red",xlab = "X - Axis", 
     ylab = "Y - Axis",main = "Line Chart")
?plot
par(mfrow = c(1,2))
plot(v,type="p")
plot(v,type="o")

par(bg = "white")
x = c(1:11)
y = c(12:22)
plot(x,y,type = "l")

data = iris
names(data)
View(data)
str(data)
?plot
par(mfrow = c(1,2))
plot(data$Sepal.Length,type = "o",col = "red",main = "Comparison between Sepal Length & Petal Length")

lines(data$Petal.Length,type = "o",col = "blue")

plot(data$Sepal.Length,type = "o",col = "red",main = "Comparison between Sepal Length & Petal Length",xlim = c(0,10))

lines(data$Petal.Length,type = "o",col = "blue")

plot(data$Sepal.Width,type = "o",col = "red",main = "Comparison between Sepal width & Petal width")

lines(data$Petal.Width,type = "o",col = "blue")




 #Scatter Plot
mtcars
?mtcars
data1 = mtcars
View(data1) 

data1 = mtcars
View(data1) 
names(data1)
par(mfrow = c(1,2))
plot(data1$wt,data1$mpg,xlab = "Weight",ylab = "Milage", main = "Weight vs Milage")
abline(lm(mpg~wt,data = data1),col = 'red')
lm(mpg~wt+qsec,data = mtcars)
?plot
pairs(data1)
pairs(~wt+mpg+disp+cyl, data = data1)

plot(data1$mpg,data1$wt,xlab = "Milage",ylab = "Weight", main = "Milage vs Weight")
abline(lm(wt~mpg,data = data1),col = 'red')

#barplot

H = c(5,7,9,11)
M = c("A","B","C","D")
barplot(H,names.arg = M,col = "red",border = "green")

View(mtcars)
?barplot
#Bar Diagrams

# Create the data for the chart
H <- c(1,2,3,4,5)

# Plot the bar chart 
barplot(H, main="Car Distribution",xlab="Number of Gears",col = "Red")
?barplot
# Simple Bar Plot
counts <- table(mtcars$gear)

par(mfrow=c(1,1))

barplot(mtcars$gear)
mtcars
mtcars$gear
view(mtcars)  
barplot(counts, main="Car Distribution",
        xlab="Number of Gears", col = "Red")
?barplot
# Simple Bar Plot
counts <- table(mtcars$gear)
View(mtcars)
par(mfrow=c(1,1))

barplot(mtcars$gear)
mtcars
mtcars$gear
view(mtcars)  
barplot(counts, main="Car Distribution",
        xlab="Number of Gears", col = "Red")
?barplot

# Multiple
counts <- table(mtcars$vs, mtcars$gear)
rownames(counts)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red")
        , beside = TRUE)
legend("topright", pch = 16, col=c("darkblue","red"),c("a","b"))
legend("topright", pch = 16, col=c("darkblue","red"),c("a","b"),cex = 0.7)

barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"), beside = TRUE)
?barplot
# Stacked

counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts),beside = F)


View(mtcars)

###Percentage 
p1 <- as.matrix(prop.table(table(mtcars$vs))) * 100
p2 <- as.matrix(prop.table(table(mtcars$gear))) * 100
#### Explain 
k1 <- prop.table(table(mtcars$vs))*100

k2 <- prop.table(table(mtcars$gear))* 100
op <- par(mfrow=c(1,2))
barplot(k1, legend=TRUE, names="status", ylab="Percent")
barplot(k2, legend=TRUE, names="Type")

#### Done

par(mfrow=c(1,2))
barplot(p1, legend=F, names="status", ylab="Percent")
barplot(p2, legend=F, names="Type")

#Pie Charts

#Simple pie chart
?paste
?round
?pie
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main="Pie Chart of Countries")
pie(slices)
#Pie chart with percentage written on it
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries")

#Stem & Leaf

data_2 <- 10:100
stem(data_2)


data <- 11:99
stem(11:120)
par(mfrow = c(1,2))
#Box - Plot
?boxplot
air <- airquality
View(air)
?boxplot
boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red")
boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red",horizontal = T)
boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red",horizontal = F,notch = T)
boxplot(air, main = "air",col = "green",border = "red")
boxplot(Temp~Month,data = air, main = "Temp~Month",col = "green",border = "red")



a = boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red")
a$out

a = boxplot(air$Ozone, main = "air$Ozone",col = "green",border = "red")
a$out
which(air$Ozone == 135)
which(air$Ozone == 168)

## Frequency distributions ##
#Ungrouped data
c(11,11,12,12,13,14,15,16,11,12,13,14,15)
?table
y <- table(a)
y



#names(y)[which(y==max(y))]
names(iris$Species)[which(iris$Species==max(iris$Species))]


#z <- quantile(a)
#z[3]



#Grouped data Inclusive Class
#In case of Inclusive Class - Upper Limit is Included 
#in that very class Interval
?sample()
?cut

cut(b, 4,right = T)
cut(b, c(10,12,14,16,18,20),include.lowest = T,right = T)
cut(b, c(10,12,14,16,18,20),labels = c("10-12","13-14","15-16","17-18","19-20"),include.lowest = T,right = T)



set.seed(100)
b <- sample(10:20, 100, replace = T)
#ignore
b_cut <- cut(b, 4)
table(b_cut)




b_cut <- cut(b, 4,right = T) ##inclusive
b_cut <- cut(b, c(10,12,14,16,18,20),right = T) ##inclusive



b_cut <- cut(b, c(10,12,14,16,18,20),include.lowest = T,right = T) ##inclusive
b_cut <- cut(b, c(10,12,14,16,18,20),labels = c("10-12","13-14","15-16","17-18","19-20"),include.lowest = T,right = T) ##inclusive
table(b_cut)





#Grouped data Exclusive Class
#In case of Inclusive Class - Upper Limit is Included
#in the lower limit of next class interval
b_cut1 <- cut(b, 4,right = F) ##exclusive
b_cut1 <- cut(b, c(10,12,14,16,18,20),right = F) ##exclusive
table(b_cut1)
b_cut1 <- cut(b, c(10,12,14,16,18,20),labels = c("10-12","12-14","14-16","16-18","18-20"),right = F) ##exclusive
table(b_cut1)
first <- as.data.frame(table(b_cut1))
##check
table(b)
#b <- as.data.frame(table(b))
?hist
View(airquality)
Temperature <- airquality$Temp
hist(Temperature)



# histogram with added parameters
hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="blue",labels = T
)



#Histogram with different breaks
hist(Temperature, breaks=4, main="With breaks=4")
hist(Temperature, breaks=20, main="With breaks=20")
#
hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="Green",
     border="red",
     breaks=c(55,60,70,75,80,100)
)
#Polygon & Ogives
s = sample(50:500, 100, replace = T)



h = hist(s, xlim = c(0, max(s) + 10), col = "blue", right = F)



h

names(h)

#Now we will create our x,y coordinates from the counts and mids variables.
mp = c(min(h$mids) - (h$mids[2] - h$mids[1]), h$mids, max(h$mids) + (h$mids[2] - 
                                                                       h$mids[1]))
min(h$mids) - (h$mids[2] - h$mids[1])
max(h$mids) + (h$mids[2] - h$mids[1])
mp




freq = c(0, h$counts, 0)
freq



h = hist(s, xlim = c(0,max(s) + 50), col = "Steelblue3", right = F)
lines(mp, freq, type = "b", pch = 20, col = "red", lwd = 3)
#ogive
#OGIVE



ucl = seq(from = min(h$breaks), to = max(h$breaks), by = h$breaks[2] - h$breaks[1])
ucl = c(0, ucl[-1])
ucl



cf = c(0, cumsum(h$counts))
cf
cf_1 <- rev(cf)



#PLOT
par(bg = "white")
par(bg = "gray90")
plot(ucl, cf, type = "b", col = "blue", pch = 20)
hist(s, xlim = c(0,max(s) + 50), col = "Steelblue3", right = F)
line(ucl, cf, type = "b", col = "blue", pch = 20)
#data.frame(ucl,cf)
####
#data.frame(ucl,rev(cf))
#rev(cf)
#plot(ucl,rev(cf), type = "b", col = "blue", pch = 20)




###Empirical cdf
#Typically, the distribution of observations for a data sample
#fits a well-known probability distribution.



#For example, the heights of humans will fit the normal (Gaussian) probability distribution.



#This is not always the case. Sometimes the observations in a collected data
#sample do not fit any known probability distribution and 
#cannot be easily forced into an existing distribution
#by data transforms or parameterization of the distribution function.



#Instead, an empirical probability distribution must be used.
?ecdf
a = c(2,3,2,3,4,5)
plot(ecdf(a))

#### R Control Statements ####

#if condition
#This control structure checks the expression provided in parenthesis is true or not. 
#If true, the execution of the statements in braces {} continues. 
if(expression){
  statements
  ....
  ....
}

x <- 100

if(x > 10){ 
  print("x is greater than 10") 
}

#if statement

p <- -10 
if (p>0){
  print("p is positive")
}


p <- 9
if (p%%2 == 0) {
  print("p is even")
}else{
  print(" p is odd")
}

#if - else statement

q <- -10
if (q>0) {
  print("q is positive")
}else{
  print("q is not positive")
}


#else if

r <- 0
if (r>0) {
  print("r is positive")
}else if (r<0) {
  print("r is negative")
}else {
  print("r is zero")
}

n <- 3
if(sum(n/1:n==n%/%1:n)==2){
  print("prime")
}else{
  print("Composite")
}

####

a <- 10
b <- 1

#1
if (a>b) {
  print("Team A scores more goal than team B")
}

#2
if (a>b) {
  print("Team A scores more goal than team B")
}else{
  print("Team B scores more goal than team A")
}

#3
if (a>b) {
  print("Team A Won")
}else if (b>a) {
  print("Team B Won")
}else{
  print("There is a tie")
}

####
for (r in 1:10) {
  print("Amaan is my fav student")
}





# For loop
#It is a type of loop or sequence of 
#statements executed repeatedly until exit condition is reached.

x <- letters[4:10] 

for(i in x){ 
  print(i) 
}


#While loop

#while loop is another kind of loop iterated until a condition is satisfied. 
#The testing expression is checked first before executing the body of loop.

x = 1

# Print 1 to 5 
while(x <= 5){ 
  print(x) 
  x = x + 1
}


for (i in 1:10) {
  print(10*i)
}

a <- 1
while(a <= 10){ 
  print(a*10) 
  a = a + 1
}

#user defined functions

f <- function(x){
  y <- 10
  x + y
}

f(5)  
f(10)  

f <- function(x,y){
  x + y
}

f(10,5)

data()
 


x = c(1,2,3,4,5)
y = c(156,149,166,164,155)

install.packages("gtools")

library(gtools)

x = permutations(n = 5,r = 2 v = 1:5)
N = 25
sample(x,2)
as.data.frame()

?permn

for (i in 1:length(5)) {
  if (condition) {
    
  }
}

#### Probability ####
install.packages("prob")
library(prob)
tosscoin(1)
tosscoin()
rolldie(1)

#### Fibonacci ####

# take input from the user
nterms = as.integer(readline("enter a number:"))

# first two terms
n1 = 0
n2 = 1
count = 2
# check if the number of terms is valid
if(nterms <= 0) {
  print("Plese enter a positive integer")
} else {
  if(nterms == 1) {
    print("Fibonacci sequence:")
    print(n1)
  } else {
    print("Fibonacci sequence:")
    print(n1)
    print(n2)
    while(count < nterms) {
      nth = n1 + n2
      print(nth)
      # update values
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}



#####Sampling####
# Simple random sampling
?sample
sample(1:10,10)
sample(1:10,11,replace = T)
sample(c("red","green"),10,replace = T,prob = c(0.6,0.4))
sample(c("red","green"),10,replace = T,prob = c(0.9,0.1))

a = sample(1:6,100,replace = T)
table(a)/100

a = sample(1:6,1000,replace = T)
table(a)/1000

#Systematic Sampling
#install.packages("TeachingSampling") 
library(TeachingSampling)

P <- c("Mon-8", "Tues-4", "Wed-4", "Thurs-6", "Fri-7","Sat-45","Sun-34","Mon-21", "Tues-11","Wed-34","Thurs-16","Fri-10","Sat-17","Sun-19","Sun-20")
length(P)
systematic_sample <- S.SY(15,2)
systematic_sample

P[systematic_sample]

?
#Practise

# Vector U contains the label of a population of size N=5
U <- c("Yves", "Ken", "Erik", "Sharon", "Leslie")
# The population of size N=5 is divided in a=2 groups
# Draws a Systematic sample. 
sam <- S.SY(5,3)
sam
# The selected sample is
U[sam]
# There are only two possible samples
?S.SY

############
## Example 2
############
# Uses the Lucy data to draw a Systematic sample
data(Lucy)
attach(Lucy)

N <- dim(Lucy)[1]
# The population is divided in 6 groups
# The selected sample
sam <- S.SY(N,6)
# The information about the units in the sample is stored in an object called data
data <- Lucy[sam,]
data
dim(data)
View(data)

sys = function(N,n){
  k = ceiling(N/n)
  r = sample(1:k, 1)
  seq(r, r + k*(n-1), k)
}
sys()


x = c(2,3,4,5,6,7,8,9,10)

k = 3
for (i in k:length(x)) {
  print(x[i])
  i = i+k
  
}

for(i in seq(from=k, to=length(x), by=2)){
  #  stuff, such as
  print(x[i])
}

unique(iris$Species)
View(iris)
#Stratified Sampling
install.packages("sampling")
library(sampling)  
stratas = strata(iris, c("Species"),size = c(3,3,2), method = "srswor")
stratas_data = getdata(iris, stratas);stratas_data
stratas
?strata

x = c(rep("A",4),rep("B",3),rep("C",5),rep("D",5))
x;length(x)
df = data.frame("name" = x,num = 1:17);df
class(x)
stratas = strata(df, c("name"),size = c(3,3,2,1), method = "srswor");stratas


#Cluster Sampling

install.packages("SDaA")
library(SDaA)
data("teachers")
head(teachers)
View(teachers)
#list of all the school_ids 
unique(teachers[,2])

#creating a cluster sample with 7 randomly selected clusters.
#Here we have formed clusters using the school variable.Hence each cluster contains the workload data of 7 randomly selected schools.
set.seed(123456)
View(teachers)
cl = cluster(teachers,clustername=c("school"),size=7,method="srswor")
cl
unique(teachers$school)
cl_data = getdata(teachers, cl);cl_data
View(cl_data)
unique(cl_data$school)
head(cl_data)
View(cl_data)
#list of the randomly selected schools
unique(cl_data[,6])
#count of workload details within each school clusters
table(cl_data$school)

#random sampling of clusters with a sample size of 5, so that each cluster contains 5 randomly selected workload details per school cluster.
cl_sam <- cl_data %>% group_by(school) %>% sample_n(size = 5)
#Each of the 7 clusters have 5 randomly selected workload data.
table(cl_sam$school)

??cluster

cl=cluster(teachers,clustername=c("school"),size=7,method="srswor")

#Correlation

View(mtcars)
?cor
cov(mtcars$mpg,mtcars$hp)
cor(mtcars$mpg,mtcars$hp,method = "pearson")
cor(mtcars$mpg,mtcars$hp,method = "spearman")
pairs(mtcars)
cor(mtcars)

a = as.matrix(cor(mtcars))

X = c(15, 32, 25, 30, 35, 20, 19, 22, 27, 31)
Y = c(50, 70, 65, 72, 90, 58, 53, 57, 68, 74)

cor(X, Y, method = "spearman")

X = c(53, 47, 42, 60, 63,  52, 57, 55, 61, 48)
Y = c(72, 61, 62, 85, 80, 65, 79, 75, 84, 73)

cor(X, Y)

#####Hypothesis Testing ####
#z-test
install.packages("BSDA")
library(BSDA)

#enter IQ levels for 20 patients
data = c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99,
         105, 109, 109, 109, 110, 112, 112, 113, 114, 115)

#perform one sample z-test
z.test(data, mu=100, sigma.x=15)

?z.tes
?z.test

install.packages("moments")
library(moments)
combn(5,1)
choose(5,1)
choose(5,2)
?dgeom
