% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chinookmodelfunctions.R
\name{writeCalibrationTable5}
\alias{writeCalibrationTable5}
\title{(Calibration Performance)}
\usage{
writeCalibrationTable5(metrics, ranking.method, results.path, ...)
}
\arguments{
\item{metrics}{A \code{list} represented by the output of
\code{\link{calcPMs}}.}

\item{results.path}{A character vector of length one. The absolute path or
path relative to the working directory where a new directory named
"results" will be written (if not already present). All output files will
be written here. Default is the current working directory.}

\item{...}{}
}
\value{
Writes a csv file.
}
\examples{
\dontrun{
### Table 5 export ###
writeCalibrationTable5(metrics, results.path= model.list$results.path, groupingby=model.list$groupingby)
}
}
