#2019312486
#Yoon Ji Kim


#Loops
#i)
data(airquality)

#ii)
df<-na.omit(airquality)

#iii)
highest_var <- 0.0
var_index< -1
for (i in 1:ncol(df))
  {
    if(var(df[[i]]) > highest_var)
    {
      highest_var <- var(df[[i]])
      var_index <- i
    }
}
names(df)[var_index] #Answer: "Solar.R"
highest_var #Answer: 8308.742

#iv)
num <- c( )
for (k in df[[1]]) {
  if(k < 10) {
    next
  }
  num <- append(num, k)
}
print(sum(num)) #Answer: 4613

#v)
for (j in 1:ncol(df)) {
  if (mean(df[[j]]) >= 10) {
    next
  }
  else if (mean(df[[j]]) < 10) {
    break
  }
}
colnames(df[j]) #column name: wind
mean(df[[j]]) #mean: 9.93964

#vi

p <- c(2)
for (f_p in 3:11){
  if (!f_p%%2 | !f_p%%9){
    next
  }
  else {
    p <- append(p, f_p)
  }
}
for (n in 12:100) {
  for (h in (1:length(p))) {
    if (!n%%p[h]) {
      break
    }
    if (h==length(p)) {
      p <- append(p,n)
    }
  }
}
p <- p[-1]
print(p)
#Answer: 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97

#vii)
num <- c(2,0,1,9,3,1,2,4,8,6)
num[-0]
for (s in num) {
  if (s == 0) {
    next
  }
  else {
    print(s)
  }
}
#Answer: 2,1,9,3,1,2,4,8,6
#위에꺼 말고 밑이 진짜 정답임 ㅋㅋ
num <- c(2,0,1,9,3,1,2,4,8,6)
product <- 1
for (i in num) {
  if (i){ #if i is not zero
    product <- product * i
  }
}
product






