% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{solarcadaster_features}
\alias{solarcadaster_features}
\title{Solarcadaster features for individual households.}
\format{
A data frame with the following of variables: 

\describe{
\item{\code{VID}}{An pseudonym for the household}
\item{\code{neighbor_distance}}{Euclidean Distance to the corresponding neighbor}
\item{\code{total_revenue_electricity}}{Total revenue of electricity of the household}
\item{\code{floor_space}}{The floor space of the household in m2}
\item{\code{roof_space}}{The roof space of the household in m2}
\item{\code{roof_space_low_m2}}{The roof space of the household in m2,
  which is classified as low solar potential}
\item{\code{roof_space_medium_m2}}{The roof space of the household in m2,
  which is classified as medium solar potential}
\item{\code{roof_space_good_m2}}{The roof space of the household in m2,
  which is classified as good solar potential}
\item{\code{roof_space_verygood_m2}}{The roof space of the household in m2,
  which is classified as very good solar potential}
\item{\code{roof_space_excellent_m2}}{The roof space of the household in m2,
  which is classified as excellent solar potential}
\item{\code{roof_space_n}}{The number of different roof spaces of the household.}
\item{\code{roof_space_low}}{The roof space of the household in m2,
  which is classified as low solar potential}
\item{\code{roof_space_medium}}{The number of roof spaces of the household,
  which are classified as medium solar potential}
\item{\code{roof_space_good}}{The number of roof spaces of the household,
  which are classified as good solar potential}
\item{\code{roof_space_verygood}}{The number of roof spaces of the household,
  which are classified as very good solar potential}
\item{\code{roof_space_excellent}}{The number of roof spaces of the household,
  which are classified as excellent solar potential}
\item{\code{demand_hotwater}}{The ernergy demand of the household for hot water per year}
\item{\code{demand_heating}}{The ernergy demand of the household for floor heating per year}
}
}
\usage{
solarcadaster_features
}
\description{
Data contains information about floor and roof spaces, as well as the energy demand for 
each individual household. For each household in *elcons_15min*, at least five nearest 
neighbors are available in this dataset. When there are more than five nearest neighbors, 
there are at least two core addresses from which the distances were calculated (e.g., 
2 adresses means 10 nearest neighbors).
}
\references{
Klauser, Daniel (2016). Solarpotentialanalyse für Sonnendach.ch -
  Schlussbericht. Bundesamt für Energie BFE, Schweiz.
  \url{https://pubdb.bfe.admin.ch/de/publication/download/8196}
}
\keyword{datasets}
