#1.Data frames
df_1 <- data.frame(age = c(5, 41, NA, 17,35), class = 5:9, num3 = 100:96)
list_1 <- list(name = c("K", "O", "S", "J", "M"), grade = c("A", "A", "C", "B", "C"))

#i)
df_1[["age"]] > 30
#ii)
str(subset(df_1, age > 30))
#iii)type of result i) is logical and type of result ii) is dataframe
#iv)
newDF = cbind(df_1, list_1)
colnames(newDF)[colnames(newDF)=="num3"] <- "score"

#2.Data frames
name <-  c("Mercury", "Venus", "Earth", "Mars", " Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial", "Terrestrial", "Terrestrial", "Terrestrial", "Gas", "Gas", "Gas", "Gas")
diameter <- c(0.38, 0.94, 1, 0.53, 11.20, 9.44, 4.00, 3.88)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(F, F, F, F, T, T, T, T)
planets <- data.frame(name, type, diameter, rotation, rings)

#i)
planets <- planets[order(planets$rotation), ]
#ii)
subset(planets, diameter > 1, c(name, diameter))
#iii)
mean(c(with(subset(planets, type == "Terrestrial"),rotation)))
#iv)
subset(planets, diameter/rotation > 1 & rings == TRUE, name) #Answer: Juperter, Saturn, Neptune

#3.Data frames
#i)
data(iris)
#ii)
table(iris$Species) #Answer: It returns table of its column's summary
#iii)
iris[3:5, c(2,4)]
#iv)
min(iris$Sepal.Length) #=4.3
max(iris$Sepal.Length) #=7.9
mean(iris$Sepal.Length) #=5.843333
sd(iris$Sepal.Length) #=0.8280661
summary(iris$Sepal.Length) # values above are same as summary
#v)
str(iris)
View(iris)
test <- subset(iris, Sepal.Length > 5 & Species == "setosa")
#vi)
s_len_div_wid <- with(iris, Sepal.Length/Sepal.Width)
iris <- cbind(iris, s_len_div_wid)
#vii)
summary(iris$Petal.Width)
 cond <- iris$Petal.Width > 1.800
iris_Petal.Width_class <- ifelse(cond, "large", "average")
cond <- iris$Petal.Width < 0.300
iris_Petal.Width_class <- ifelse(cond, "small", iris_Petal.Width_class)
iris <- cbind(iris,iris_Petal.Width_class)
