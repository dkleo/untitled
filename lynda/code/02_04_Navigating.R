# File:     02_04_Navigating.R
# Project:  LearningR

# LOAD PACKAGES ############################################

library(datasets)   # Loads the built-in datasets

# LOAD AND PREPARE DATA ####################################

?iris       # Get help on `iris` dataset
df <- iris  # Save dataset to `df` (optional)
head(df)    # Display first six lines of data

# ANALYZE DATA #############################################

# The R $ operator selects a variable from a data frame.
# Usage: dataset$variable
hist(df$Sepal.Width,            # Make basic histogram
  main = "Iris Sepal Width",    # Add title to chart
  xlab = "Sepal Width (in cm)"  # Add X-axis label
)                               # Close on new line

# CLEAN UP #################################################

# Clear base packages
detach("package:datasets", unload = T)

# Clear R 
#   Restart R to clear objects from the environment, clear
#   plots, unload external packages, reset options, relative
#   paths, dependencies, etc. Use the RStudio menu Session > 
#   Restart R, or use Ctrl+Shift+F10 (for Windows and Linux)
#   or Command+Shift+0 (for MacOS).

# Clear console
cat("\014")  # Mimics ctrl+L

# Clear mind :)