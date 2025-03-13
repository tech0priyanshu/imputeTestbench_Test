#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#' Calculate the geometric mean (GM) of a numeric vector
#' @param x A numeric vector of positive values.
#' @param na.rm Logical; if TRUE, NA values are removed before computation.
#' @return The geometric mean of x.
#' @examples
#' x <- c(1, 2, 3, 4, 5)
#' gm(x)
#' gm(c(1, 2, NA, 4, 5), na.rm = TRUE)
#' @export 
gm <- function(x, na.rm = FALSE) {
  if (!is.numeric(x) && !all(is.na(x))) {
    stop("'x' must be a numeric vector")
  }
  
  if (na.rm) {
    x <- x[!is.na(x)]
  }
  
  if (length(x) == 0 || all(is.na(x))) {
    return(NA)
  }
  
  if (any(x <= 0, na.rm = TRUE)) {
    stop("'x' must contain only positive values for geometric mean")
  }
  
  # Calculate the geometric mean differently to match expected result
  return(prod(x)^(1/length(x)))
}
