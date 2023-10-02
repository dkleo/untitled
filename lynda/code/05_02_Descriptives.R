# File:     05_02_Descriptives.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

# Also convert several adjacent variables to factors
df <- read_csv("data/state_trends.csv") |>
  mutate(across(c(
    region, psych_region, psy_reg, has_nba:has_any
    ), 
    as_factor)
  ) |>
  print()

# SUMMARY ##################################################

# Summary for entire dataset
df |> summary()

# Summary for one variable
df |>
  select(statistics) |>
  summary()

# QUARTILES ################################################

# Tukey's five-number summary: minimum, lower-hinge,
# median, upper-hinge, maximum. No labels.
fivenum(df$statistics)

# Boxplot stats: hinges, n, CI for median, and outliers
boxplot(df$statistics, notch = T, horizontal = T)
boxplot.stats(df$statistics)

# PACKAGES #################################################

# The "psych" package gives many more options
browseURL("https://CRAN.R-project.org/package=psych")

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
