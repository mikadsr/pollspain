% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_elections_data.R
\name{get_poll_station_data}
\alias{get_poll_station_data}
\title{Get Poll Station Data}
\usage{
get_poll_station_data(type_elec, year, month, prec_round = 3)
}
\arguments{
\item{type_elec}{type elections for which data is available.
It should be one of the following values: "referendum",
"congress", "senate", "local", "cabildo" (Canarian council)
or "EU".}

\item{year, month}{Vectors of years and months of elections to be considered.
Ensure (see \code{dates_elections_spain}) that elections of the provided type are available for the given year and month.}

\item{prec_round}{Number of decimal places to round percentage values to (default is 3).}
}
\value{
A tibble with poll station data including the following elements:
\item{id_elec}{ID of the election, constructed from the election code and date.}
\item{type_elec}{Type of election.}
\item{date_elec}{Date of election.}
\item{id_INE_poll_station}{ID of the poll station, constructed from the municipality and poll station codes.}
\item{ccaa,prov,mun}{Names and codes for regions, provinces, and municipalities.}
\item{census_counting}{Census count.}
\item{ballots_1,turnout_1}{Number of ballots and turnout percentage in the first round.}
\item{ballots_2,turnout_2}{Number of ballots and turnout percentage in the second round (if applicable).}
\item{blank_ballots,invalid_ballots,party_ballots,valid_ballots,total_ballots}{Various ballot counts.}
\item{turnout,porc_valid,porc_invalid,porc_parties,porc_blank}{Various turnout and percentage metrics.}
\item{pop_res_mun}{Population residing in the municipality.}
}
\description{
Fetch and process poll station data for given election types, years, and months.
This function supports both single values and vector inputs for fetching and combining data for multiple elections at once.
}
\details{
This function fetches poll station-level data for the specified elections by downloading
the corresponding \code{.rda} files from GitHub and processing them into a tidy format.
It automatically handles the download, loading, and merging of data across multiple
election periods as specified by the user.
}
\examples{

## Correct examples
\dontrun{
# Fetching data for single elections
poll_station_data1 <- get_poll_station_data("congress", 2019, 4)
poll_station_data2 <- get_poll_station_data("senate", 2019, 4)

# Fetching data for multiple elections at once
combined_poll_station_data <- get_poll_station_data(
  c("congress", "congress", "congress"),
  c(2019, 2019, 2016),
  c(11, 4, 6)
)

## Incorrect examples
# Invalid election type
poll_station_data5 <- get_poll_station_data("national", 2019, 4)

# Length mismatch between year and month vectors
poll_station_data6 <- get_poll_station_data("congress", 2016, c(4, 11))

# Invalid date format
poll_station_data7 <- get_poll_station_data("congress", "2016-06-26")

# Non-existent election data
poll_station_data8 <- get_poll_station_data("congress", 1990, 4)
}

}
\author{
Mikaela DeSmedt, Javier Álvarez-Liébana
}
