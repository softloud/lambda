#' Calculate infinum of lambda
#'
#' @param df A dataframe with prob, theory, and participant.
#' @param threshold
#'
#' @export

lambda_fn <- function(lambda, prob, alpha = 0.05) {
  prod_term <- if (sum(prob < lambda) != 0)
    1
  else
    0

  quotient <-   sum((1 - prob) * (prob >= lambda)) /
    (sum(prob >= lambda) + prod_term)

  if (quotient <= alpha)
    return(lambda)
  else
    return(0)

}
