# File:     02_07_Comments.R
# Project:  LearningR

# LOAD PACKAGES ############################################

library(datasets)   # Loads the built-in datasets

# LOAD AND PREPARE DATA ####################################

?iris
df <- iris
head(df)

# COMMENT OUT LINES ########################################

# All commands used
hist(df$Sepal.Width,
     col  = "#CD0000",  # red3
     border = NA,  # No borders
     main = "Histogram of Sepal Width",
     xlab = "Sepal Width (in cm)"
)
# Use comments to disable commands (can use keyboard 
# shortcuts to comment out code)
hist(df$Sepal.Width,
  # col  = "#CD0000",  # red3
  # border = NA,  # No borders
  main = "Histogram of Sepal Width",
  xlab = "Sepal Width (in cm)"
)

# THIS IS A LEVEL 1 HEADER #################################

## This Is a Level 2 Header ================================

### This is a level 3 header. ------------------------------

# Headers display in the document outline (to the right) and
# in the document navigator (on the bottom)

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