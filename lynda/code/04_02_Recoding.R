# File:     04_02_Recoding.R
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

# COMBINE CATEGORIES WITH RECODE ###########################

df |>
  mutate(relaxed = recode(psych_region,
    "Relaxed and Creative" = "yes",
    "Friendly and Conventional" = "no",
    .default = "no")) |>  # Sets default value
  select(state_code, psych_region, relaxed)

# CREATE CATEGORIES WITH CASE_WHEN ########################

?case_when  # Help on `case_when`

df |>
  mutate(
    like_arts = case_when(
      art > 75 | dance > 75 | museum > 75 ~ "yes",
      TRUE ~ "no"  # All other values
    )
  ) |> 
  select(state_code, like_arts, art:museum) |>
  arrange(desc(like_arts)) |>  # Put yes at top
  print(n = Inf)               # Show all cases

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
