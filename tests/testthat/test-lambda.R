context("lambda function")

library(tidyverse)

obs <- 10

df_test <- tibble(
  probability = runif(obs, 0, 1),
  theory = rep(c("V1", "V2"), obs / 2)
)

# 1test_that("",{})

test_that({"lambda function returns a number"},
  expect_is(lambda_max(lambda = 0.5, df_test$probability, df_test$theory), "numeric")

  # should be between 0 and 1
)
