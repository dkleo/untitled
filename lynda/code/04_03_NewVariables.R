# File:     04_03_NewVariables.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

library(tidyverse)

# CREATE DATA ##############################################

# Create a small dataset with 1-7 data and a missing value
df <- tibble(
  x = 1:5, 
  y = 7:3, 
  z = c(2, 4, 3, 7, NA)
) |>
print()

# AVERAGE ACROSS VARIABLES #################################

# Average variables with `rowMeans`
df %>% mutate(
  mean_xy  = rowMeans(across(x:y)),
  mean_xyz = rowMeans(across(x:z)),
  mean_xz  = rowMeans(across(c(x, z)))
)

# Remove missing values by adding `na.rm = T`
df %>% mutate(
  mean_xy  = rowMeans(across(x:y), na.rm = T),
  mean_xyz = rowMeans(across(x:z), na.rm = T),
  mean_xz  = rowMeans(across(c(x, z)), na.rm = T)
)

# REVERSE CODING ###########################################

df %>% 
  mutate(y_r = 8 - y) |>  # Create reversed variable
  select(x, y_r, z) |>    # Select and reorder variables
  mutate(                 # Compute average scores
    mean_xy  = rowMeans(across(c(x, y_r)), na.rm = T),
    mean_xyz = rowMeans(across(c(x, y_r, z)), na.rm = T),
    mean_xz  = rowMeans(across(c(x, z)), na.rm = T)
  )

# For a 1-n scale, use (n + 1) - x
# So, for a 1-7 scale, use 8 - x
# So, for a 1-10 scale, use 11 - x
#
# For a 0-n scale, use n - x
# So, for a 0-5 scale, use 5 - x
# So, for a 0-10 scale, use 10 - x
#
# For a -n to +n scale, use x * -1
# So, for a -3 to +3 scale, use x * -1
# So, for a -10 to +10 scale, use x * -1

# PACKAGES #################################################

# The "psych" package can make this process much easier and
# has many more options
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
