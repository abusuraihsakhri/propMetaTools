\name{run_prop_meta}
\alias{run_prop_meta}

\title{Run proportional meta-analysis}

\description{
Performs proportional meta-analysis using the Freeman-Tukey double arcsine
transformation and a random-effects model.
}

\usage{
run_prop_meta(data,
              event_col = "events",
              total_col = "total",
              study_col = "study")
}

\arguments{

\item{data}{Prepared dataframe containing meta-analysis data}

\item{event_col}{Column containing number of events}

\item{total_col}{Column containing total sample size}

\item{study_col}{Column containing study labels}

}

\value{
Returns a meta-analysis object produced by the meta package.
}

\examples{

clean <- prepare_meta_data(df)

meta_result <- run_prop_meta(clean)

}