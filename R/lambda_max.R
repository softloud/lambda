#' @export

lambda_max <- function(probability, alpha = 0.5) {
  optimise(
    lambda_fn,
    interval = c(0, 1),
    prob = probability,
    alpha = alpha,
    maximum = TRUE
  ) %>%
    purrr::pluck("maximum")

}
