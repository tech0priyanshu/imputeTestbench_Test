#' Calculate the mode of a vector
#' @param x A vector of any type (numeric, character, factor, etc.).
#' @param na.rm Logical; if TRUE, NA values are removed before computation.
#' @return A vector containing the mode(s) of x.
#' @examples
#' # Single mode
#' x1 <- c(1, 2, 2, 3, 4, 2, 5)
#' mode_value(x1)
#'
#' # Multiple modes
#' x2 <- c(1, 1, 2, 2, 3)
#' mode_value(x2)
#'
#' # Character data
#' x3 <- c("red", "blue", "green", "blue", "red", "red")
#' mode_value(x3)
#'
#' # With NA values
#' x4 <- c(1, 2, 2, NA, 3, NA)
#' mode_value(x4, na.rm = TRUE)
#' @export
mode_value <- function(x, na.rm = FALSE) {
  if (length(x) == 0) {
    return(NA)
  }

  if (na.rm) {
    x <- x[!is.na(x)]
  }

  if (length(x) == 0 || all(is.na(x))) {
    return(NA)
  }

  # Create frequency table
  freq_table <- table(x)
  max_freq <- max(freq_table)

  # Find values with the maximum frequency
  modes <- names(freq_table[freq_table == max_freq])

  # Convert back to original data type if possible
  if (is.numeric(x)) {
    modes <- as.numeric(modes)
  } else if (is.factor(x)) {
    modes <- factor(modes, levels = levels(x))
  }

  return(modes)}
