#' Harmonic Mean Function
#'
#' Computes the harmonic mean of a numeric vector.
#'
#' @param x A numeric vector of non-zero positive values.
#' @param na.rm Logical; if TRUE, NA values are removed before computation.
#' @return The harmonic mean of x.
#' @examples
#' x <- c(1, 2, 3, 4, 5)
#' hm(x)  # Should return the harmonic mean of the numbers
#' hm(c(1, 2, NA, 4, 5), na.rm = TRUE)  # Should remove NA and compute harmonic mean
#' @export
hm <- function(x, na.rm = FALSE) {
  # Check if 'x' is a numeric vector
  if (!is.numeric(x) && !all(is.na(x))) {
    stop("'x' must be a numeric vector")
  }

  # Remove NA values if na.rm is TRUE
  if (na.rm) {
    x <- x[!is.na(x)]
  }

  # Return NA if the vector is empty or contains only NAs
  if (length(x) == 0 || all(is.na(x))) {
    return(NA)
  }

  # Ensure all values in 'x' are positive for harmonic mean calculation
  if (any(x <= 0, na.rm = TRUE)) {
    stop("'x' must contain only positive values for harmonic mean")
  }

  # Calculate the harmonic mean
  return(length(x) / sum(1 / x))
}
