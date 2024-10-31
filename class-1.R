# question 2
# (text | not texting)

p <- 0.47
n <- 10
# probability mass function
# a list of probabilities for all possible values
pmf <- dbinom(0:10, 10, 0.47)
plot(0:10, pmf, type='h')

# expected value
sum(pmf * n)

# question 3
pmf_2 <- dbinom(400:600, 1000, 0.5)
plot(400:600, pmf_2, type='h')

# question 4
n <- 10
p <- 0.25
# binomial
# probability of 5 questions correctly
dbinom(5, 10, 0.25)

# probability of six or more
sum(dbinom(6:10, 10, 0.25))

# question 5
# n > 0
trials <- seq(1000, 2000,2)
successes <- trials / 2
probs <- dbinom(successes, trials, 0.5)
plot(trials, probs, type = 'h')
