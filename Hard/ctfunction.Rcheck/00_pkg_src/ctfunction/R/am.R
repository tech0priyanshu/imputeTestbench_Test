#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#' Calculate the arithmetic mean (AM) of a numeric vector
#' @param x A numeric vector.
#' @param na.rm Logical; if TRUE, NA values are removed before computation.
#' @return The arithmetic mean of x.
#' @examples
#' x <- c(1, 2, 3, 4, 5)
#' am(x)
#' am(c(1, 2, NA, 4, 5), na.rm = TRUE)
#' @export
am <- function(x, na.rm = FALSE) {
  if (!is.numeric(x) && !all(is.na(x))) {
    stop("'x' must be a numeric vector")
  }

  if (na.rm) {
    x <- x[!is.na(x)]
  }

  if (length(x) == 0 || all(is.na(x))) {
    return(NA)
  }

  return(sum(x) / length(x))
}
