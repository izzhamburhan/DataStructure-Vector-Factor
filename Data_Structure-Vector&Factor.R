# DATA STRUCTURE

#1) Vectors
x = c(1,3,5,7,9)

is.vector(x) #to check whether data in a form of vector structure
is(x)

# To select the element of a vector
x=c(1,4,5,3,9,10,12)

x[4] #print the 4th element
x[1:3] #print the 1st until 3rd element
x[c(1,2,6)]
x[5] = 100 #replace 5th element to 100
x


y=x<8
#y=1,4,5,3 , FALSE,False,False
x[y]
x
x[-2] #to remove 2nd element
length(x) #to count on how many element inside object
edit(x)
x = edit(x)

x[-c(1,2)] #to remove element in what place that we select
x[-c(2,4)]


#OPERATOR

#carried out operations in vector
x=c(1,3,5,7,9)
y=c(-1,-3,-5,-7,-9)
z=c(3,9)

#Task : Complete table slide number 5
rep(5,10)
rep(5,length=10)
r = rep(c(2,7,9),3)
r = rep(c(12,27,86),2)
r
k = rep(seq(5, 20, by = 4), 10)
k
seq(1,20,by=3)
seq(0,21, by=6.6666667)
seq(1,3, by=0.5)
seq(1,15)
#line
plot(x,y, type="l")

#plot
plot(x,y)

#pie
pie(o)

# Create a vector of pies
x <- c(10,20,30,40)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")

#hist
hist(y)

#scatterplot
o <- c(5,7,8,7,2,2,9,4,11,12,9,6)
p <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(o, p)

#bar
# x-axis values
q <- c("A", "B", "C", "D")

# y-axis values
w <- c(2, 4, 6, 8)

barplot(w, names.arg = q, col = "red", density = 10, main="Cuba try")

#Functions in the vector
mean(x) #To compute the mean/average
var(x) #To compute the variance
sd(x) #To compute the std. deviation
sum(x) #To Compute the total
length(x)
hist(x) # output histogram
cumsum(x) #compute cumulative summation
cumprod(x) #compute cummulative multiply
diff(x)
identical(x,y)



#2) FACTORS
#used factor() function

opinion=factor(c("yes","yes","no","yes","no"))
is.factor(opinion) #check factor structure or not
is.vector(opinion)
table(opinion) #to tabulate/summarize data according to group
unclass(opinion)

opinion=factor(c("yes","yes","no","yes","no"))
opinion1=factor(c("yes","yes","no","yes","no"),label=c(0,1))
opinion1

gender=factor(c("male","female","female","female","male"),label=c(0,1))
gender1=factor(c(0,1,1,1,0),label=c("male","female"))

#ordered function
blood.pres=ordered(c("Low","Medium","High","Low","Low","Medium","Low","High"),levels=c("Low","Medium","High"))



