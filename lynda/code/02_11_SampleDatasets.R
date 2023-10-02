# File:     02_12_SampleDatasets.R
# Project:  LearningR

# LOAD PACKAGES ############################################

library(datasets)           # Loads the built-in datasets
?datasets                   # Give data about package
library(help = "datasets")  # Lists datasets

# SOME SAMPLE DATASETS #####################################

# iris
?iris
iris

# UCBAdmissions
?UCBAdmissions
UCBAdmissions

# Titanic
?Titanic
Titanic

# state.x77
?state.x77
state.x77

#swiss
?swiss
swiss

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
