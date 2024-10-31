# Question 1.
# Use R’s qnorm function to find z0, such that P (Z ≤ z0) = α, where Z ∼ N (0, 1) and α is:
# (a) 0.005
qnorm(0.005)
# (b) 0.995
qnorm(0.995)
# (c) 0.01
qnorm(0.01)
# (d) 0.99
qnorm(0.99)
# (e) 0.025
qnorm(0.025)
# (f) 0.975
qnorm(0.975)
# (g) 0.05
qnorm(0.05)
# (h) 0.95
qnorm(0.95)

# Question 2
# to test a null hypothesis H0 : μ = μ0 for a population that is N (μ, σ2), it is usual to
# use the test statistic Z =  ̄X−μ0
# σ/√n where  ̄X is mean of a random sample of size n from the
# population.
# Find the interval of Z values that is the critical region (or rejection region) for the following
# values of α.
# (a) Assume that the alternative hypothesis is H1 : μ < μ0, which means a one-sided test.
# i. 0.05
qnorm(0.95)
# ii. 0.01
qnorm(0.99)
# iii. 0.001
qnorm(0.999)
# Assume that the alternative hypothesis is H1 : μ ̸ = μ0. This is a two-sided test.
# i. 0.05
c(qnorm(0.025), qnorm(0.975))
# ii. 0.01
c(qnorm(0.01/2), qnorm(1-0.01/2))
# iii. 0.001
c(qnorm(0.001/2), qnorm(1-0.001/2))

# 3. The critical region can also be constructed in terms of the sample mean  ̄X, rather than
#the z score. To do this, we use the relationship Z =  ̄X−μ0
# σ/√n to get  ̄X = μ0 + Zσ√n .
# Assume that μ0 = 9, σ = 0.5 and n = 36.
# (a) α = 0.05 and H1 : μ > μ0
qnorm(0.95, 9, 0.05/sqrt(36))
# (b) α = 0.05 and H1 : μ ̸ = μ0
qnorm(c(0.025, 0.975), 9, 0.05/sqrt(36))

# 4. A army office is interested in the horizontal distance from the target of a set of rifle shots,
#measured in centimetres. It is known from previous studies that the standard deviation
# of the horizontal distance is 0.6 cm.
x <- c(-0.67, -0.03, 0.37, 1.87, 0.35, -0.47, 0.92, 0.95, 0.55, 0.16,
       0.47, -0.44, 0.2, 0.11, 1.91, 1.06, -0.49, -0.93, 1.78, -0.31,
       1.28, 0.26, 0.18, -0.26, 0.7, -0.37, -0.73, -1, 0.4, 1.03)
length(x)
#[1] 30
# (a) Calculate the sample mean for this dataset.
mean(x)
# (b) Calculate the standard error for this dataset, using the known population standard
# deviation σ = 0.6
0.6 / sqrt(length(x))
# (c) State a sensible null and alternative hypothesis to be used in this situation, in words
# and in mathematical symbols.
# (d) Compute the test statistic, i.e. Z =  ̄X−μ0
# σ/√n
# (e) Using a significance level of 5%, identify the critical region.
# (f) Is the test statistic within the critical region? What conclusion can we draw?
#  We can also assess the evidence provided by the data using p-values.
# (g) State the precise definition of p-value and state what “more extreme” means in this
# context.
#(h) Using pnorm(), or otherwise, calculate the p-value.
#(i) Interpret your findings.
# (j) The critical region can also be computed in terms of the sample mean. For what
# values of the sample mean would the null hypothesis be rejected?
# (k) Compute a 95% confidence interval for the mean horizontal deviation of the rifle
# shots.


