# This script fits two linear models to the Advertising.csv data
# from ISLR.  The first includes all predictors, while the
# second excludes the Newspaper advertising measure.

data<-read.csv("Advertising.csv", header=TRUE)

cat("Data measures: \n", names(data), "\n")


fit3<-lm(Sales~TV, data=data)
fit1<-lm(Sales~TV+Radio+Newspaper, data=data)
fit2<-lm(Sales~TV+Radio, data=data)

print(summary(fit3))
# print(anova(fit1))
# print(anova(fit2))

plot(data$TV,data$Sales, xlab="TV Advertising", ylab="Sales")
abline(fit3)

# print(summary(fit1))
# print(summary(fit2))