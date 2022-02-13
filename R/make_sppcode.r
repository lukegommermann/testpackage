#' @title make_sppcode
#' @description Make a 6-letter code with first 3 letters of genus and species
#'
#' @importFrom dplyr mutate select
#' @importFrom stringr word
#'
#' @param data Name of data frame that contains at least one column with Latin names
#' @param sppname Quoted name of the column that contains the Latin names
#'
#' @return Returns a data frame with a new column named sppcode.
#' @examples
#' example_dat <- data.frame(Latin_Name = c("Carex limosa", "Arethusa bulbosa",
#'      "Malaxis unifolia", "Calopogon tuberosus"),
#' cover = c(10, 40, 10, 50),
#' stems = c(50, 20, 10, 10))
#' head(example_dat)
#' example_dat2 <- make_sppcode(example_dat, "Latin_Name")
#' head(example_dat2)

#' @export

make_sppcode <- function(data, sppname){
  data$genus = word(data[,sppname], 1)
  data$species = ifelse(is.na(word(data[,sppname], 2)), "spp.", word(data[,sppname], 2))
  data <- mutate(data, sppcode = toupper(paste0(substr(genus, 1, 3),
                                                substr(species, 1, 3))))
  data2 <- select(data, -genus, -species)
  return(data2)
}
