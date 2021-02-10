#' Dataset.
#' 
#' Empty description
NULL

#' 15-minute electricity consumption smart meter data.
#'
#' Electricity consumption of residential households in Switzerland for seven 
#' weeks. The data is provided as *kWh* measurements in 15-min intervals.
#'
#' @format A  data frame with two types of variables: 
#' 
#' \describe{
#' \item{\code{VID}}{An pseudonym for the household}
#' \item{\code{V001, ..., V672}}{Electricity consumption trace for one week in kWh}
#' }
#' 
"elcons_15min"

#' Heating info for 15-min smart meter data.
#'
#' Ground truth data on housing type and heating information for the 15-minute 
#' smart meter dataset *elcons_15min*. The data was collected from customers 
#' of an electric utility company in Switzerland with a survey in 2018. 
#' 
#' Not all study participants answered the survey, thus, several rows of the table 
#' contain only *NA* values. 
#'
#' @format A data frame with the following of variables: 
#' 
#' \describe{
#' \item{\code{VID}}{An pseudonym for the household}
#' \item{\code{household_type}}{The housing type: *single family home* (detached house),
#'   *multi-family home* (multiple dwellings in one house), *semidetached house* and 
#'   *teraced house* (multiple houses in a row)}
#' \item{\code{heating_type}}{Type of the heating system, either *electric heating*, 
#'   *heat pump*, *heat pump and boiler*, or *other* (including gas, central heating in 
#'   a multi-family home)}
#' \item{\code{survey_WP_type}}{Type of the heat pump, when a heat pump is installed, 
#'   according to the survey response. Can be either *air*, *geothermal*, or *don't know*.}
#' \item{\code{survey_WP_age}}{The age of the heat pump according to the survey 
#'   response. Can be either *<10 years*, *10-20 years*, *20-30 years*, *>30 years*, 
#'   or *don't know*}
#' }
#' 
"heatinginfo_15min"

#' Solarcadaster features for individual households.
#'
#' Data contains information about floor and roof spaces, as well as the energy demand for 
#' each individual household. For each household in *elcons_15min*, at least five nearest 
#' neighbors are available in this dataset. When there are more than five nearest neighbors, 
#' there are at least two core addresses from which the distances were calculated (e.g., 
#' 2 adresses means 10 nearest neighbors).
#' 
#' @references Klauser, Daniel (2016). Solarpotentialanalyse für Sonnendach.ch -
#'   Schlussbericht. Bundesamt für Energie BFE, Schweiz.
#'   \url{https://pubdb.bfe.admin.ch/de/publication/download/8196}
#' 
#' @format A data frame with the following of variables: 
#' 
#' \describe{
#' \item{\code{VID}}{An pseudonym for the household}
#' \item{\code{neighbor_distance}}{Euclidean Distance to the corresponding neighbor}
#' \item{\code{total_revenue_electricity}}{Total revenue of electricity of the household}
#' \item{\code{floor_space}}{The floor space of the household in m2}
#' \item{\code{roof_space}}{The roof space of the household in m2}
#' \item{\code{roof_space_low_m2}}{The roof space of the household in m2,
#'   which is classified as low solar potential}
#' \item{\code{roof_space_medium_m2}}{The roof space of the household in m2,
#'   which is classified as medium solar potential}
#' \item{\code{roof_space_good_m2}}{The roof space of the household in m2,
#'   which is classified as good solar potential}
#' \item{\code{roof_space_verygood_m2}}{The roof space of the household in m2,
#'   which is classified as very good solar potential}
#' \item{\code{roof_space_excellent_m2}}{The roof space of the household in m2,
#'   which is classified as excellent solar potential}
#' \item{\code{roof_space_n}}{The number of different roof spaces of the household.}
#' \item{\code{roof_space_low}}{The roof space of the household in m2,
#'   which is classified as low solar potential}
#' \item{\code{roof_space_medium}}{The number of roof spaces of the household,
#'   which are classified as medium solar potential}
#' \item{\code{roof_space_good}}{The number of roof spaces of the household,
#'   which are classified as good solar potential}
#' \item{\code{roof_space_verygood}}{The number of roof spaces of the household,
#'   which are classified as very good solar potential}
#' \item{\code{roof_space_excellent}}{The number of roof spaces of the household,
#'   which are classified as excellent solar potential}
#' \item{\code{demand_hotwater}}{The ernergy demand of the household for hot water per year}
#' \item{\code{demand_heating}}{The ernergy demand of the household for floor heating per year}
#' }
#' 
"solarcadaster_features"

#' Weather data from one measuring station.
#'
#' Weather data from a weather station in a central location of the study region. The
#' data contains hourly measurements over a period of ten weeks, similar to the time span 
#' of the dataset *elcons_15min*. Weather data are averaged across all available weather 
#' stations in the study area for each unit of time.
#' 
#' This data cannot be used or redistributed for commercial purposes. Re-distribution 
#' of these data by others must provide this same notification. 
#' (see \url{https://www.ncdc.noaa.gov/})
#' 
#' @references NOAA National Centers for Environmental Information (2020)
#'   
#' 
#' @format A data frame with the following of variables: 
#' 
#' \describe{
#' \item{\code{DATE_CET}}{The date and time of the weather observation in Central European Time}
#' \item{\code{WEEK}}{Week of the year as decimal number (00–53) using Monday as the first day of week}
#' \item{\code{WIND_DIRECTION}}{Wind direction in compass degrees.
#'   *NA* when air is calm (no wind speed)}
#' \item{\code{CLOUD_CEILING}}{Lowest opaque layer with 5/8 or greater
#'   coverage}
#' \item{\code{SKY_COVER}}{Sky cover: CLR-clear, SCT-scattered (1/8 to 4/8),
#'   BKN-broken (5/8 to 7/8), OVC-overcast, OBS-obscured, POB-partial obscuration}
#' \item{\code{VISIBILITY}}{Visibilityin statute miles (rounded to nearest tenth)}
#' \item{\code{TEMP}}{Temperature measured in fahrenheit}
#' \item{\code{SEA_LEVEL_PRESSURE}}{Sea level pressure measured in millibars (rounded to nearest tenth)}
#' \item{\code{STATION_PRESSURE}}{Station pressure measured in millibars (rounded to nearest tenth)}
#' \item{\code{PCP01}}{1-hour liquid precip reportin inches and hundredths,
#'   that is, the precip for the preceding 1-hour period}
#' \item{\code{WIND_SPEED}}{Wind speed in miles per hour}
#' }
#' 
#' @examples 
#' data(elcons_15min, weather_data)
#' 
#' #transform 15-minute electricity measurements to hourly consumption values
#' hourly_cons <- colSums(matrix(t(elcons_15min$w44[1,2:673]), nrow=4))
#' 
#' #select temperature observations for week 44
#' hourly_temp <- weather_data[weather_data$WEEK==44,"TEMP"]
#' 
#' #compute correlation
#' cor(hourly_cons, hourly_temp)
#' 
"weather_data"