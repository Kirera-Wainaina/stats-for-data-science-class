# LINEAR REGRESSION
# View the first few rows of the trees data set
head(trees)

# Plot a scatter graph of volume against height
plot(Volume~Height, data = trees)

# Plot the chart with extended limits
plot(Volume~Height, data = trees, ylim=c(-90,80), xlim=c(0,90))

# Generate a linear model
# y = mx + b
trees_lm <- lm(Volume~Height, data = trees)

# It takes the form
# Volume = -87.124 + 1.543*Height

# Generate a summary
summary(trees_lm)

# Draw a line of best fit
abline(trees_lm)
abline(h=0)

# Plot the chart with log values of the variables
plot(Volume~Height, data=trees, log='xy')

# Create a log linear model
trees_log_lm <- lm(log(Volume)~log(Height), data=trees)

plot(trees_log_lm, data = trees)

# Plot the abline of the
abline(trees_log_lm)

## GIRTH
trees_girth_lm <- lm(Volume~Girth, data = trees)
plot(Volume~Girth, data = trees)

# draw the line of best fit
abline(trees_girth_lm)

summary(trees_girth_lm)

# use log values of volume and girth
plot(log(Volume)~log(Girth), data = trees)
trees_log_girth_lm <- lm(log(Volume)~log(Girth), data = trees)

abline(trees_log_girth_lm)

summary(trees_log_girth_lm)

# Now we use girth and height to predict volume
plot(lm(Volume ~ Height+Girth), data = trees)
lm_height_girth <- lm(Volume ~ Height+Girth, data = trees)
summary(lm_height_girth)

lm_log_height_girth <- lm(log(Volume)~log(Height)+log(Girth), data = trees)
summary(lm_log_height_girth)

# tasks
a <- read.table(file = file.choose(), header = TRUE)
a

plot(weight~age, data = a)
summary(lm(weight~age, data = a))
plot(weight~height, data = a)
summary(lm(weight~height, data = a))

plot(log(weight)~log(height), data = a)
summary(lm(log(weight)~log(height), data = a))

summary(lm(weight~height+age, data = a))
a

summary(lm(weight~height+age+children, data = a))
summary(lm(log(weight)~log(height)+log(children), data = a)) # cant use log of children

# E3MG DATASET
e <- read.table(file.choose(), header = TRUE)
e

plot(rec_dep~oil.price, data = e)
summary(lm(rec_dep~oil.price, data = e))
summary(lm(log(rec_dep)~log(oil.price), data = e)) # some prices are negative

plot(rec_dep~direct.tax, data = e)
summary(lm(rec_dep~direct.tax, data = e))

plot(rec_dep~interest.rate, data=e)
summary(lm(rec_dep~interest.rate, data = e)) # interest rate has a p-value of 0.445. Too large

plot(rec_dep~saving.ratio, data = e)
summary(lm(rec_dep~saving.ratio, data = e))

plot(rec_dep~investment, data = e)
summary(lm(rec_dep~investment, data = e))

plot(rec_dep~rec_len, data = e)
summary(lm(rec_dep~rec_len, data = e))
