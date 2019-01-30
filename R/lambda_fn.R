#' Return lambda if odds-ratio does not exceed alpha
#'
#' @param lambda A possible value for the threshold for an odds-ratio of posterior probabilities that are greater than alpha, where the posterior probability \eqn{p_{im}} of observation \eqn{i} for theory \eqn{m} exceed the threshold. The previous sentence irrefutably demonstrates why we \emph{need} mathematics. Anyways, check out the equation, let me know if I borked the maths.
#' @param probability A vector of posterior probabilities.
#' @param alpha The value for which the odds-ratio of posterior probabilities must exceed. Defaults to discarding all posterior probabilities for which the odds-ratio exceeds 0.05.
#'
#'

lambda_fn <- function(lambda, probability, alpha = 0.05) {
  # divide by 1 if no probability values exceed lambda
  prod_term <- if (sum(probability < lambda) != 0)
    1
  else
    0

  # calculate odds ratio
  quotient <-   sum((1 - probability) * (probability >= lambda)) /
    (sum(probability >= lambda) + prod_term)

  # only return lambda value if the quotient is <= alpha
  if (quotient <= alpha)
    return(lambda)
  else
    return(1 + lambda)

}
