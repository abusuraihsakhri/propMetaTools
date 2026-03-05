source("R/prepare_meta_data.R")
source("R/run_prop_meta.R")

test_run_prop_meta <- function() {

  df <- data.frame(
    study = c("A","B","C"),
    events = c(10,20,30),
    total = c(100,200,300),
    year = c(2018,2019,2020)
  )

  cleaned <- prepare_meta_data(df)

  meta_result <- run_prop_meta(cleaned)

  stopifnot(inherits(meta_result, "meta"))

}

test_run_prop_meta()