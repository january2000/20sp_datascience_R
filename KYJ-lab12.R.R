#2019312486 Yoon Ji Kim

#1.
#a)
computers <- read.csv("Computers.csv")
head(computers)
str(computers)
View(computers)

#b)
ggplot(computers, aes(x = speed+hd+ram, y = price)) +
  geom_point()
#Answer: I see no general pattern, but price varies regardless of the speed,hd,and ram. 
##########But if the sum of speed, hd and ram is big, the price goes up.

#c)
ggplot(computers, aes(x = speed+hd+ram, y = price)) +
  geom_point() +
  scale_x_continuous(trans = "log")
#Answer: if the sum of speed,hd, and ram gets bigger, the highest price of it rises.

#d)
ggplot(computers, aes(x = speed+hd+ram, y = price)) +
  geom_point() +
  scale_x_continuous(trans = "log") +
  geom_smooth(method = "lm")
#Answer: Yes

#e)
ggplot(data = computers, mapping = aes(x = speed+hd+ram, y = price, col = cd)) +
  geom_point()
#Answer: price of the computers with cd have no big differece compared to the computers without cd.
######## However, computers with cd generally have higher speed, HD and RAM.

#f)
ggplot(data = computers, mapping = aes(x = speed+hd+ram, y = price, col = as.factor(screen))) +
  geom_point()+
  scale_x_continuous(trans = "log") +
  scale_color_manual(values = c("pink","red","black"))


#Answer: If the screen size gets bigger, the price goes up.



#2.
pigeon <- read.csv("http://blog.yhat.com/static/misc/data/pigeon-racing.csv")

#a)
str(pigeon)
#Answer: 400 observations and 11 variables

#b)
pigeon <- read.csv("http://blog.yhat.com/static/misc/data/pigeon-racing.csv", stringsAsFactors = F)

#c)
ggplot(pigeon, aes(x = Pos, y = Speed)) +
  geom_point()
#Answer: As the Pos gets bigger, the Speed goes down.

#d)
ggplot(data = pigeon, mapping = aes(x = Pos, y = Speed, col = Sex)) +
  geom_point()
#Answer: there is no particularly faster sex than the other.



#3.
#a)
sat <- read.csv("http://www.randomservices.org/random/data/SATbyState.txt", sep = "\t", as.is = 1)
ggplot(sat, aes(x = Verbal, y = Math)) +
  geom_point()
#Answer: As the Verbal score goes up, the Math score rises.

#b)
#Answer: Yes I see one outlier. I think this person could be a person particularly weak at Math.

#c)
ggplot(data = sat, mapping = aes(x = Verbal, y = Math, size = Rate)) +
  geom_point()
#Answer: participation rate are higher with low scores both in Verbal and Math compared to the rate of the high scores in Math and Verbal.



#4)
#a)
sat2 <- read.csv("http://www.randomservices.org/random/data/SATbyYear.txt", sep = "\t")
ggplot(sat2, aes(x = Year, y = AVerbal)) +
  geom_point()
#Answer: The average of the Verbal scores decreases as the time goes by, and is similar recently.

#b)
ggplot(data = sat2, mapping = aes(x = Year, y = AVerbal, size = FVerbal)) +
  geom_point()
#Answer: Yes, female verbal scores follow the trend of the average verbal scores. So do the male verbal scores.

#c)
ggplot(data = sat2, mapping = aes(x = Year, y = AMath)) +
  geom_point()
#Answer: Average of the Math scores plunges but soars again like letter 'V'

#d) 
ggplot(data = sat2, mapping = aes(x = Year, y = AMath, size =FVerbal)) +
  geom_point()
#Answer: It doesn't seem that the average Math scores is reflected in both genders, and so do the male verbal scores.
