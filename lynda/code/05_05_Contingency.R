# File:     05_05_Contingency.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

# Also convert all variables to factors
df <- read_csv("data/state_trends.csv") |>
  select(region, psy_reg) |> 
  mutate(across(everything(), as_factor)) |>
  print()

# ANALYZE DATA #############################################

# Create contingency table
ct <- table(df$region, df$psy_reg)
ct

# Call also get cell, row, and column %
# With rounding to get just 2 decimal places
# Multiplied by 100 to make %

# Row percentages
ct |>
  prop.table(1) |>  # 1 is for row percentages
  round(2) * 100

# Column percentages
ct |>
  prop.table(2) |>  # 2 is for columns percentages
  round(2) * 100

# Total percentages
ct |>
  prop.table() |>  # No argument for total percentages
  round(2) * 100

# Chi-squared test (but n is small)
tchi <- chisq.test(ct)
tchi

# Get p-value  in one step
table(df$region, df$psy_reg) |> chisq.test()

# Additional tables
tchi$observed   # Observed frequencies (same as ct)
tchi$expected   # Expected frequencies
tchi$residuals  # Pearson's residual
tchi$stdres     # Standardized residual

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
