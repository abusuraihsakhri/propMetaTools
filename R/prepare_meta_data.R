prepare_meta_data <- function(data,
                              event_col = "events",
                              total_col = "total",
                              study_col = "study",
                              year_col = "year") {

  # Check if input is a dataframe
  if (!is.data.frame(data)) {
    stop("Input must be a dataframe")
  }

  # Check required columns
  required_cols <- c(event_col, total_col, study_col, year_col)

  if (!all(required_cols %in% colnames(data))) {
    stop("Dataset is missing required columns")
  }

  # Remove rows with missing values
  data <- data[complete.cases(data[, required_cols]), ]

  # Ensure numeric columns
  data[[event_col]] <- as.numeric(data[[event_col]])
  data[[total_col]] <- as.numeric(data[[total_col]])

  # Calculate proportion
  data$proportion <- data[[event_col]] / data[[total_col]]

  # Sort by year
  data <- data[order(data[[year_col]]), ]

  rownames(data) <- NULL

  return(data)
}