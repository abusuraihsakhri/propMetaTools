\name{prepare_meta_data}
\alias{prepare_meta_data}

\title{Prepare data for proportional meta-analysis}

\description{
This function validates and prepares a dataset for proportional meta-analysis.
It checks for required columns, removes missing values, calculates study-level
proportions, and sorts studies chronologically.
}

\usage{
prepare_meta_data(data,
                  event_col = "events",
                  total_col = "total",
                  study_col = "study",
                  year_col = "year")
}

\arguments{

\item{data}{A dataframe containing study-level meta-analysis data}

\item{event_col}{Column containing number of events}

\item{total_col}{Column containing total sample size}

\item{study_col}{Column containing study labels}

\item{year_col}{Column containing study year}

}

\value{
Returns a cleaned dataframe with calculated proportions and sorted studies.
}

\examples{

df <- data.frame(
study=c("A","B"),
events=c(10,20),
total=c(100,200),
year=c(2019,2020)
)

prepare_meta_data(df)

}