# NAME: YOON JI KIM
# ID: 2019312486

### 1.  Scalars and functions
##### i) When the length of the two diagonals is a, b, and the angle of the diagonal is theta, the width of 
##### rectangle is 1/2 absintheta. Create a variable rec which stores the width of rectangle that the length of 
##### two diagonals is 6, 10 and the angle of the diagonal is pi/4. The constant pi is available in R as pi and 
##### sin as sin().
#
# Type your code below
rec <- 0.5*6*10*sin(pi/4)


##### ii) How many times is the width of a rectangle with the angle of the diagonal ?pi/3 bigger than the width 
##### of a rectangle with the angel of the diagonal ?pi/4? Calculate and round the answer to 2 decimal places in R. 
##### Create/modify variables as you see fit.
#
# Type your code below
rec1 <- sin(pi/3)
rec2 <- sin(pi/4)
diff <- rec1/rec2
print(diff, digits = 3) #Answer: 1.22 times bigger


### 2. Vectors
x <- seq(-10, 20, by=3);x
y <- rep(x[2:4], c(2,5,3));y

##### i) How many elements does y have?
#
# Type your code below 
length(y) #Answer: 10 elements

##### ii) Modify y so that its last element appears 4 times instead of 3 times.
#
# Type your code below
y <- rep(x[2:4], c(2,5,4));y

##### iii) Find elements of y that are larger than the average of y.
#
# Type your code below
num <- c( )
for (i in y) {
  if (i <= mean(y)) {
    next
  }
  else {
    num <- append(num, i)
  }
}
num
#Anwer: -1, -1, -1, -1

##### iv) Concatenate x, y and the sum of x and y into a new vector z.
#
# Type your code below
z <- c(x, y, sum(x), sum(y)); z

##### v) List the unique elements of z that are divisible by 2 and NOT negative. You may want to use the 
##### function unique().
#
# Type your code below
new_z <- unique(z) 
Z <- c( )
for (n in new_z){
  if (n > 0 & n%%2==0){
    Z <- append(Z, n)
  }
  else {
    next
  }
}
Z #Answer: 2, 8, 14, 20

### 3. Matrices
##### Use matrix()function to generate the following matrices, m1 and m2.
# i) m1

#     [,1] [,2] [,3] [,4] [,5]
#[1,]    5    4    3    2    1
#[2,]   20   22   24   26   28
#
# Type your code below
m1<-rbind(5:1, seq(20, 28, by=2)); m1

##### ii) m2
#     [,1] [,2]
#[1,]    5   20
#[2,]    4   22
#[3,]    3   24
#[4,]    2   26
#[5,]    1   28
#
# Type your code below
m2<-cbind(5:1, seq(20, 28, by=2)); m2

##### iii) Add a row, the square of first row of m1, to m1 to produce following matrix, m3.
#
# Type your code below
#     [,1] [,2] [,3] [,4] [,5]
#[1,]    5    4    3    2    1
#[2,]   20   22   24   26   28
#[3,]   25   16    9    4    1
#
# Type your code below
s <- c(5:1)
m3 <- rbind(m1, s^2) ; m3

##### iv) Add a column, the difference between two columns of m2, to m2 to produce the following matrix m4.
#
# Type your code below
#     [,1] [,2] [,3]
#[1,]    5   20  -15
#[2,]    4   22  -18
#[3,]    3   24  -21
#[4,]    2   26  -24
#[5,]    1   28  -27
#
# Type your code below
m4 <- cbind(m2, seq(-15, -27, length.out = 5)); m4

##### v) What is the result of multiplying (element-by-element) the 3rd column of m4 with 2nd row of m3? Provide your code and answer below.
#
# Type your code below
m4[ ,3]*m3[2, ] #Answer: the result is a vector of numbers -300, -396, -504, -624, -756


### 4. Factors
##### The following are the results of 11 students running 100 meters:
##### 14, 20, 17, 13, 21, 19, 12, 16, 24, 18, 15

##### i) Convert the results into an unordered factor speed_factor with these labels: 'Fast': <15,
##### 'Medium': 15-19, 'Slow': Over 19.
#
# Type your code below
speed <- c(14, 20, 17, 13, 21, 19, 12, 16, 24, 18, 15)
speed_factor <- cut(speed, breaks = c(0, 14, 19, 30), labels = c("Fast","Medium","Slow"))


##### ii) Is 2nd result smaller than 3rd result in speed_factor? What's the outcome of speed_factor[2] < 
##### speed_factor[3]? Explain what the outcome means.
#
# Type your code below
speed_factor[2] > speed_factor[3]

# Answer(outcome): NA
# Explanation ANSWER HERE: Because there is no order among levels.

##### iii) Modify new_speed_factor to be ordered according to following levels: Fast > Medium > Slow.
#
# Type your code below
new_speed_factor <- factor(speed_factor, levels = c("Slow","Medium","Fast"), ordered = T)

##### iv) Check if last student is faster than 2nd student.
#
# Type your code below
new_speed_factor[length(new_speed_factor)] > new_speed_factor[2]
#Answer: Yes, Because now, there is an order. Last student's level, which is 'Medium', is higher than second student's level, which is 'Slow'.

##### v) How many students are 'Medium' or 'slow'?
#
# Type your code below
count <- 0
for (k in 1:length(new_speed_factor)) {
  if (new_speed_factor[k] == "Medium" | new_speed_factor[k] == "Slow") {
    count <- count+1
  }
  else {
    next
  }
}
count
#Answer: 8 students


### 5. Sampling
##### Yutnori (Stick-game) is a traditional Korean board game where one of the following outcomes is possible 
##### with the throw of a stick: Do, Ge, Geol, Wuk and Mo each time. The probability of each outcome being 
##### thrown is given by: 
#####  Do-1/4, Ge-3/8 , Geol-1/4 , Wuk-1/16 , Mo- 1/16

##### i) Create the possible outcomes that can be obtained when three people throw the yuts (sticks) 4 times 
##### each. Store the results in the vector yut.
#
# Type your code below
Yutnori <- c("Do", "Ge", "Geol", "Wuk", "Mo")
Yut <- sample(Yutnori, 12, replace = T, prob = c(1/4, 3/8, 1/4, 1/16, 1/16))

##### ii) What's the difference between the number of 'Do' and 'Ge' in yut? (Use abs())
#
# Type your code below
install.packages("stringr")
library(stringr)
do <- str_count(Yut, "Do")
do<-sum(do)
ge <- str_count(Yut, "Ge")
ge<-sum(ge)
abs(do-ge) #Answer: difference between the number of 'Do' an 'Ge' is the absolute value of subtraction between the number of "Do" and "Ge"

##### iii) Resample the result with equal probabilities to its elements.
#
# Type your code below
yut2<-sample(Yutnori, 12, replace = T, prob = c(1/5, 1/5, 1/5, 1/5, 1/5))

##### iv) Repeat iii) 10 times. Is the number of times each element same at every sample? Why or why not?
#
# Type your code below
for (j in 1:10){
  yut2<-sample(Yutnori, 12, replace = T, prob = c(1/5, 1/5, 1/5, 1/5, 1/5))
  print(yut2)
  }
#
# Why or why not? ANSWER HERE: No, because every possibilities of numbers is same, so no particular element is going to appear more or less.

