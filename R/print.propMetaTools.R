print.propMetaTools <- function(x, ...) {

  cat("\nProportional Meta-analysis Results\n")
  cat("-----------------------------------\n")

  cat("Pooled proportion:",
      round(x$pooled_proportion, 3), "\n")

  cat("95% CI:",
      round(x$ci_lower, 3),
      "-",
      round(x$ci_upper, 3), "\n")

  cat("Heterogeneity (I2):",
      round(x$I2, 2), "%\n\n")

}