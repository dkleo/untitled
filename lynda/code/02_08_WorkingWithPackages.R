# File:     02_09_WorkingWithPackages
# Project:  LearningR

# INSTALL PACKAGES #########################################

# If a package appears in code but is not installed, RStudio
# will prompt to install it; see the message at the top of 
# this script window.

install.packages("pacman")

# Note: It's okay to load packages in your script if you are
# doing "interactive" analysis on open scripts. However, for
# projects where the script is executed without being
# opened, like a source file, code to load or install
# packages should not be included. Rather, the packages
# should be loaded previously in a separate file.

# LOAD PACKAGES ############################################

library(pacman)  # Gives error if package is not installed;
                 # stops execution.

require(pacman)  # Typically used inside functions; gives a
                 # warning but not an error if package is 
                 # not installed; code will execute but will
                 # crash when package is called.

# USING A FUNCTION WITHOUT LOADING A PACKAGE ###############

# Package must be installed but does not need to be loaded;
# also helpful when two packages have functions with 
# conflicting names. Usage: package::function
pacman::p_data(datasets)

# UNLOAD AND DELETE PACKAGES ###############################

# Unload packages
detach("package:pacman", unload = T)

# Note that the manual code for unloading packages only
# needs to be done with R's built-in packages; for third-
# party packages like pacman, restarting R will unload them.

# If you want to completely remove a package from your 
# library, you can use remove.packages(); I rarely do this. 
# Note: this function does not remove dependencies that may
# have been installed with the package.
remove.packages("pacman")

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
