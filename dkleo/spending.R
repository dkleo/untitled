library(tidyverse)
install.packages("devtools")
devtools::install_github("r-lib/conflicted")

if (!"readxl" %in% installed.packages()) {
  install.packages("readxl")
}
library(conflicted)
library(readxl)

spending <- read_excel(paste0(Sys.getenv("Rdata"), "\\spending.xlsx"), sheet = "Sheet1")
spending
