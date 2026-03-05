source("R/prepare_meta_data.R")

test_prepare_meta_data <- function() {

  df <- data.frame(
    study = c("A","B","C"),
    events = c(10,20,30),
    total = c(100,200,300),
    year = c(2018,2019,2020)
  )

  cleaned <- prepare_meta_data(df)

  stopifnot(is.data.frame(cleaned))
  stopifnot("proportion" %in% colnames(cleaned))
  stopifnot(nrow(cleaned) == 3)

}

test_prepare_meta_data()