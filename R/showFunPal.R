#' Select A Fun Palette
#'
#' @aliases
#' showFunPal
#' @author
#' Seth Berry
#' @description
#' This function will simultaneously plot the color palette and print
#' the hex values to console.
#' @param name Name of desired palette. Choices are:
#'   \code{spBoys}, \code{spCartman},  \code{spcredits},
#'   \code{spKenny}, \code{spKyle},  \code{spStan}, \code{boem},
#'   \code{xmen1},  \code{xmen2}, \code{marvel},
#'   \code{turboKid1}, \code{turboKid2}, \code{turboKid3}
#' @examples
#' showFunPal("spBoys")
#' @export
#' @importFrom magrittr '%T>%'
#' @importFrom magrittr '%>%'


showFunPal = function(name, n) {

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

#' @export
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}