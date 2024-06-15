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
plot(data$Sepal.Length,type = "o",col = "red",main = "Comparison between Sepal Length & Petal Length",xlim = c(0,200),ylim = (0,9) )

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
?plot
pairs(data1)
pairs(~wt+mpg+disp+cyl, data = data1)

plot(data1$mpg,data1$wt,xlab = "Milage",ylab = "Weight", main = "Milage vs Weight")
abline(lm(wt~mpg,data = data1),col = 'red')
lm(wt~mpg,data=data1)

#barplot

H = c(5,7,9,11)
M = c("A","B","C","D")
barplot(H,names.arg = M,col = "red",border = "green")

#Bar Diagrams

# Create the data for the chart
H <- c(1,2,3,4,5)

# Plot the bar chart 
barplot(H, main="Car Distribution",xlab="Number of Gears",col = "Red")
?barplot
# Simple Bar Plot
counts <- table(mtcars$gear)
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
