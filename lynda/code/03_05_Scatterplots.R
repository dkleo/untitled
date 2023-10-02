# File:     03_05_Scatterplots.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

df <- read_csv("data/state_trends.csv") |>
  select(basketball:hockey) |>
  glimpse()

# SCATTERPLOTS #############################################

# Plot all associations
df |> plot()

# Bivariate scatterplot with defaults
df |>
  select(soccer, hockey) |> 
  plot()

# Bivariate scatterplot with options
df |>
  select(soccer, hockey) |> 
  plot(
    main = "Scatterplot of Searches by State",
    xlab = "Searches for \"Soccer\"",
    ylab = "Searches for \"Hockey\"",
    col  = "red3",  # Color of points
    pch  = 20,      # "Plotting character" (small circle)
  )

?pch  # See plotting characters

# Add fit linear regression line (y ~ x) 
lm(df$hockey ~ df$soccer) |>
  abline()

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
