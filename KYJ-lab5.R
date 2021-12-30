#1.List Creation
#i)
myList <- list(2020, "Data", c(3,20), "DS&R")
#ii)
myList[[3]]
#iii)
names(myList) <- c("Year","Major","Date","Lecture")
#iv)
myList[["Date"]]

#2.List within a list
another_movie <- list(title = "Get Out", runTime = 104)
similar_movie <- list(title = "Us", runTime = 116, similar = another_movie)
movie <- list(title = "The Invisible Man", runTime = 124, rank = 3, similar = similar_movie, genre = c("horror", "thriller"))
#i)
movie[[1]]
movie[1]
movie[["title"]]
#ii)
genre <- c("horror", "thriller")
movie[["genre"]] <- genre
#iii)
movie[["rank"]] <- 1
#iv)
movie[[4]][[3]][[2]]


#3.Data frames
name <- c("Kim", "Park", "Lee", "Choi", "Hong")
age <- sample(20:30,5)
field3 <- LETTERS[1:5]
month <- month.name[3:7]
myDf <- data.frame(name, age, field3, month, stringsAsFactors = FALSE)

#i)
nrow(myDf) 
str(myDf)
dim(myDf)
#ii)
myDf[2, ]
#iii)
colnames(myDf)[colnames(myDf)=="field3"] <- "group"

names(myDf)[3]<-"group"
colnames(myDf)
#iv)
myDf_byAge <- myDf[order(myDf$age), ]
myDf_byAge

#4.Loading Dataset
data(airquality)
str(airquality)
head(airquality)
?airquality
#i)datat type: integer, 153 observations, 6 variable
#ii)
airquality <- airquality[order(airquality$Month), ]
#iii)
new_row <- data.frame(Ozone = 50, Solar.R = 130, Wind = 8.8, Temp = 71, Month = 10, Day = 1)
airquality <- rbind(airquality, new_row)
#iv)
interesting <- sample(c("y","n"),154,replace = TRUE)
airquality<-cbind(airquality,interesting)
