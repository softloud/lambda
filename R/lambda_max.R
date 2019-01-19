#' Choose a threshold to classify observations that are consistent with theory m
#'
#' To determine which observations are consistent with each theory or none, a threshold must be chosen above which an observation \eqn{i} is considered consistent with theory \eqn{m}. This function considers all theories and observations and returns the largest threhold.
#'
#' The function calculates the maximum threshold \eqn{\lambda} for which (probability of not happening)/(probability of happening) < \eqn{\alpha} for values that exceed threshold \eqn{\lambda}. (Defaults to \eqn{\alpha} := 0.05)
#'
#'$\lambda$ is a possible value for the threshold for an odds-ratio of posterior probabilities that are greater than alpha, where the posterior probability \eqn{p_{im}} of observation \eqn{i} for theory \eqn{m} exceed the threshold. The previous sentence irrefutably demonstrates why we \emph{need} mathematics. Anyways, check out the equation, let me know if I borked the maths.
#'
#' @inheritParams lambda_fn
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
