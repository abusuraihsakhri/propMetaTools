source("R/prepare_meta_data.R")
source("R/run_prop_meta.R")
source("R/assess_bias.R")

test_assess_bias <- function() {

  df <- data.frame(
    study = c("A","B","C"),
    events = c(10,20,30),
    total = c(100,200,300),
    year = c(2018,2019,2020)
  )

  cleaned <- prepare_meta_data(df)

  meta_result <- run_prop_meta(cleaned)

  bias <- assess_bias(meta_result)

  stopifnot(is.list(bias))
  stopifnot("egger_test" %in% names(bias))

}

test_assess_bias()