# File:     02_06_DataTypes.R
# Project:  LearningR

# DATA TYPES ###############################################

# Numeric

n1 <- 15  # Double precision by default
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)

# Character

c1 <- "c"
c1
typeof(c1)

c2 <- "a string of text"
c2
typeof(c2)

# Logical

l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)

# DATA STRUCTURES ##########################################

## Vector ==================================================

# One dimensional set of same data type

v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

## Matrix ==================================================

# Two dimensional set of same data type;  
# columns must be same length (no missing data)

m1 <- matrix(c(T, T, F, F, T, F), nrow = 2)
m1

m2 <- matrix(c("a", "b", 
               "c", "d"), 
               nrow = 2,
               byrow = T)
m2

## Array ===================================================

# Multi-dimensional set of same data type;  
# columns must be same length (no missing data)

# Give data, then dimensions (rows, columns, tables)
a1 <- array(c( 1:24), c(4, 3, 2))
a1

## Data Frame ==============================================

# Most common data type.
# Can combine vectors of different data types.
# Vectors must be the same length.

vNumeric   <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical   <- c(T, F, T)

# Use `cbind` to combine ("bind") columns
df1 <- cbind(vNumeric, vCharacter, vLogical)
df1  # Coerces all values to most basic data type

df2 <- data.frame(vNumeric, vCharacter, vLogical)
df2  # Makes a data frame with three different data types

## List ====================================================

# Most flexible data type (but can be difficult to use)

o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1)  # Lists within lists!
list2

# COERCING TYPES ###########################################

# "Coercing" means changing a variable's data type

## Automatic Coercion ======================================

# Goes to "least restrictive" data type

(coerce1 <- c(1, "b", TRUE))
typeof(coerce1)

## Coerce Numeric to Integer ===============================

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

## Coerce Character to Numeric =============================

(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)

## Coerce Matrix to Data Frame =============================

(coerce6 <- matrix(1:9, nrow= 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9, nrow= 3)))
is.data.frame(coerce7)

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
