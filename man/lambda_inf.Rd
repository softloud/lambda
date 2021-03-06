% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_inf.R
\name{lambda_inf}
\alias{lambda_inf}
\title{Choose a threshold to classify observations that are consistent with theory m}
\usage{
lambda_inf(probability, alpha = 0.5, precision = 0.001)
}
\arguments{
\item{probability}{A vector of posterior probabilities.}

\item{alpha}{The value for which the odds-ratio of posterior probabilities must exceed. Defaults to discarding all posterior probabilities for which the odds-ratio exceeds 0.05.}

\item{precision}{what level of precision is required}
}
\description{
To determine which observations are consistent with each theory or none,
a threshold must be chosen above which an observation \eqn{i} is considered
consistent with theory \eqn{m}. This function considers all theories and
observations and returns the largest threhold.
}
\details{
The function calculates the maximum threshold \eqn{\lambda} for which
(probability of not happening)/(probability of happening) < \eqn{\alpha}
for values that exceed threshold \eqn{\lambda}.
(Defaults to \eqn{\alpha} := 0.05)

\eqn{\lambda} is a possible value for the threshold for an odds-ratio of
posterior probabilities that are greater than alpha, where the posterior
probability \eqn{p_{im}} of observation \eqn{i} for theory \eqn{m} exceed the
threshold. The previous sentence irrefutably demonstrates why we \emph{need}
mathematics. Anyways, check out the equation, let me know if I borked the
maths.
}
