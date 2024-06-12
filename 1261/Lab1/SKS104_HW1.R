#Homework 1
#SKS104
#4461942
#Class Section: 2231 STAT 1261 SEC1020, Professor Bao 


#Objects 
obj1 <- seq(-3, 21, 3)
obj2 <- c(1, 3, 5)
obj3 <- obj2 > 2.5
obj4 <- "I love pizza."

show(obj1)
show(obj2)
show(obj3)
show(obj4)


length(obj1)
length(obj2)
length(obj3)
length(obj4)

obj1 * (-1) # 3 0 -3 -6 -9 -12 -15 -18 -21
obj1[2:6]   # 0 3 6 9 12
obj1[-2]    # -3 3 6 9 12 15 18 21
obj1 + obj2 # -2  3  8  7 12 17 16 21 26
obj1 + obj3 # -3  1  4  6 10 13 15 19 22
obj2 + obj3 # 1 4 6
obj1 + obj4 # non-numeric argument to binary operator
sum(obj2)   # 9
sum(obj3)   # 2

#Vectors
a <- c(0, 1)
b <- c(TRUE, FALSE)
c <- c("happy", "sad")



a+b # 1 1
a*b # 0 0 
d <- c(a, b) 
d #0 1 1 0
e <- c(a, c)
e # "0" "1" "happy "sad"
g <- c(b, c)
g # "TRUE" "FALSE" "happy" "sad"
w <- c(a,b,c)
w # "0"     "1"     "TRUE"  "FALSE" "happy" "sad" 

#Errors (Explain each one)
result1 <- floor 10.3 # Error where we don't have () round the number
result2 <-- "Hello to you!" #Error since we put the floor equal to two --
result3 <- "Hello to you" # No error since the "" cover the string completely

#Error where we need to add an extra " to the string
result4 <- "Hello to you 

result5 <- date()


"#Added since the program will not run correctly if not because it will read the
# whole file as a string

#Result 5 throws error because the previous error is missing a " which is reading 
# result 5 as a string

                    

#Matrices 
matrix1 <- seq(2, 24, by = 2)
matrix2 <- seq(2, 24, by = 2)

M1 <- matrix(rev(matrix1), 3, 4)
M1

M2 <- matrix(rev(matrix2), 4, 3)
t(M2) #A^T (Transpose a matrix)

M1[3, 1]
M1[2, ]
M2[, 3]

#Calculate in R
#1, no natural ln in rstudio
log10(1) - log(1)
#2
sin(pi/3)+ cos(pi/3)
#3
ceiling(sin(pi/3) + cos(pi/3))
#4
round(sin(pi/3) + cos(pi/3), sin(pi/3)+ cos(pi/3))
#5
2022 %% 9 

#Dataframes
df <- data.frame(
                 Name = c("Jacob", "James", "Jeremy", "Jimmy", "John"),
                 Year = c(1,2,3,4,3),
                 GPA = c(3.41, 3.53, 3.32, 3.67, 4.0),
                 Height = c(1.78, 1.85, 1.72, 1.82, 1.68)
                 )
df

#We take from the Dataframe above by using df$..., not putting data into the 
# dataframe of a dataframe, example - dont use data.frame(df$GPA)
resultA <- (df$GPA)
resultA

resultB <- (df[3 ,])
resultB

resultC <- (df$Name[df$GPA < 3.6]) 
resultC

resultD <- (df$Name[df$Year == 3])
resultD

mean(df$GPA[df$Year == 3])



