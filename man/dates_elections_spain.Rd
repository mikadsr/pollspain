% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{dates_elections_spain}
\alias{dates_elections_spain}
\title{Dates of Elections in Spain}
\format{
A tibble with 119 rows and 7 columns:
\describe{
\item{cod_elec}{Code of the election}
\item{type_elec}{Type of election (e.g., referendum, general election)}
\item{date_elec}{Date of the election}
\item{year}{Year of the election}
\item{month}{Month of the election}
\item{day}{Day of the election}
\item{topic}{Topic or description of the election}
}
}
\source{
scrapped from "https://es.wikipedia.org/wiki/Anexo:Elecciones_en_Espa\%C3\%B1a"
}
\usage{
data(dates_elections_spain)
}
\description{
Dataset with dates of Spanish election dates from 1982. Scrapped from source and wrangled to fit the needs of the pollspain package
}
\keyword{datasets}
