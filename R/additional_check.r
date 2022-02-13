joinTreeData <- function(park = 'all', from = 2006, to = 2021, QAQC = FALSE, locType = c('VS', 'all'), panels = 1:4,
                         status = c('all', 'active', 'live', 'dead'),
                         speciesType = c('all', 'native','exotic', 'invasive'),
                         canopyPosition = c("all", "canopy"), dist_m = NA,
                         eventType = c('complete', 'all'), output = 'short', ...){

  # Match args and classes
  status <- match.arg(status)
  park <- match.arg(park, several.ok = TRUE,
                    c("all", "ACAD", "MABI", "MIMA", "MORR", "ROVA", "SAGA", "SARA", "WEFA"))
  stopifnot(class(from) == "numeric", from >= 2006)
  stopifnot(class(to) == "numeric", to >= 2006)
  locType <- match.arg(locType)
  stopifnot(class(QAQC) == 'logical')
  stopifnot(panels %in% c(1, 2, 3, 4))
  output <- match.arg(output, c("short", "verbose"))
  canopyPosition <- match.arg(canopyPosition)
  speciesType <- match.arg(speciesType)

  # Check for tree data in global environment
  tryCatch(tree_vw <- COMN_TreesByEvent,
           error = function(e){stop("COMN_TreesByEvent view not found. Please import view.")}
  )

}
