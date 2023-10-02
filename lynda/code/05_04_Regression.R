# File:     05_04_Regression.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

# Select the personality and Google Trends variables
df <- read_csv("data/state_trends.csv") |>
  select(extraversion:hockey) |>
  print()

# SCATTERPLOTS #############################################

# Scatterplot of "data_science" and personality variables
df |>
  select(data_science, extraversion:openness) |>
  plot()

# Quick graphical check on bivariate association
df |>
  select(openness, data_science) |>
  plot()

# Add regression line with lm(); usage: y ~ X
# Note different variable order (vs plot)
lm(df$data_science ~ df$openness) |> abline()

# BIVARIATE REGRESSION #####################################

# Compute and save bivariate regression
fit1 <- lm(df$data_science ~ df$openness)

# Show model
fit1

# Summarize regression model
summary(fit1)

# Confidence intervals for coefficients
confint(fit1)

# Predict values of "data_science"
predict(fit1)

# Prediction intervals for values of "data_science"
predict(fit1, interval = "prediction")

# Regression diagnostics
lm.influence(fit1)
influence.measures(fit1)

# MULTIPLE REGRESSION ######################################

# Moving the outcome, y, to the front and having nothing 
# else but predictor variables, X, can make things easier
df <- df |>
  select(data_science, extraversion:openness) |>
  print()

# Note that if you want to just move one variable to the
# front and keep everything else in the same order, you can
# do this: select(data_analysis, everything()) |>

# Three ways to specify model

# Most concise
lm(df)

# Identify outcome, infer rest
lm(data_science ~ ., data = df)

# Identify entire model
lm(data_science ~ extraversion + agreeableness +
   conscientiousness + neuroticism + openness, data = df)

# Save model
fit2 <- lm(df)

# Show model
fit2

# Summarize regression model
summary(fit2)

# CLEAN UP #################################################

# Clear R 
#   Restart R to clear objects from the environment, clear
#   plots, unload external packages, reset options, relative
#   paths, dependencies, etc. Use the RStudio menu Session > 
#   Restart R, or use Ctrl+Shift+F10 (for Windows and Linux)
#   or Command+Shift+0 (for MacOS).

# Clear console
cat("\014")  # Mimics ctrl+L

# Clear mind :)
