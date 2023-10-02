# File:     03_02_BarCharts.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

# Also convert several adjacent variables to factors
df <- read_csv("C:/Users/lords/R/Ex_Files_Learning_R/Exercise Files/data/state_trends.csv") |>
  mutate(across(c(region:psy_reg), factor)) |>
  print()

# BARPLOT OF FREQUENCIES ###################################

?plot     # Get info on "Generic X-Y Plotting
?barplot  # Get info on the "Bar Plots" function

# Shortest method to make a barplot
plot(df$psy_reg)

# Similar process using pipes
df |>
  select(psy_reg) |>
  plot()

# Similar code using barplot(); DOESN'T WORK
df |>
  select(psy_reg) |>
  barplot()  # Error: height must be a vector or a matrix

# Create frequency vector with table()
df |>
  select(psy_reg) |>
  table() |>  # Put data in appropriate format
  barplot()

# Sort bars by decreasing values (NOT for ordinal X)
df |>
  select(psy_reg) |>
  table() |>
  sort(decreasing = T) |>  # Sort table
  barplot()

# Add options to plot
df |>
  select(psy_reg) |>
  table() |>  # Put data in appropriate format
  sort(decreasing = F) |>  # Sort table
  barplot(
    main   = "Personalities of 48 Contiguous US States",
    sub    = "(Source: state_trends.csv)",
    horiz  = T,  # Draw horizontal bars
    ylab   = "Personality Profile",
    xlab   = "Number of States",
    xlim   = c(0, 25),  # Limits for X axis
    border = NA,  # No borders on bars
    col    = "#CD0000"  # red3
  )

# STACKED BARPLOT OF FREQUENCIES ###########################

# 100% stacked bar
df |>
  select(region, psy_reg) |>
  plot()

# Stacked bars: step 1: create table
df_t <- df |>
  select(psy_reg, region) |>
  table() |>
  print()  # Show table in Console

# Stacked bars: step 2a: create graph w/legend
df_t |> barplot(legend = rownames(df_t))

# Stacked bars: step 2b: create graph w/o legend
df_t |> barplot()

# SIDE-BY-SIDE BARPLOT OF FREQUENCIES ######################

# Side-by-side bar w/legend
df_t |>
  barplot(
    legend = rownames(df_t), 
    beside = T  # Put bars next to each other
  )

# Side-by-side bar w/o legend
df_t |> barplot(beside = T)

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