##########LAB1
123+456
print("Hello World")
(0/2+53+72)%%3

#Variables
x <-3
print(x*1.2345)

#Functions
seq(1,10)
sum(1,10)
sum(1:10)


##########LAB 2
#Passing correct bariable type into functions
mean(c(1,11))
mean(c("1","11"))

#Assignment and changing variable values
a <- 5
a / 2

a-2
a/2

a <- a-2
a/2

#Scalars practical questions
anna_average <- 824/5
bea_average <- 1042/8
anna_average
bea_average
anna_average/bea_average

#Vectors
y <- 1:100
y <- c(1:100)
y <- seq(1,100)
y

seq(1,25,length.out = 5)

cv <- c("I","am", "a","character","vector")
length(cv)
cv2 <- c("I am also a character vector")
length(cv2)

my_vec <- c("a", 1, "b", 2, "c", 3)
my_vec


#Logical vectors practical questions
mult3 <- seq(3,30,3)
mult3

sum(mult3%%2)

##########LEC3
book.price <- c(25.99, 18.49, 11.50, 32.00, 45.90)
book.price < 20
##########LAB3
#Vectors subsetting and logical operations
twentyto11 <- c(20:11); twentyto11
twentyto11[2:8]
twentyto11[7] > 15
twentyto11[5] %% 2 == 0


#Vectors practical questions
survey <- c(7, 10, -2, 5, 2, 0, 9, 100, 3, 6 , 4, 5)
valid_values <- survey[survey %in% (1:10)]; valid_values

invalid <- !survey %in%(1:10)

survey[invalid == TRUE] <- NA; survey

#Matrices
a <- c(2,4,6,8,10)
b <- c(3,6,9,12,15)
c <- c(5,10,15,20,25)

cbind(a,b,c)
rbind(a,b,c)

matrix(data = 1:20, nrow = 4, ncol = 5, byrow = T)
rbind(1:5,6:10,11:15,16:20)

#Matrix creation and indexing
x <- c(2, 3, 5, 7, 11, 13, 17, 19)
ttm <- cbind(x, x%%3, x+5, 3*x, x^2); ttm

ttm[3,2]

sum(ttm[,5])

mean(ttm[2,])

summary(ttm)
mean(ttm[,3])


##########LAB4
#Undordered Factors
v = c(5,3,7,2,0,1,5,2,4,8)
is.factor(v)

f <- factor(v)
is.factor(f)

f <- factor(v, levels = c(1,2,3)); f

#Ordered Factors
weather_levels <- c("sunny","cloudy","rain")
weather1 <- c("cloudy","cloudy","rain","sunny","sunny","cloudy","rain")
fweather <- factor(weather1,levels = weather_levels, ordered = T); fweather
table(fweather)

#Generating random data: sample(x,size,replace,prob)
sample(10)

sample(1:12,7)

sample(1:10, 5, replace=T)

sample(1:4,10,replace=T)

sample(1:7,15,replace=T,prob = c(0.2,0.1,0.3,0,0.1,0,0.3))


#Practical question - sampling
genre <- c("a","c","h","m","f")
movie <- sample(genre, 30, replace=T, prob = c(0.4,0.3,0.05,0.1,0.15))
movie
sum(movie == "a")
sum(movie == "f")

#Converting numerics to factors
average <- c(30,97.8,10.3,40.6,80,75.5,90.1,17.3,88.6,52.99)
score <- cut(average, breaks = c(0,29,80,100), labels=c("exercise", "good", "exellent"))
score


##########LAB5
#List creation
myList <- list(2020, "Data", c(3,20), "DS&R")

myList[3] 
myList[[3]]

names(myList) <- c("Year","Major","Date","Lecture")
myList

myList[["Date"]]

#List within a list (within a list)
another_movie <- list(title = "Get Out", runTime = 104)
similar_movie <- list(title = "Us", runTime = 116, similar = another_movie)
movie <- list(title = "The Invisible Man", runTime = 124, rank = 3, similar = similar_movie)

movie[["title"]]
movie[[1]]
movie[1]

movie$genre <- c("horror", "thriller")
movie

movie$rank <- 1
movie

movie[[4]][[3]][[2]]

#Data frames
name <- c("Kim","Park","Lee","Choi","Hong")
age <- sample(20:30,5,replace = T)
field3 <- LETTERS[1:5]
month <- month.name[3:7]

myDf <- data.frame(name, age, field3, month, stringsAsFactors = F)

colnames(myDf)[colnames(myDf) =="field3"] <- "group"
colnames(myDf)

names(myDf)[3] <- "group"

myDf_byAge <- myDf[order(myDf$age), ]
myDf_byAge

#Loading dataset
data(iris)

str(iris)
head(iris)

iris <- iris[order(iris$Sepal.Length), ]
iris

new_row <- data.frame(Sepal.Length = 8.0, Sepal.Width = 3.5, Petal.Length = 5.2, Petal.Width = 2.8, Species = "virginica")
iris <- rbind(iris, new_row)
iris

interesting <- sample(c("y","n"),151, replace = T)
iris <- cbind(iris,interesting)


##########LAB6
#Data frames
df_1 <- data.frame(age = c(5, 41, NA, 17, 35),class = 5:9, num3 = 100:96)
list_1 <- list(name = c("K", "O", "S", "J", "M"), grade = c("A", "A", "C", "B", "A"))

df <- subset(df_1,age > 30); df
df <- df_1[df_1$age > 30, ]

newDF <- cbind(df_1,list_1)
colnames(newDF)[colnames(newDF)=="num3"] <- "score" ;newDF

#Data frames
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial", "Terrestrial", "Terrestrial", "Terrestrial", "Gas", "Gas", "Gas", "Gas")
diameter <- c(0.38, 0.94, 1, 0.53, 11.20, 9.44, 4.00, 3.88)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(F, F, F, F, T, T, T, T)
planets <- data.frame(name, type, diameter, rotation, rings); planets

planets <- planets[order(rotation), ]

subset(planets,diameter > 1, c(name, diameter))

mean(c(with(subset(planets,type == "Terrestiral"),rotation)))

subset(planets,diameter/rotation > 1 & rings == T, name)


#Data frames
data(airquality)

table(airquality$Ozone)

airquality[3:5,c(2,4)]

min(airquality$Temp)
max(airquality$Temp)
mean(airquality$Temp)
sd(airquality$Temp)
summary(airquality$Temp)

str(airquality)

test <- subset(airquality, Temp > 80 & Wind < 15)

temp_by_wind <- with(airquality, Temp/Wind)
airquality <- cbind(airquality, temp_by_wind)

summary(airquality$Wind)
cond1 <- airquality$Wind < 7.400
wind_class <- ifelse(cond1, "low", "medium")
cond2 <- airquality$Wind > 11.500
wind_class <- ifelse(cond2,"high", wind_class)
airquality <-  cbind(airquality, wind_class)


##########LAB7
#Loops
data(airquality)
df <- na.omit(airquality)

highest_var <- 0.0
var_index <-0
for (i in 1:ncol(df)) {
  if (var(df[[i]]) > highest_var) {
    highest_var <- var(df[[i]])
    var_index <- i
  }
}
highest_var
names(df)[var_index]

num <- 0
for (k in df[[1]]) {
  if (k < 10) {
    next
  }
  else {
    num <- num + k
  }
}
num

m <- 0
for (h in 1:ncol(df)) {
  if (mean(df[[h]]) >= 10) {
    next
  }
  else if (mean(df[[h]]) < 10) {
    break
  }
}
m <- mean(df[[h]]);m
names(df)[h]

p <- c(2)
for (n in 3:11) {
  if(!n%%2 | !n%%9) {
    next
  }
  else 
    p <- append(p, n)
}

for (l in 12:100) {
  for (r in 1:length(p)) {
    if (! l%%p[r]) {
      break
    }
    if (r == length(p)) {
      p <- append(p,l)
    }
  }
}
p

add<-1
num <- c(2,0,1,9,3,1,2,4,8,6)
for (t in num) {
  if (t == 0){
    next
  }
  else {
    add <- add*t
  }
}
add

##########LAB8