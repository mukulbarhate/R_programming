#Library package can any same commands so it won't be able to interpret which to take the command
#We have to run the library command before any code it is in the cram
 
#--------------Functions in R--------------------#

a <- function(){
  
}

a()

# Simple function, no inputs!
hello_world <- function(){
  print('hello World in R!')
}
hello_world()

# Function with a single argument

hello_name <- function(name){
  print(paste('hello ',name))
}
hello_name('John')

# Function to add 2 numbers

add_num <- function(num1,num2){
  print(num1+num2)
}
add_num(30,40)

# Add a vector to a number

add_num(c(10,20,30),5)

# Function with default argument values

hello_name <- function(name='Rick'){
  print(paste('Hello ',name))
}
hello_name()
hello_name('Sam')

# Return the value from a function

full_name <- function(name='Sachin',title='Tendulkar'){
  return(paste(name,' ',title))
}
full_name()

full_name1 <- full_name('Don', 'Bradman') 
full_name1

# Scope of a variable in a function

v <- "I'm global variable"
stuff <- "I'm global stuff"

fun <- function(stuff){
  print(v) 
  stuff <- 'Reassign stuff inside the function'
  print(stuff)
}

print(v) 
print(stuff) 
fun(stuff) # Reassignment only happens in scope of function
print(stuff)

# Create a function to find the final amount to be paid by a customer after 
#adding 20% tax to the purchased amount.

amount<-function(x=100)
{
  t=x+x*(20/100)
  return(t)
}
amount(100)

#--------------------

amount1<-function(amt)
{
  if(amt>0) famt=amt+amt*(20/100) 
  if(amt<=0) famt=amt
  return(famt)
  
}  
amount1(100)

# Check the argument and the body of a function

args(amount1)
body(amount1)

# Example to understand the scope

f1<-function(x)
{
  y=10
  g1=function(x)
  {
    y+(x*x)
  }
  
  g1(x)
}

f1(10)

#------------

g2<-function(x)
{
  y+(x*x)
}
f2<-function(x)
{
  y=10
  g2(x)
}
f2(10)

#-------------

g2<-function(x,y)
{
  y+(x*x)
}
f2<-function(x)
{
  y=10
  g2(x,y)
}
f2(10)

#----------if esle, else if---------------#

# Single condition check
hot <- FALSE
temp <- 50

if (temp > 60){
  hot <- TRUE
}
hot

# Change the temp value
temp <- 100

if (temp > 60){
  hot <- TRUE
}

hot

# Else statement

score <- 63

if (score > 80){
  print("It is a good score!")
} else{
  print("Its not a good score!")
}

# Else if statement

score <- 63

if (score > 80){
  print("Good score!")
} else if(score>60 & score<80){
  print('Decent score!')
} else if(score<60 & score >33){
  print("Average score!")
} else{
  print("Poor!")
}

# Example 1
status<-function(marks)
{
  result="Not Defined"
  if(marks>50) result="PASS"
  message("Your result is"," ",result)
}
status(60)
status(30)

# Example 2

status<-function(age)
{
  ageGrp="Not Defined"
  vote="Not Defined"
  if(age>=18)
  {
    ageGrp="ADULT"
    vote="YES"
  }
  message("Your age group is ",ageGrp)
  message("Voting status is ",vote)
}
status(20)
status(15)

# Example to convert a name into uppercase

status<-function(name)
{
  len<-nchar(name)
  if(len>5) name=toupper(name)
  message("User given name is ",name)
}
status("Stuart")
status("John")

# Example to calculate bonus

get_bonus<-function(salary,exp)
{
  if(exp>5)
  {
    bonus_per=10
  }else
  {
    bonus_per=5
  }
  bonus=salary*(bonus_per/100)
  return(bonus)
}
get_bonus(25000,6)
get_bonus(25000,3)

# Example for multiple condition & multiple actions

get_Group<-function(age)
{
  if(age>0)
  {
    if(age<18)
    {
      ageGrp="KIDS"
    }else if(age<60)
    {
      ageGrp="ADULT"
    }else
    {
      ageGrp="SENIOR"
    }
  }else
  {
    ageGrp="Not Defined"
    message("Wrong Age")
  }
  message("your age group is ",ageGrp)
}
get_Group(10)
get_Group(40)
get_Group(65)
get_Group(-10)

#-----------Using  switch  function------------#
# Returns value matched with the first argument
# First argument should be a character

# Example to return hra amount based on cities
HRA<-function(city)
{
  hra_amt<-switch(toupper(city),
                  BLR=7500,
                  MUM=1000,
                  DEL=8000,
                  CHN=7500,
                  PUNE = 5000
  )
  return(hra_amt)
}

HRA("BLR")
HRA("PUNE")
HRA("blr")

# Example to return the salary band.

salary_range<-function(band)
{
  range<-switch(band,
                L1="10000-15000",
                L2="15000-25000",
                L3="25000-40000"
  )
  return(range)
}
salary_range("L1")
salary_range("B1")

#----------Using Repeat in R-------------#

time<-15
repeat
{
  message("Hello, Welcome to R tutorial for beginner!")
  if(time>=20) break
  time=time+1
}

# R function to find the square of any user given numbe.
# If square value is less than 100,then
#increment user value by 1 & find square again.
#Repeat this step till sqaure exceeds 100.

sqr<-function(n)
{
  repeat
  {
    square=n*n
    message("The square is ",square)
    if(square>=100) break
    n=n+1
  }
  return(n)
  
}
sqr(6)

#--------------While Loops----------------#

# Example

x <- 0

while(x < 10){
  
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  
  # add one to x
  x <- x+1
  if(x==10){
    print("x is equal to 10! Terminating loop")
  }
}

# R function to find the total number of years required 
# to raise $8000 if the user deposits $750 per month

req_years<-function(amount=550)
{
  famt=0;month=0
  while(famt<=8000)
  {
    month=month+1
    famt=famt+amount
    message("Month=",month,"final_amount=",famt)
  }
  year=month/12
  return(year)
}
req_years()
req_years(750)


#---------Using break statement in a while loop----------#

x <- 0

while(x < 5){
  
  cat('x is currently: ',x)
  print(' x is still less than 5, adding 1 to x')
  
  # add one to x
  x <- x+1
  if(x==5){
    print("x is equal to 5!")
    break
    print("I will also print, woohoo!")
  }
}


#-----------For Loops----------------#

vec <- c(1,2,3,4,5)
for (temp_var in vec){
  print(temp_var)
}

# Another process
for (i in 1:length(vec)){
  print(vec[i])
}

# For loop over a list

li <- list(1,2,3,4,5)

for (temp_var in li){
  print(temp_var)
}


for (i in 1:length(li)){
  print(li[[i]]) # Remember to use double brackets!
}

# For loop to print a matrix

mat <- matrix(1:25,nrow=5)
mat

for (num in mat){
  print(num)
}

# Example to print the square and square roots of numbers b/w 1-25

for(i in 1:25)
{
  sq=i*i
  sqroot=sqrt(i)
  message("i=",i,"sq=",sq,"sqroot=",sqroot)
  
}

#Create a function to find the balance in a bank a/c after n years if I have deposited
#x amount in the beginning. Bank gives interest at rate of 8% p.a.

# R function to find the square of any user given numbe.
# If square value is less than 100,then
#increment user value by 1 & find square again.
#Repeat this step till sqaure exceeds 100.


sqr<-function(n)
{
  repeat
  {
    square=n*n
    message("The square is ",square)
    if(square>=100) break
    n=n+1
  }
  return(n)
  
}
sqr(0)













get_finalbal<-function(amt,year,rate)
{
  for(i in 1:year)
  {
    interest=round(amt*rate/100,2)
    finalamt=amt+interest
    message("Year=",i,"amt=",amt,"Interest=",interest,"final amt=",finalamt)
    amt=finalamt
  }
  return(finalamt)
}
get_finalbal(5000,5,8)
get_finalbal(10000,10,5)



############# Tidyverse Package ###############

#### Tidyverse ####
install.packages("tidyverse")
library(tidyverse)
View(diamonds)
?diamonds
str(diamonds)
names(diamonds)
?data
data("tidyverse")
#install.packages("D:/C Drive/Desktop/SURAJ SINGH/Teaching/C-DAC/Lecture Notes/tidyverse_1.3.1.tar.gz", repos = NULL, type="source")

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
dataset <- tibble(Sex, TestScore)		# similar to dataframe with limited informatin
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
# Using row_number() with mutate() will create a column of consecutive numbers. The row_number() function is useful for creating an identification number (an ID variable). It is also useful for labeling each
# observation by a grouping variable

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

## Method1
practice %>%
  mutate(Session = row_number())

## Method2
practice %>%
  group_by(Subject, Inject) %>%
  mutate(Session = row_number())

## Method3
practice %>%
  group_by(Subject, Inject) %>%
  arrange(Date) %>%
  mutate(Session = row_number())

View(practice %>%
       group_by(Subject, Inject) %>%
       arrange(Date) %>%
       mutate(Session = row_number()))

# Using the practice dataset from before, create a new variable called Health with values of sick or healthy:
  # • Subject 1 is sick
# • Subject 2 is healthy
# • Subject 3 is healthy

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

