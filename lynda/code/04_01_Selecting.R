# File:     04_01_Selecting.R
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
  select(state, region, psych_region, data_analysis) |>
  mutate(across(c(region:psych_region), as_factor)) |>
  print()

# FILTER BY ONE VARIABLE ###################################

# "data_analysis" is a numeric variable
df |>
  filter(data_analysis > 50) |>
  arrange(desc(data_analysis)) |>  # Sorts output
  print()

# "psych_region" is a text variable
df |>
  filter(psych_region == "Relaxed and Creative") |>
  arrange(desc(data_analysis)) |>  # Sorts output
  print()

# FILTER BY MULTIPLE VARIABLES #############################

# "or" is the vertical pipe |
df |>
  filter(region == "South" | 
    psych_region == "Relaxed and Creative") |>
  arrange(region, psych_region) |>  # Sorts output
  print(n = Inf)  # Print all rows

# "and" is the ampersand &
df |>
  filter(region == "South" & 
    psych_region == "Relaxed and Creative") |>
  print()

# "not" is the exclamation point !
df |>
  filter(region == "South" & 
    !psych_region == "Relaxed and Creative") |>
  arrange(psych_region, desc(data_analysis)) |>
  print()

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
