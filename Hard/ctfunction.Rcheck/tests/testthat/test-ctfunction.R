test_that("arithmetic mean works", {
  expect_equal(am(c(1, 2, 3)), 2)
  expect_equal(am(c(1, 2, NA), na.rm = TRUE), 1.5)
  expect_true(is.na(am(c(NA, NA))))
  expect_error(am("not_numeric"))
})

test_that("geometric mean works", {
  expect_equal(round(gm(c(1, 4, 9)), 2), 3.30)
  expect_equal(gm(c(1, 4, NA), na.rm = TRUE), 2)
  expect_true(is.na(gm(c(NA, NA), na.rm = TRUE)))  # Handle NA properly
  expect_error(gm(c(1, -1, 2)))  # Geometric mean cannot handle negative numbers
  expect_error(gm("not_numeric"))
})

test_that("harmonic mean works", {
  expect_equal(hm(c(1, 2, 4)), 12/7)
  expect_equal(hm(c(1, 2, NA), na.rm = TRUE), 4/3)
  expect_true(is.na(hm(c(NA, NA), na.rm = TRUE)))  # Handle NA properly
  expect_error(hm(c(1, 0, 2)))  # Harmonic mean cannot be computed with zero
  expect_error(hm("not_numeric"))
})

test_that("median works", {
  expect_equal(median_value(c(1, 2, 3, 4, 5)), 3)
  expect_equal(median_value(c(1, 2, 3, 4)), 2.5)
  expect_equal(median_value(c(1, 2, NA, 4, 5), na.rm = TRUE), 3.00)
  expect_true(is.na(median_value(c(NA_real_, NA_real_))))  # Ensuring it's a numeric vector
  expect_error(median_value("not_numeric"))
})

test_that("mode works", {
  expect_equal(mode_value(c(1, 2, 2, 3, 4)), 2)
  expect_equal(sort(mode_value(c(1, 1, 2, 2, 3))), c(1, 2))  # Sort for consistency
  expect_equal(mode_value(c(1, 2, NA, 2, NA), na.rm = TRUE), 2)
  expect_equal(mode_value(c("red", "blue", "red")), "red")
  expect_true(is.na(mode_value(c(NA, NA))))  # Handle NA properly
})
