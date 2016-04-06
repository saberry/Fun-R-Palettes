#' Select A Fun Palette
#'
#' @author
#' Seth Berry
#' @description
#' This function will simultaneously plot the color palette and print
#' the hex values to console.
#' @examples
#' showFunPal()
#' @export

showFunPal = function(name, n) {
  require(magrittr)

  source("funPalettes.R")

  pal = funPals[[name]]

  if (missing(n)){
    n = length(pal)
  }

  if (n > length(pal)) {
    stop(paste(name, "only has", length(pal), "colors.", sep = " "))
  }

  pal = pal[1:n]

  # pal = switch(type, continuous = colorRampPalette(pal)(n),
  #               discrete = pal[1:n])

  pal %T>%
    print %>%
    structure(class = "palette", name = name)
}