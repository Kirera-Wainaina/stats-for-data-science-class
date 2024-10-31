# Gaussian distribution 

m = 0
sd = 2
x = seq(-4, 4, 0.01)
x1 = seq(-5, 5, 0.01)
y = dnorm(x) # normal distribution formula
plot(x, y)
points(x, dnorm(x, mean = 2), col = 'red')
points(x, dnorm(x, mean = 0, sd = 3), col = 'blue')
abline(1)
abline(-1)

# What is the probability that X < 0.3? Verify numerically and visually
pnorm(0.3)

table(rnorm(1e6) < 0.3) / 1e6


# What is the probability that X < 4.5?
pnorm(4.5)

table(rnorm(1e6) < 4.5) / 1e6

#What is the probability that X < 14.5? Hint: look at the help page and use
# the lower.tail argument

pnorm(14.5, lower.tail = FALSE)

# What value x has P rob(X < x) = 0.7?
qnorm(0.7)
pnorm(0.5244005)

# relationship between gaussian and binomial
r = 0:100
plot(r, dbinom(r, 100, 0.3), type = 'b')
points(r, dnorm(r, mean = 30, sd = sqrt(21)), type = 'b', col = 'red')

       