library(datasets)
head(iris)
summary(iris)

?plot

plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Species, iris$Petal.Width)
plot(iris$Petal.Length, iris$Petal.Width)
plot(iris)

plot(iris$Petal.Length, iris$Petal.Width, col = "#cc0000", pch = 19, main = "Iris: Petal Length vs. Petal Width", xlab = "Petal Length", ylab = "Petal Width")

plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)
plot(dnorm, -3, +3, col = "#cc0000", lwd = 2.5, main = "Standard Normal Distribution", xlab = "z-scores", ylab = "Density")

detach("package:datasets", unload = TRUE)

library(datasets)

?mtcars
head(mtcars)
summary(mtcars)
summary(mtcars$am)

barplot(mtcars$cyl)

cylinders <- table(mtcars$cyl)
barplot(cylinders)
plot(cylinders)

rm(list = ls())


library(datasets)
?iris
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)

par(mfrow = c(3,1))
hist(iris$Petal.Width [iris$Species == "setosa"], xlim = c(0,3), breaks = 9, main = "Petal Width for Setosa", xlab = "", col = "red")
hist(iris$Petal.Width [iris$Species == "versicolor"], xlim = c(0,3), breaks = 9, main = "Petal Width for Versicolor", xlab = "", col = "purple")
hist(iris$Petal.Width [iris$Species == "virginica"], xlim = c(0,3), breaks = 9, main = "Petal Width for Virginica", xlab = "", col = "blue")

par(mfrow = c(1,1))
detach("package:datasets", unload = TRUE)


library(datasets)
head(mtcars)
par(mfrow = c(2,1))
hist(mtcars$wt)
hist(mtcars$mpg)
par(mfrow = c(1,1))
plot(mtcars$wt, mtcars$mpg)
plot(mtcars$wt, mtcars$mpg * 0.453592, pch = 19, cex = 1.5, col = "#cc0000", main = "MPG as a Function of Weight of Cars", xlab = "Weight (in 1000 kg)", ylab = "MPG")
detach("package:datasets", unload = TRUE)

library(datasets)
?lynx
head(lynx)
hist(lynx)
hist(lynx, breaks = 14, freq = FALSE, col = "thistle1", main = paste("Histogram of Annual Canadian Lynx", "Trappings, 1821-1934"), xlab = "Number of Lynx Trapped")
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)), col = "thistle4", lwd = 4, add = TRUE)
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)
rug(lynx, lwd = 2 , col = "red")
#plot(lynx)
?density

library(datasets)
head(iris)
summary(iris$Species) #Categorical
summary(iris$Sepal.Length) #Quantitative
summary(iris) #Entire data frame
plot(iris$Sepal.Length)
lines(iris$Sepal.Length)
hist(iris$Sepal.Length, freq = FALSE)
curve(dnorm(x, mean = mean(iris$Sepal.Length), sd = sd(iris$Sepal.Length)), col = "red", add = TRUE)
abline(v = mean(iris$Sepal.Length), col = "blue", lwd = 2)
text(mean(iris$Sepal.Length), 0 , "Mean")
abline(v = median(iris$Sepal.Length), col = "green", lwd = 2)
text(median(iris$Sepal.Length), 10 , "Median")
abline(v = sd(iris$Sepal.Length), col = "pink", lwd = 2)
?points
detach("package:datasets", unload = TRUE)

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, plotly, rio, rmarkdown, shiny, stringr, tidyr)
library(datasets)
p_load(psych)
p_help(pysch)
p_help(pysch, web = FALSE)
?describe
describe(iris$Sepal.Length)
describe(iris)
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5], main = "Petal Length: Short Virginica")

i.setosa <- iris[iris$Species == "setosa", ]
hist( i.setosa$Petal.Length)

rm(list = ls())


n1 <- 15
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)

c1 <- "c"
c1
typeof(c1)


c2 <- "string"
c2
typeof(c2)

l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)

v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c(TRUE, FALSE)
v3
is.vector(v3)

m1 <- matrix(c(T, T, F, F, T, F), nrow = 2)
m1

m2 <- matrix(c("a", "b",
               "c", "d"),
             nrow = 2,
             byrow = T)
m2

a1 <- array(c(1:24), c(4,3,2))
a1

vNumeric <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, T)

dfa <- cbind(vNumeric, vCharacter, vLogical)
dfa

df <- as.data.frame(dfa)
df

o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c")
o3 <- c(T, F, T)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1)
list2

(coerce1 <- c(1, "b", TRUE))
coerce1
typeof(coerce1)

(coerce2 <- 5)
coerce2
typeof(coerce2)

rm(list = ls())

(x1 <- 1:3)
(y <- 1:9)
(df1 <- cbind.data.frame(x1, y))
typeof(df1$x1)
str(df1)

(x4 <- 1:3)
df4 <- cbind.data.frame(x4, y)
df4$x4 <- factor(df4$x4, levels = c(1, 2, 3), labels = c("macOS", "Windows", "Linux"))
df4

x1 <- 0:10
10:0 -> x2
x3 = 5:7.5
x3

(x4 <- seq(30, 0, by = -3))

x5 <- scan()
x5

x6 <- rep(c(T,F), each = 5)
x7 <- rep(c(T,F), 5)
x7

rm(list = ls())

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)

head(mtcars)

cars <- mtcars[, c(1:4,6:7,9:11)]

head(cars)

hc <- cars %>% dist %>% hclust

plot(hc)
rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green")
rect.hclust(hc, k = 5, border = "darkred")

pc <- prcomp(cars, center = TRUE, scale = TRUE)
summary(pc)
plot(pc)
pc
predict(pc) %>% round(2)
biplot(pc)

rm(list = ls())

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)

?USJudgeRatings
head(USJudgeRatings)
data <- USJudgeRatings
x <- as.matrix(data[-12])
y <- data[, 12]
head(x)
head(y)

reg1 <- lm(y ~ x)
reg1
summary(reg1)
anova(reg1)
coef(reg1)
confint(reg1)
resid(reg1)
hist(resid(reg1))
plot(reg1)

p_load(lars, caret)

stepwise <- lars(x, y, type = "stepwise")
plot(stepwise)

forward <- lars(x, y, type = "forward.stagewise")
plot(forward)

lar <- lars(x, y, type = "lar")
plot(lar)

lasso <- lars(x, y, type = "lasso")
plot(lasso)

r2comp <- c(stepwise$R2[6], forward$R2[6], lar$R2[6], lasso$R2[6] %>% round(2))
names(r2comp) <- c("stepwise", "forward", "lar", "lasso")
r2comp

rm(list = ls())