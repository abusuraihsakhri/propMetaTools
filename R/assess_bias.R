assess_bias <- function(meta_object) {

  # Validate input
  if (!inherits(meta_object, "meta")) {
    stop("Input must be a meta-analysis object")
  }

  # Generate funnel plot
  funnel_plot <- meta::funnel(meta_object)

  # Egger's regression test
  egger_test <- meta::metabias(
    meta_object,
    method.bias = "linreg"
  )

  results <- list(
    funnel_plot = funnel_plot,
    egger_test = egger_test
  )

  return(results)
}