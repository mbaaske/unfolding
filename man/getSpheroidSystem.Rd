% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spheroid.R
\name{getSpheroidSystem}
\alias{getSpheroidSystem}
\title{Get spheroid system}
\usage{
getSpheroidSystem(S)
}
\arguments{
\item{S}{result of \code{\link{simSpheroidSystem}}}
}
\value{
list of spheroids, either of class \code{prolate} or \code{oblate}
}
\description{
Get the internally stored spheroid system
}
\details{
The spheroid system is stored as a C structure.
This function copies and converts the spheroids to the R level.
}
