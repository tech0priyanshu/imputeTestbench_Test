#' Median Function
#'
#' Computes the median of a numeric vector, optionally removing NA values.
#'
#' @param x A numeric vector.
#' @param na.rm Logical; if TRUE, NA values are removed before computation.
#' @return The median of the vector `x`.
#' @examples
#' x <- c(1, 2, 3, 4, 5)
#' median_value(x)
#' median_value(c(1, 2, 3, 4, 5, 6))
#' median_value(c(1, 2, NA, 4, 5), na.rm = TRUE)
#' @export
median_value <- function(x, na.rm = FALSE) {
  # Coerce logical vectors to numeric
  if (is.logical(x)) {
    x <- as.numeric(x)
  }

  if (!is.numeric(x)) {
    stop("'x' must be a numeric vector")
  }

  if (na.rm) {
    x <- x[!is.na(x)]
  }

  if (length(x) == 0) {
    return(NA)
  }

  x_sorted <- sort(x)
  n <- length(x_sorted)

  if (n %% 2 == 1) {
    return(x_sorted[(n + 1) / 2])
  }

  return(mean(x_sorted[(n / 2):(n / 2 + 1)]))
}
