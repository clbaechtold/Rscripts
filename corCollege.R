library(lattice)

college_data<-read.csv("College.csv", header=TRUE)
numeric<-college_data[,3:19]

cor_mat<-cor(numeric)

plot.new()
print(levelplot(cor_mat, xlab = NULL, ylab = NULL, scales = list (x = list (rot=90)),main="Correlation Matrix"))