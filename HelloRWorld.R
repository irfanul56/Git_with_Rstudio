# Load libraries
library(ggplot2)

# Create copy of built in dataset mtcars
mtcars2 <- mtcars

# Get summary stats
summary(mtcars2)

# Convert some of the numeric data to factors and ordered factors
mtcars2$vs <- factor(mtcars2$vs, labels = c("V", "S"))
mtcars2$am <- factor(mtcars2$am, labels = c("automatic", "manual"))
mtcars2$cyl  <- ordered(mtcars2$cyl)
mtcars2$gear <- ordered(mtcars2$gear)
mtcars2$carb <- ordered(mtcars2$carb)

# Redo the summary
summary(mtcars2)

# Plot mpg vs disp using base plot
plot(mtcars2$disp, mtcars2$mpg)

# Create a nicer plot using ggplot2
ggplot(mtcars2, aes(x = disp, y = mpg)) + geom_point(aes(colour = wt)) + geom_smooth()
