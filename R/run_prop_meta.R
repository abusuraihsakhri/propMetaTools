install.packages("meta")
run_prop_meta <- function(data,
                          event_col = "events",
                          total_col = "total",
                          study_col = "study") {

  # Ensure meta package is available
  if (!requireNamespace("meta", quietly = TRUE)) {
    stop("Package 'meta' is required but not installed.")
  }

  # Validate dataset
  if (!is.data.frame(data)) {
    stop("Input must be a dataframe")
  }

  if (!all(c(event_col, total_col, study_col) %in% colnames(data))) {
    stop("Dataset missing required columns")
  }

  # Run proportional meta-analysis
  meta_result <- meta::metaprop(
    event = data[[event_col]],
    n = data[[total_col]],
    studlab = data[[study_col]],
    sm = "PFT",                 # Freeman-Tukey transformation
    method = "Inverse",
    random = TRUE,
    common = FALSE
  )

  return(meta_result)
}