plot_forest <- function(meta_object,
                        xlab = "Proportion") {

  if (!inherits(meta_object, "meta")) {
    stop("Input must be a meta-analysis object created by run_prop_meta()")
  }

  meta::forest(
    meta_object,

    xlab = xlab,

    leftcols = c("studlab", "event", "n"),
    leftlabs = c("Study", "Events", "Total"),

    rightcols = c("effect", "ci"),
    rightlabs = c("Proportion", "95% CI"),

    comb.random = TRUE,
    comb.common = FALSE,

    print.tau2 = TRUE,
    print.I2 = TRUE,

    col.square = "darkblue",
    col.diamond = "darkred",

    digits = 2
  )

}