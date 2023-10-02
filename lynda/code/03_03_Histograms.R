# File:     03_03_Histograms.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

df <- read_csv("data/state_trends.csv")

# HISTOGRAM ################################################

?hist

# Histogram with defaults
hist(df$data_science)

# Histogram with options
hist(df$data_science,
  breaks = 7,  # Suggest number of breaks
  main   = "Histogram of Searches for \"Data Science\"",
  sub    = "(Source: state_trends.csv)",
  ylab   = "Frequency",
  xlab   = "Searches for \"Data Science\"",
  border = NA,  # No borders on bars
  col    = "#CD0000"  # Sets fill color to red3
)

# DENSITY PLOT #############################################

?density

# Density plot with defaults
plot(density(df$data_science))

# Density plot with options
df |>
  pull(data_science) |>  # Use pull() instead of select()
  as.numeric() |>        # Coerces to numeric variable
  density() |>           # Draws density curve
  plot(
    main = "Density Plot of Searches for \"Data Science\"",
    sub  = "(Source: state_trends.csv)",
    ylab = "Frequency",
    xlab = "Searches for \"Data Science\"",
  )

# Use polygon to ADD a filled density plot

df |>
  pull(data_science) |>
  as.numeric() |>
  density() |>
  polygon(col  = "#CD0000")  # Sets fill color to red3

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
