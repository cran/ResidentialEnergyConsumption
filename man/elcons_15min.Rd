% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{elcons_15min}
\alias{elcons_15min}
\title{15-minute electricity consumption smart meter data.}
\format{
A  data frame with two types of variables: 

\describe{
\item{\code{VID}}{An pseudonym for the household}
\item{\code{V001, ..., V672}}{Electricity consumption trace for one week in kWh}
}
}
\usage{
elcons_15min
}
\description{
Electricity consumption of residential households in Switzerland for seven 
weeks. The data is provided as *kWh* measurements in 15-min intervals.
}
\keyword{datasets}
