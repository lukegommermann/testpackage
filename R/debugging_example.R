# dependencies
library(stringr)
library(dplyr)

example_dat <- data.frame(Latin_Name = c("Carex limosa", "Arethusa bulbosa",
     "Malaxis unifolia", "Calopogon tuberosus"),
cover = c(10, 40, 10, 50),
stems = c(50, 20, 10, 10))
head(example_dat)
# example_dat2 <- make_sppcode(example_dat, "Latin_Name")
# head(example_dat2)

#function args
data <- example_dat
sppname <- "Latin_Name"

## Option 1 - traceback()
## comment out function, try all steps to find where it goes wrong
## make_sppcode1 <- function(data, sppname){
#data$genus = word(data[,sppname], 1)
#data$species = ifelse(is.na(word(data[,sppname], 2)), "spp.", word(data[,sppname], 2))
#data <- mutate(data, sppcode = toupper(paste0(substr(genus, 1, 3),
#                                              substr(species, 1, 3))))
#data2 <- select(dat, -genus, -species)
## }

#make_sppcode1(example_dat, "Latin_Name")

# traceback()
# this function tells you the line where the code broke

# debug() is even better
# run function:
# make_sppcode1 <- function(data, sppname){
# data$genus = word(data[,sppname], 1)
# data$species = ifelse(is.na(word(data[,sppname], 2)), "spp.", word(data[,sppname], 2))
# data <- mutate(data, sppcode = toupper(paste0(substr(genus, 1, 3),
#                                               substr(species, 1, 3))))
# data2 <- select(dat, -genus, -species)
# }
# make_sppcode1(example_dat, "Latin_Name")

# debug(make_sppcode1)

# n to execute the next line of code
# s to step into the the function calls in the next line of code. This means that if there’s a function in that next line, it will open a browser to debug that function. This is really helpful when you have another package function within that function that’s failing, because you’re able to interact with it in the exact scenario where it’s failing.
# c to continue to the end function and exit the browser
# f to run through to the end of the function but keep the browser open
# Q to exit the browser and stop debugging.
