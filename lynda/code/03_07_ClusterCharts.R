# File:     03_07_ClusterCharts.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files

# LOAD DATA ################################################

# Select state codes and search data
df <- read_csv("data/state_trends.csv") |>
  select(state_code, artificial_intelligence:hockey)

# ANALYZE DATA #############################################

# Calculate clusters using hclust(), an agglomerative method
hc <- df |>  # Get data
  dist() |>  # Compute distance/dissimilarity matrix
  hclust()   # Compute hierarchical clusters

# Plot dendrogram
hc |> plot(labels = df$state_code)

# Draw boxes around clusters
hc |> rect.hclust(k = 2, border = "gray80")  # 2 boxes
hc |> rect.hclust(k = 3, border = 2:4)       # 3 boxes

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
