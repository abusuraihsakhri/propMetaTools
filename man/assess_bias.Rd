\name{assess_bias}
\alias{assess_bias}

\title{Assess publication bias}

\description{
Performs publication bias assessment using funnel plot visualization
and Egger regression test.
}

\usage{
assess_bias(meta_object)
}

\arguments{

\item{meta_object}{Meta-analysis object produced by run_prop_meta}

}

\value{
Returns a list containing funnel plot output and Egger regression test results.
}

\examples{

bias <- assess_bias(meta_result)

bias$egger_test

}