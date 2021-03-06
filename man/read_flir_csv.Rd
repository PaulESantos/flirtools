% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_flir_csv.R
\name{read_flir_csv}
\alias{read_flir_csv}
\title{Read FLIR csv}
\usage{
read_flir_csv(file_path, folder_out = NULL, degrees = "f")
}
\arguments{
\item{file_path}{Name of the FLIR csv file to read from, as captured by the thermal camera. A character string.}

\item{folder_out}{Optional folder path to save tidy csv file.}

\item{degrees}{A character string defining which thermal unit will be displayed.
Default us Fahrenheit degrees ("f), could be change to Celsius degrees ("c).}
}
\value{
A tibble.
}
\description{
Read csv files generated with \href{http://www.flir.com/instruments/display/?id=54865}{FLIR Tools} software.
Building a tidy version of the csv files, combining the metadata and data matrix.
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
}
\examples{
files <-  system.file("extdata", package = "flirtools")
df <- read_flir_csv(files[1], degrees = "c")
}
