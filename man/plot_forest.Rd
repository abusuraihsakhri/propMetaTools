\name{plot_forest}
\alias{plot_forest}

\title{Generate forest plot}

\description{
Creates a forest plot from a proportional meta-analysis object.
}

\usage{
plot_forest(meta_object,
            xlab = "Proportion",
            comb.random = TRUE)
}

\arguments{

\item{meta_object}{Meta-analysis object produced by run_prop_meta}

\item{xlab}{Label for x-axis}

\item{comb.random}{Whether to show random-effects model}

}

\value{
Displays a forest plot of study estimates and pooled proportion.
}

\examples{

plot_forest(meta_result)

}