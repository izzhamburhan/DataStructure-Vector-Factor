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


##3) Matrices
#Creating matrices in 3 different ways

#1st way: Matrix(data,nrow,ncol) functions
m1=matrix(1:6,nrow=2,ncol=3, byrow=T) #T/TRUE
m1
#By Default, the matrices constructed by column 

#2nd : using dim() function
x=c(2,4,6,8,10,12) 

dim(x)=c(2,3) #creating matrices with 2 rows and 3 columns
dim(x)=c(3,2) #crearing matrices with 3 rows and 2 columns


#3rd : using rbind() or cbind()
k=1:3
k=seq(1:3)

l=10:12
length(l)

matrix1=rbind(k,l)
matrix2=cbind(k,l)


#How to select elementss inside matrix
y=matrix(1:12,nrow=3,ncol=4)

colnames(y)=c("a","b","c","d") #to name the columns
rownames(y)=c("j","k","l") #to name the row

y[4] #vector
y[1,3] #to select the element on 1st row and 3rd column
y[,3]
y[-1,3] #delete row 1 and column 3
y[c(1,3),4]
y[-1,-3]
y[-c(1,2),]
y[,c(2,4)]
y[1,]


#matrices can do computation

x=matrix(4:7, nrow=2)
t(x) #trasnpose
det(x) #determinant
diag(x) #diagonal
solve(x) #inverse matrix
rowMeans(x) #compute row means
colMeans(x) #compute colum means

apply(x,1,mean)
apply(x,2,mean)

x=matrix(4:7, nrow=2);x
y=matrix(1:6, nrow=2,ncol=3);y
z=matrix(c(10,20,30,40), nrow=2,byrow=T);z
2*x
x+y
x+z
x*z
x%*%y
y%*%y

t(x)
t(y)
t(z)

det(x)
det(y)
det(z)

rowMeans(x)
colMeans(y)

apply(x,1,mean)
apply(y,2,mean)


##4) Array
#using array() function

a=array(1:24,c(3,4,2));a
#array with 3 rows, 4 columns, 2 groups

x=1:10
b=array(x,c(5,2,1));b

##5) Data Frame
#create a data frame

names=c("Ali","Abu","Siti","Sofia")
gender=c("male","male","female","female")
age=c(26,36,45,21)
occupation=c("doctor","lawyer","doctor","technician")

data=data.frame(names,gender,age,occupation)
str(data)

data$gender=as.factor(data$gender)
data$occupation=as.factor(data$occupation)


#exercise
height=c(175,165,150,155,168,153,165,177,180,164,150)
weigth=c(80,85,50,55,63,45,74,90,86,74,53)
h_sleep=c(8,7,12,10,9,7,6,7,8,8,11)
data=data.frame(height,weigth,h_sleep)
str(data)

summary(data)
describe(data)

install.packages("Hmisc")
library(Hmisc)


#sort
s=c(10,15,6,13,18)
sort(s)
sort(s,decreasing=T)
rev(sort(s))
order(s) #give possition of real data after sorting 
rank(s) #arrange according to the position of order