# File:     03_06_LineCharts.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

# Load packages
library(datasets)   # Loads the built-in datasets

# SINGLE TIME SERIES #######################################

# uspop
?uspop  # Get info about data
uspop   # Display data

?ts  # Get info about time-series objects

# Plot with default plot()
plot(uspop)

# Plot with options
uspop |> 
  plot(
    main = "US Population 1790–1970 ",
    sub  = "(Source: datasets::uspop)",
    xlab = "Year",
    ylab = "Population (in millions)",
  )
abline(v = 1930, col = "lightgray")
text(1930, 10, "1930", col = "red3") 
abline(v = 1940, col = "lightgray")
text(1940, 10, "1940", col = "red3") 

# Plot with ts.plot()
?ts.plot
# Although this can be used for a single time series, plot
# is easier to use and is preferred.
ts.plot(uspop)

# Plot with plot.ts()
# More powerful alternative
?plot.ts
plot.ts(uspop)

# MULTIPLE TIME SERIES #####################################

# EuStockMarkets
# DAX (Germany), SMI (Switzerland), CAC (France), FTSE (UK)
?EuStockMarkets
EuStockMarkets

# Three different plot functions
plot(EuStockMarkets)     # Stacked windows
plot.ts(EuStockMarkets)  # Identical
ts.plot(EuStockMarkets)  # One window

# Plot with options
ts.plot(
  EuStockMarkets,
  col = rainbow(4))  # Color lines
legend(              # Add legend
  "topleft",         # Position
  legend = colnames(EuStockMarkets),  # Names for legend
  col = rainbow(4),  # Colors for legend
  lty = 1            # Line type: solid
)

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
