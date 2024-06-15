## ggplot
## rshiny for dashboard  
#### Plot ####
#Line Plot    
#plot scatter plot pairs command if you have to much command
#dataframe is the base package similarly, plot is in the basic package
data()
?plot # plot is 2 dimensional
?iris
v <- c(8,14,2,65,43)
plot(v,type = 'p')
plot(v,type = 'l')

plot(v,type='o',col='red', xlab='X-Axis',ylab = 'Y-Axis', main = 'Line Chart')

#if you have to have to much data 
par(mfrow=c(1,3)) # par is for partition multiple plot at the same time
plot(v,type = 'p')
plot(v,type = 'o')
plot(v,type = 'h')

par(bg='white')
x=c(1:11)
y=c(12:22)
plot(x,y,type = 'l',col='blue')

data=iris
names(data)
View(data)
str(data)
?plot
par(mfrow=c(1,2))
plot(data$Sepal.Length, type = 'o', col='red', main = 'Comparison between Sepal length & Petal Length')


lines(data$Petal.Length, type = 'o',col='blue') # if you want to plot multiple lines we can use

plot(data$Sepal.Length,type = 'o', col='red',main='Comparison between Sepal length & Petal Length',xlim=c(0,100),ylim=c(0,9))   # xlim is used to limit the data point in range(0,100)

lines(data$Petal.Length,type = 'o',col='blue')

# either x or y in line
# scatter plot both 2D we have to give 2 parameters
data1=mtcars
View(data1)
names(data1)
par(mfrow=c(1,2))
plot(data1$wt, data1$mpg,xlab = 'Weight',ylab='Milage',main = "Weight vs milage")  # plot(x,y)
?mtcars
abline(lm(mpg~wt,data = data1),col='red') #is like line (dependent value ~ independent) abline(lm(y~x)) manner we are building a relation base d regression function ->also called as trendline

pairs(data1)  #for the pairs of different parameters
pairs(~wt+mpg+disp+cyl,data = data1)  # shows the scatter graph

plot(data1$mpg,data1)


# barplot   different class and their frequency no of occurrences

H=c(5,15,9,11) 
M=c('A','B','C','D')
barplot(H,names.arg = M, col = 'skyblue', border = 'skyblue')   #display value names.arg which value/name given to your bar

# Bar Diagram

#Create the data for the chart
H<-c(1,2,3,4,5)

#Plot the bar chart
barplot(H, main = 'Car Distribution' ,xlab='Number of Gears',col = 'skyblue',border = 'skyblue')

#Simple bar plot
counts<-table(mtcars$gear)
barplot(mtcars$gear)

#Simple bar plot
counts<-table(mtcars$gear)  # gives frequency of the parameter which you have put

par(mfrow=c(1,1))
barplot(mtcars$gear)
mtcars
mtcars$gear
view(mtcars)

barplot(counts, main='Car Distribution',xlab='Number of Gears',col = 'skyblue',border = 'skyblue')
?barplot

#Multiple
counts<-table(mtcars$vs,mtcars$gear)
rownames(counts)
barplot(counts,main='Car Distribution by Gear and VS',
        xlab = 'Number of Gears',col = c('skyblue','lightblue'),border = 'white',beside = T)

legend('topright',pch = 16, col = c('skyblue','lightblue'),c('a','b'))  # to explain what parameters represent 
legend('topright',pch = 16, col = c('skyblue','lightblue'),c('a','b'),cex = 0.7)  # to change the size of legned

barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("skyblue","lightblue"), beside = TRUE)

#plotgle  ggplot

#Stacked
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("skyblue","lightblue"),
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

slices<-c(20,12,15,9)
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
#discrete(count) data bar graph, continuous(measure) data : histogram

par(mfrow=c(1,1))
#histogram with added parameters
hist(temprature, 
     main = 'Maximum daily temperatures at La Guardia Airport',
     xlab = 'Temprature in degree Fahrenheit',
     xlim = c(50,100),
     col = 'skyblue',labels=T
     )

#Histogram with different breaks
hist(temprature,breaks = 4,main = "With breaks=4")
hist(temprature,breaks = 20, main = 'With breaks=20')

hist(temprature,
     main = "Maximu daily temperatures at La Guardia Airport",
     xlab='Temprature in degreee Fahrenheit',
     xlim=c(50,100),
     col = 'Green',
     border = 'red',
     breaks=c(55,60,70,75,80,100)
     )



####################### FACTORIAL- PERMUTATION & COMBINATION ##########################
factorial(3)
n<-5
r<-4
perm<-factorial(n)/factorial(n-r);perm
?sprintf
permComb<- function(n, r){
  perm<-factorial(n)/factorial(n-r);perm
  print(paste('Perm',perm))
  combi<-factorial(n)/(factorial(r)*factorial(n-r));combi
  sprintf("combinat %i",combi)
}

permComb(5,4)


#Q how many numbers between 100 to 1000 have 4 in the units place?

#Q 



