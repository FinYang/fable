% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nnetar.R
\name{glance.NNETAR}
\alias{glance.NNETAR}
\title{Glance a NNETAR model}
\usage{
\method{glance}{NNETAR}(x, ...)
}
\arguments{
\item{x}{model or other R object to convert to single-row data frame}

\item{...}{other arguments passed to methods}
}
\value{
A one row tibble summarising the model's fit.
}
\description{
Construct a single row summary of the NNETAR model.
Contains the variance of residuals (\code{sigma2}).
}
\examples{
as_tsibble(airmiles) \%>\%
  model(nn = NNETAR(box_cox(value, 0.15))) \%>\%
  glance()
}
