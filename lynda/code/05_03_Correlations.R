# File:     05_03_Correlations.R
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
  select(  # Rename variables with `select`
    DS = data_science,  # New = old
    AI = artificial_intelligence,
    ML = machine_learning,
    DA = data_analysis,
    BI = business_intelligence,
    SS = spreadsheet,
    Stats = statistics) |> 
  print()

# CORRELATION MATRIX #######################################

# Scatterplot matrix
df |> plot()

# Correlation matrix
df |> cor()

# Rounded to 2 decimals
df |>
  cor() |>
  round(2)

# TEST AND CI FOR A SINGLE CORRELATION #####################

# Can test one pair of variables at a time.
# Gives r, hypothesis test, and confidence interval
cor.test(df$DS, df$DA)

# PACKAGES TO GET P-VALUES FOR MATRIX ######################

# The `Hmisc` package can get p-values for matrix
browseURL("https://cran.r-project.org/web/packages/Hmisc/")

# The `rstatix` package is another option (with graphs)
browseURL("https://cran.r-project.org/web/packages/rstatix/")

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
