# install.packages("tidyverse")
library(ggplot2)
require(datasets)
require(grDevices)
require(graphics)

x_vals <- seq(-5, 5, by=0.5)
y_vals <- seq(-5, 5, by=0.5)

df <- expand.grid(x=x_vals, y=y_vals)
df$dydx <- (3 - df$y) / 2

magnitude <- sqrt(1 + df$dydx^2)
df$u <- 1 / magnitude
df$v <- df$dydx / magnitude