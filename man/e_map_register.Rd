% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map.R
\name{e_map_register}
\alias{e_map_register}
\title{Register map}
\usage{
e_map_register(e, name, json)
}
\arguments{
\item{e}{An \code{echarts4r} object as returned by \code{\link{e_charts}}.}

\item{name}{Name of map, to use in \code{\link{e_map}}}

\item{json}{\href{Geojson}{http://geojson.org/}.}
}
\description{
Register a \href{geojson}{http://geojson.org/} map.
}
\examples{
\dontrun{
json <- jsonlite::read_json("http://www.echartsjs.com/gallery/data/asset/geo/USA.json")

USArrests \%>\%
  dplyr::mutate(states = row.names(.)) \%>\%
  e_charts(states) \%>\%
  e_map_register("USA", json) \%>\%
  e_map(Murder, map = "USA") \%>\% 
  e_visual_map(min = 0, max = 18)
}

}
