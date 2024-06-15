getwd()
setwd('D:/PG-DBDA CDAC/R/Day8')

# frequenntist Approach
a=sample(1:6,100,replace = T)
table(a)/100
1/6
a=sample(1:6,7,replace = T)
a

a=sample(1:6,1000,replace = T)
table(a)/1000

?sample
sample(1:10,5)
sample(1:10,11,replace = T)   # it is used to replace the sample
sample(c('red','green'),10,replace = T,prob = c(0.6,0.4))
sample(c('red','green'),10,replace = T,prob = c(0.9,0.1))

# Systematic sampling
install.packages('TeachingSampling')
library(TeachingSampling)


?s.sy
p<-c('Mon-8','Tues-4', 'Wed-4', 'Thurs-6','Fri-7','sat-45','sun-35','mon-21','tue-11','wed-34','thur-16','fri-10','sat-17','sun-19')
length(p)

systematic_sample<-S.SY(15,2)   # formation of sample in systematic manner-idividul selected at random basis
p[systematic_sample]
p[c(1,4,6,8,9)] #we have created subset of Data for the data which we have


#############   Hypothesis Testing  #####
# Reject H0 when p is less than 0.05 otherwise donot reject H0

install.packages('BSDA')
library(BSDA)

# Enter IQ levels for 20 patients
data=c(88,92,94,94,96,97,97,97,99,99,105,109,109,109,110,112,112,113,114,115)

#perform one sample z-test
z.test(data,mu=100,sigma.x=15)

# two sample & one sample use z.test only x then onesided  two sample sigma x and y  
?z.test

# for proportion test we use prop.test
# in a certain country who support a certain law is 60%
#H0 = p = 0.6
#h1=p != 0.6
p=0.6
n=100
x-64

prop.test(64,100,0.6,alternative = 'two.sided')

a=prop.test(64,100,0.6,alternative = 'two.sided')
a$p.value

#######   T test
# Nine items of a sample had the following values-45,47,50,52,48,47,49,53,51
#Does the mean of 9 items differ from population mean = 47.5?
#H0 mu = 47.5
#H1 mu != 47.5

a=c(45,47,50,52,48,47,49,53,51)
t.test(a,mu=47.5)

# In a certain experiment two types of pig foods A and B used on pigs to check increase in weight
#PigNo          1   2   3   4   5   6   7    8 
#increased by A 49  53  51  52  47  50  52  53
#increased by B 52  55  52  53  50  54  54  53

# check whether is there any difference at 5% level of significance?
# H0 muA=muB
# H1 muA != muB

?t.test
a=c(49,53,51,52,47,50,52,53)
b=c(52,55,52,53,50,54,54,53)
t.test(x=a,y=b,alternative = 'two.sided',paired = T)


# Two kinds of manures were used in seventeen plots of the same size other conditions being
# the same. The yields in quintals are given below

#Manure I 35,42,40,42,34,24,42
#Manure II 34,44,32,40,52,41,50,40,42,45
m1<-c(35,42,40,42,34,24,42)
m2<-c(34,44,32,40,52,41,50,40,42,45)
t.test(x=m1,y=m2,alternative = 'two.sided',paired=F)


# Practice
## Suppose that a trainee soldier shoots a target in an independent fasion.
# If the prob that the target is hit on any shot is 0.7?
#i. What is the prob that target hit on 10th attempt    #
#ii. prob that it takes less than 4th attempt   #0.9


?pgeom  # it added the cases atleast - pgeom, dgeom - one
pgeom()



# The average no of defects per wafer is 3. THe design allows for up ot 4 defeccts per wafer.
# what is the probability that redundancy will not be sufficient if the
# defects follows a Poisson distribution?
#1 - ppois(4,3,lower.tail = T)
ppois(4,3,lower.tail = F)
dpois(0:100,3)

# A manufacture of widgets know that 20% of the widget he produces are defective. If he 
# produces 10 widgets per day, what is the probability that at most two
# of them are defective?

dbinom(0,10,0.2)+dbinom()
pbinom(2,10,0.2)

a=PlantGrowth
#H0
set.seed(1234)
table(PlantGrowth$group)
str(PlantGrowth)

a=aov(PlantGrowth$weight~PlantGrowth$group)
summary(a)  # Focus on 0.00159 P<0.005 there is no significant difference 
?aov


#UTest
#Weight of the rabbit before treatment
before<-c(190.1,190.9,172.7,213,231.4,196.9,172.2,285.5,225.2,113.7)

#Weight of the rabbit after treatment
after<-c(392.9,313.2,345.1,396,434,227.9,422,383.9,392.3,352.2)

# Create a data frame
myData<-data.frame(
  group=rep(c('before','after'),each=10),
  weight=c(before,after)
)
myData

# Print all data
print(myData)

#Paired Samples Wilcoxon Test
result=wilcox.test(before,after,paired = T)
result

# RANKED Data
