#Lab1
#SKS104

#Creating a vector
c <- seq(1, 6); 
c
#Create a Matrix based on c
A <- matrix(c, 2, 3) 
A

#Fill matrix with elements by column default
B <- matrix(c, 2, 3, byrow = TRUE)
B

#Checking if a matrix are matrices and not vectors, put curser then run to check
is.matrix(A)
is.matrix(B)

#Indexing a matrix
A[1,2]
B[1,2]

#Row one
A[1, ]
B[1, ]
#Colum three
A[, 3]
B[, 3]

#Modes of an object

#Numeric
x <- 5
mode(x)
#Logical
x <- TRUE
mode(x)
#Character
x <- "William Henry Gates III"
mode(x)

#Vector modes
w <- c(1,2,3,4,5)
mode(w)

v <- c("William", "Henry", "Gates", "III")
v
mode(v) 

x1 <- "Willam"
x2 <- "Henry"
x3 <- "Gates"
x4 <- "III"

z <- paste(x1,x2,x3,x4)
z

#Character vector
z <- paste(x1, x2, x3, sep = ".")
z
z <- paste(x3, x1, sep = ",")
z

x <- "7"
x
mode(x)
x+5

x<- as.numeric(x)
x
mode(x)
x+5

#List
w <- c(1,2,3,4,5)
v <- c("William", "Henry", "Gates", "III")
z<- paste(x1,x2,x3,x4)

newList <- list("Bill", w,v,z,6,7)
newList

#Single brackets
newList[3]
mode(newList[3])

newList[1]
mode(newList[1])

#Double Bracket
newList[[3]]
mode(newList[[3]])

newList[[4]]
mode(newList[[4]])

newList[[3]][1]
newList[3][1]

names(newList) <- c("x", "y", "z", "name", "n1", "n2")
newList$x
newList$name
newList$n2

#Dateframes
height.in <- c(72,73,66,68,76,62,60)
weight.lb <- c(180, 185, 170, 169, 180, 200, 150)

size.dat <- data.frame("Height" = height.in, "Weight" = weight.lb)
size.dat
class(size.dat)

size.dat$Height

height.vect <- size.dat$Height
height.vect
height.vect[1]

#First column
size.dat[, 1]
#Second row
size.dat[2, ]
#Row three in second entry
size.dat[3, 2]

#Dateframes in R
library(MASS)
data()
?trees
data(trees)
trees

#Understanding a dataframe
head(trees)
tail(trees)

head(trees, 10)
tail(trees, 5)
names(trees)
dim(trees)

#Extracting Variables from a dataframe
trees$Girth
trees$Volume

attach(trees)

#Access variable 
Girth 
Volume
mode(Girth)

detach(trees)
Girth
trees$Girth

#Highlight all to give every result 
floor(3.1)
ceiling(5.2)
floor(5)
