# File:     02_05_EnteringData.R
# Project:  LearningR

# BASIC COMMANDS ###########################################

2+2  # Basic math; press cmd/ctrl enter

1:100  # Prints numbers 1 to 100 across several lines

print("Hello World!")  # Prints "Hello World" in console

# ASSIGNING VALUES #########################################

# Individual values
a <- 1            # Use <- and not =
2 -> b            # Can go other way, but silly
c <- d <- e <- 3  # Multiple assignments

# Multiple values
x <- c(1, 2, 5, 9)  # c = Combine/concatenate
x                   # Displays contents of x in Console

# SEQUENCES ################################################

# Create sequential data
0:10     # 0 through 10
10:0     # 10 through 0
seq(10)  # 1 to 10
seq(20, -10, by = -3)  # Count down from 20 to -10 by 3

# MATH ################################################

# Surround command with parentheses to also display
(y <- c(5, 1, 0, 10)) 
x           # Display x again
x + y       # Adds corresponding elements in x and y
x * 2       # Multiplies each element in x by 2
2^6         # Powers/exponents
sqrt(64)    # Square root
log(100)    # Natural log: base e (2.71828...)
log10(100)  # Base 10 log

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
