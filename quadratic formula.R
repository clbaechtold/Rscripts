quadSol <- function() {
  
  # prompt
  a <- readline(prompt = 'x^2 coefficient: ')
  b <- readline(prompt = 'x coefficient: ')
  c <- readline(prompt = 'constant coefficient: ')
  
  a <- as.integer(a)
  b <- as.integer(b)
  c<- as.integer(c)
  
  x1 <- (-b+sqrt(b^2-4*a*c))/(2*a)
  x2 <- (-b-sqrt(b^2-4*a*c))/(2*a)
  
  return(c(x1,x2))
  
}
x<-quadSol()
cat("Solutions to quadratic equation are: ", x[1],",", x[2])


