#repeat statement
x=1
#print 1 to 6
repeat{
  print(x)
  x=x+1
  if (x>7) {
    break   #break will end the the code TERMINATE exection of loop
  }
}

rivers

max(c(10,20,30))

for (i in 1:10) {
  if (i==5) {
    break
  }
  print(i)
}

# Print multiplication table of 7 upto 7*22 using repeat statement
x=1
repeat{
  print(paste("7","x",x,"=",x*7))
  x=x+1
  if(x>22){
    break
  }
}

x<- 1:17
# print even number
y=c(1,2)


y=c(y,3)

y=0
for (i in x) {
  if (i%%2 != 0) {
    next
  }
  y=c(y,i)
  #print(i)
}
y


#print odd numbers using next statement
x <- seq(1:17)
for (i in x) {
  if (i%%2==0) {
    next
  }
  print(i)
}

#Create a numeric vector of length 2 and print its max element
v<-c(21,69)
#v[1]>v[2]
if (v[1]>v[2]) {
  print(paste('Max elemetn',v[1]))
}else{
  print(paste('Max elemetn',v[2]))
}

# Create a numeric vector of length 3 and print its max element
v<-c(1,2,3)
if (v[1]>v[2]) {
  if (v[1]>v[3]) {
    print(v[1])
  }
}else if (v[2]>v[3]) {
    print(v[2])
}else{
    print(v[3])
}

# Create a character vector with 5 consonant alphabet and 3 vowels print all the vowels from this
# vector using control statment
word=c('a','b','h','i')
vowel=c('a','e','i','o','u');vowel
for (i in word) {
  if (i %in% vowel) { # %in% to find the vector
    print(i)
  }
}

#5 consonent and 3 vowels in c and v-> Separated in two different vectors
word=c('a','b','h','i','q','z','u','v')
vowel=c('a','e','i','o','u')
c<-c()
v<-c()
for (i in word) {
  if (i %in% vowel) { # %in% to find the vector
    c<-c(c,i)
  }else{
    v<-c(v,i)
  }
}
c
v

# write a loop to find sum of all element  in a matrix c=c(7,8,3)


############# User defined function in R
x<-function(){
  
}
x()

# Simple function, no inputs!!
hello_world<-function(){
  print('Hello world in RR!!!')
}
hello_world()

# function with a sigle argument
hello_name<-function(name){
  print(paste('Hello',name))
}
hello_name("James")

# Function to add 2 numbers
add_num<-function(n1,n2){
  print(n1+n2)
}
add_num(5,6)


# switch() function similar to switch case in Python
HRA<-function(city){
  hra_amt<-switch (toupper(city),
    BLR = 5000,
    MUM = 6000,
    DEL = 4000,
    8000
  )
  return(hra_amt)
}

HRA('blr')
HRA('MUM')
HRA('pune')


#create simple calculator in R create a msg to subtract which number 1 or 2
add_num<-function(n1,n2){
  print(n1+n2)
}
sub_num<-function(n1,n2){
  n<-as.integer(readline("Which no to sub from 1 or 2 "))
  if (n ==1) {
    sub_num(n1,n2)
  }else{
    sub_num(n2,n1)
  }
  print(n1-n2)
}
mult_num<-function(n1,n2){
  print(n1*n2)
}
div_num<-function(n1,n2){
  print(n1/n2)
}

n1<-as.integer(readline("Enter 1 number: "))
n2<-as.integer(readline("Enter 2 number: "))
calc<-function(num){
  calc_amt<-switch (num,
    add = add_num(n1,n2),
    sub = sub_num(n1,n2),
    multi = mult_num(n1,n2)
  )
}
calc('add')
calc('sub')
calc('multi')


for (i in 1:5) {
  print(paste(i))
}

for (i in 1:5) {
  cat(i,"\n")
}

# x amount in the beginning. Bank gives interest at rate of 8% p.a

# R function to find the square of any user given no. If square value is less than 100,then
# increment user value by 1 & find square again. Repeat this step till square exceeds 100

squ<-function(n){
  repeat{
    sq=n*n
    message('The square is ',sq)
    #cat(sq,"\n")
    if (sq>=100) break
    n=n+1
  }
  return(n)
  
}
squ(2)


get_finalb<-function(amt,year,rate){
  for (i in 1:year) {
    interest=round()
  }
}



################################## Tidyverse Package #########################3333
install.packages('tidyverse')
library(tidyverse)  # if other package have same name to aviod naming conflict we use this Library 
View(diamonds)
?diamonds
str(diamonds)
names(diamonds)
summary(diamonds)

data()  ## ggplot2 is for visualization purpose 
data('tidyverse')

#%>% is called forward pipe operator
#It pass the left hand side of the operator to first argument
# of the right hand side of the operator.
# In the following example, the data frame iris gets passed to head():

#library(magrittr)
iris %>% head() # same as head(iris)

iris %>% head() %>% summary() # similar to summary(head(iris))

#mutate similar to $ Adds new column or modifies current variable in the dataset 

#Create three new column in diamonds dataset namely JustOne store 1 in it. Values store something in it
library(magrittr)
diamonds %>%
  mutate(JustOne = 1,
         Values = 'something',
         Simple = TRUE)

diamonds_new= diamonds %>% mutate(JustOne = 1,Values = "something",Simple = TRUE)

View(diamonds_new)

diamonds.new <- #saving changes to diamonds as a new object
  diamonds %>%  # original dataset
  mutate(price200=price-200,  # $200 OFF from the origianl price
         price20perc=price*.2, # 20% of the original price
         price20percoff = price * 0.80, # 20% OFF from the original price
         pricepercarat = price / carat, # ratio of price to carat
         pizza = depth ^ 2)             # Square the original depth

View(diamonds.new)
view(diamonds %>% mutate(price20percoff = price * 0.80))
head(diamonds %>% mutate(price20percoff = price * 0.80))

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
#creating a dataset with 2 variables(Sex, TestScore)
Sex <- factor(c("male", "m", "M", "Female", "Female", "Female"))
TestScore <- c(10,20,10,25,12,5)
dataset <- tibble(Sex,TestScore)
str(dataset)

?tibble

dataset %>% 
  mutate(Sex.new = recode(Sex,
                          "m" = "Male",
                          "M" = "Male",
                          "male" = "Male"))
dataset = as.data.frame(dataset)
#summarize() collapse all rows and returns a one-row summary

diamonds %>%
  summarize(avg.price = mean(price))


diamonds %>% 
  summarize(avg.price = mean(price),     # average price of all diamonds
            dbl.price = mean(price) * 2, # calculating double the average price
            random.add = 1 + 2,          # a math operation without an existing variable 
            avg.carat = mean(carat),     # average carat size of all diamonds
            stdev.price = sd(price))     # calculating the standard deviation 

#group_by() & ungroup()

# Creating idntification no to represent 50 individual people
ID<-c(1:50)
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

# average score of male and female separately 
data %>%
  group_by(Sex) %>%
  summarize(m=mean(Score),  # Calculate the mean
            s=sd(Score),  # calculate the standard deviation
            n=n()) %>%
  ungroup()

#avg price of each and every color for diamonds
View(diamonds)

diamonds %>%
  group_by(color) %>%
  summarize(m=mean(price),
            n=n()) %>%
ungroup()

#for every color for every cut quality 
diamonds %>% 
  group_by(color, cut) %>%
  summarize(m=mean(price))%>%
  ungroup()
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

#Only retain specific rows of data that meet the specified requirements 
diamonds %>% filter(cut == "Fair")

diamonds %>%
  filter(cut == "Fair"| cut == "Good", price <= 600)

diamonds %>%
  filter(cut %in% c("Fair","Good"), price <= 600)

diamonds %>%  #error cuz cut cannot be both
  filter(cut == "Fair", cut == "Good", price <= 600)

diamonds %>%
  filter(cut == "Fair" & cut == "Good", price <= 600)

diamonds %>%
  filter(cut == "Fair" & cut == "Good" & price <= 600)


diamonds %>%
  filter(cut == "Fair" , depth < 60 , price <= 600)

diamonds %>%
  filter(price %in% seq(c(300:650)))

#Only display data from diamonds that do not have a cut value of Fair:
diamonds %>% filter(cut != "Fair")

#select()
#Function: Select only the columns (variables) that you want to see. Gets rid of all other columns. You can
#to refer to the columns by the column position (first column) or by name. The order in which you list the
#column names/positions is the order that the columns will be displayed.

diamonds %>% select(cut,color)
diamonds %>% select(1,2,4,5)
#Retain all the columns except for cut:
diamonds %>% select(-cut)
# Retain all the column except for cut and color
diamonds %>% select(-cut,-color)
# Retain all the columns except for the first five columns:
diamonds %>% select(-1,-2,-3,-4,-5)
#or
diamonds %>% select(-(1:5))

# arrange()
#Allows you arrange values within a vairable in ascending or descending order
# ()
#Count the number of values for each cut:
diamonds %>% count(cut)
# is the same as
diamonds %>% group_by(cut) %>% count()  

#rename()

diamonds %>% rename(PRICE = price)

diamonds %>% rename(length = x, width = y, depth = z)

#taking input from user

#row_number()
#Using row_number() with mutate() will create a column of consecutive numbers. The row_number() function is useful for creating an identification number (an ID variable). It is also useful for labeling each
#observation by a grouping variable



#### Miscellaneous command
#count() collapse the rows and counts the number of observations per group of values


#Q What is the avg price for cut qulaity premium
#Q What s the avg price per carat for evert=y cut quality 
#Q group by clarity and color and find avg depth of each cut quality


View(diamonds)

diamonds %>% filter(cut =='Premium')%>%
  group_by(price)%>%
  mutate(avg=mean(price))
ungroup()

diamonds %>% 
  group_by(cut)%>%
  
ungroup()












