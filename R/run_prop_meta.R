run_prop_meta <- function(data,
                          event_col = "events",
                          total_col = "total",
                          study_col = "study") {

  if (!requireNamespace("meta", quietly = TRUE)) {
    stop("Package 'meta' is required but not installed.")
  }

  if (!is.data.frame(data)) {
    stop("Input must be a dataframe")
  }

  if (!all(c(event_col, total_col, study_col) %in% colnames(data))) {
    stop("Dataset missing required columns")
  }

  meta_result <- meta::metaprop(
    event = data[[event_col]],
    n = data[[total_col]],
    studlab = data[[study_col]],
    sm = "PFT",
    method = "Inverse",
    random = TRUE,
    common = FALSE
  )

  result <- list(
    meta = meta_result,
    pooled_proportion = meta_result$TE.random,
    ci_lower = meta_result$lower.random,
    ci_upper = meta_result$upper.random,
    I2 = meta_result$I2
  )

  class(result) <- "propMetaTools"

  return(result)
}