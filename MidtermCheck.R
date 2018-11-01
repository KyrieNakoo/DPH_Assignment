#p.11 formula 1.7
x<-c(3.1,17,9.9,5.1,18,3.8,10,2.9,21.2)
var(x)
sd(x)
summary(x)

#p.29 Q10
hr<-rep(c(5:10), times = c(14,17,28,25,10,6))
mean(hr)
var(hr)
sd(hr)

#?????????pits <- rep(c(0:8), times = c(5,15,23,21,17,11,5,2,1))
#var(), sd() all used to calculate sample variance, divided by n-1

#permutation&combination
perm = function(n, x) {
  factorial(n) / factorial(n-x)
}

comb = function(n, x) {
  factorial(n) / (factorial(n-x) * factorial(x))
}
perm(5,3)
comb(5,3)
perm(3,3)

#dbinom(x,size,prob) probaility of exactly number of x
#pbinom(x, size, prob) probaility that at least, fewer, more...
#qbiom(x, )

# n>=100, np<=10, possion approxmation to binomial distribution
ppois(2,0.5)
# np>5, n(1-p)>5, normal approximation to binomial distribution 
# nn=nb+0.5

#dnorm(20) 
#pnorm give the percentage under the x value
#qnorm give the value/z score of the percentage interval
dnorm()
pnorm()
qnorm()

# calcuation for standard error
se = function(x,n) {
  x/sqrt(n)
}
se(20,100)

#p.99, Q6
pbinom(8,18,0.6)

#p.115, e.g.4.4
pnorm(250,200,20)
pnorm(225,200,20,lower.tail = FALSE)
#p.116, sol4
se(20,25)
pnorm(188,200,4)


# Find 95%/99% confidence of population mean when population variance is konwn:
qnorm(0.025,15,se(4,25))
qnorm(0.975,15,se(4,25))

qnorm(0.005,15,se(4,25))
qnorm(0.995,15,se(4,25))

# qt(x, df) calculate the t0 values, for ?? confidence interval calculation x-t0*s/sqr(n)
# qchisq(x, df) calculate the x^2 value, for ?? confidence interval calculation (n-1)*s^2/x^2

#p.122 e.g. 4.8
qt(0.025,24)

qt(0.025,39)
qchisq(0.975,39)
