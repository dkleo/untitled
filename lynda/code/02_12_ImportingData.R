# File:     02_13_ImportingData.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # `readxl` is installed as part of the 
                    # tidyverse but needs to be loaded 
                    # explicitly.

# LOAD CSV FILE ############################################

# Save data to "df" (for "data frame")

# Import CSV files with readr::read_csv() from tidyverse;
# data is saved as a "tibble"
df <- read_csv("data/state_trends.csv")

# Check data
df           # See first ten lines of tibble
glimpse(df)  # See full variable names and types

# LOAD EXCEL FILE ##########################################

# Import Excel files (both .XLS and .XLSX) with 
# readr::read_excel() from tidyverse; saved as a tibble.

# Rename outcome as "y" (if it helps)
# Specify outcome with df$y

df2 <- read_excel(
    "data/state_trends.xlsx", 
    sheet = "all_data"
  ) |>
  as_tibble() |>
  select(state_code, 
    psych_region,
    extraversion:openness) |> 
  rename(y = psych_region) |>
  mutate(y = as.factor(y)) |>
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
