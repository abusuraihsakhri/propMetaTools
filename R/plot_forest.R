plot_forest <- function(meta_object,
                        xlab = "Proportion",
                        comb.random = TRUE) {

  # Check that input is a meta-analysis object
  if (!inherits(meta_object, "meta")) {
    stop("Input must be a meta-analysis object created by run_prop_meta()")
  }

  # Generate forest plot
  meta::forest(
    meta_object,
    xlab = xlab,
    comb.random = comb.random,
    comb.common = FALSE
  )

}