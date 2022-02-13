#' @title theme_IMD: custom ggplot2 theme for plotting
#'
#'
#' @description This is a custom ggplot2 theme that removes the default panel grids
#' from ggplot2 figures, and makes the axes and tick marks grey instead of black.
#'
#' @return This function must be used in conjunction with a ggplot object, and will return a ggplot object with the custom theme.
#'
#' @examples
#' example_dat <- data.frame(Latin_Name = c("Carex limosa", "Arethusa bulbosa",
#'                                          "Malaxis unifolia", "Calopogon tuberosus"),
#'                           cover = c(10, 40, 10, 50),
#'                           stems = c(50, 20, 10, 10))
#' library(ggplot2)
#' p <- ggplot(data = example_dat, aes(x = cover, y = stems)) +
#'      geom_point() +
#'      theme_IMD()
#' p
#'
#' @export


theme_IMD <- function(){

  # Check that suggested package required for this function is installed
  if(!requireNamespace("ggplot2", quietly = TRUE)){
    stop("Package 'ggplot2' needed for this function to work. Please install it.", call. = FALSE)
  }

  ggplot2::theme(panel.grid.major = ggplot2::element_blank(),
                 panel.grid.minor = ggplot2::element_blank(),
                 panel.background = ggplot2::element_rect(color = '#696969', fill = 'white', size = 0.4),
                 plot.background = ggplot2::element_blank(),
                 strip.background = ggplot2::element_rect(color = '#696969', fill = 'grey90', size = 0.4),
                 legend.key = ggplot2::element_blank(),
                 axis.line.x = ggplot2::element_line(color = "#696969", size = 0.4),
                 axis.line.y = ggplot2::element_line(color = "#696969", size = 0.4),
                 axis.ticks = ggplot2::element_line(color = "#696969", size = 0.4)
  )}
