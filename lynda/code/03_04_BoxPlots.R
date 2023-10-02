# File:     03_04_BoxPlots.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

# Also convert all character variables to factors
df <- read_csv("data/state_trends.csv") |>
  mutate(across(where(is_character), as_factor)) |>
  print()

# BOXPLOT OF FREQUENCIES ###################################

?plot     # Get info on "Generic X-Y Plotting
?boxplot  # Get info on the "Box Plots" function

# Boxplot with defaults
boxplot(df$dance)

# Who is the outlier?
df |> 
  filter(dance > 90) |>
  select(state, dance)

# Boxplot with options
df |>
  select(dance) |>
  boxplot(
    horizontal = T,  # Horizontal
    notch  = T,      # Confidence interval for median
    main   = "Boxplot of Searches for \"Dance\"",
    sub    = "(Source: state_trends.csv)",
    xlab   = "Searches for \"Dance\"",
    col    = "#CD0000"  # red3
  )

# BOXPLOTS FOR MULTIPLE VARIABLES ##########################

df |>
  select(basketball:hockey) |>
  boxplot()

# Who are the outliers on "hockey"?
df |> 
  filter(hockey > 45) |>
  select(state, hockey) |>
  arrange(desc(hockey))

# BOXPLOTS BY GROUP ########################################

# Boxplots by group using plot()
df |>
  select(has_nhl, hockey) |>
  plot()

# Who is the outlier on "No"?
df |>
  filter(has_nhl == "No") |>
  filter(hockey > 80) |>
  select(state, hockey)

# Boxplots by group using plot()
df |>
  select(has_nhl, hockey) |>
  plot(
    horizontal = T,  # Horizontal
    notch  = T,      # Confidence interval for median
    main   = "Boxplot of Searches for \"Hockey\"",
    sub    = "(Source: state_trends.csv)",
    xlab   = "Searches for \"Hockey\"",
    ylab   = "State has NHL Hockey Team",
    col    = "#CD0000"  # red3
  )

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
