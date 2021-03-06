% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HRJfunctions.R
\name{readHRJtext}
\alias{readHRJtext}
\title{(HRJ) Read in and combine multiple HRJ text files.}
\usage{
readHRJtext(filepath)
}
\arguments{
\item{filepath}{A character vector, which can have length greater than one.
Each element of the vector is the path and filename for each HRJ file to be
read in. As each file has its own path informartion, files can be read in
from multiple folders.}
}
\value{
A list comprising two lists. The first list consists of the HRJ data
  in two data frames in 'wide' format, one for 'b' data and one for the 'c'
  data. The second list is a data frame, in 'long' format, of the escapement
  data with structure matching the output of \code{\link{reshapeHRJtolong}}.
}
\description{
The function reads in multiple HRJ files and produces a list
  comprising two lists. The first list consists of the HRJ data in two data
  frames, one for 'b' data and one for the 'c' data. The format is wide,
  matching that found in the HRJ database. The escapment data rows in the HRJ
  text files are extracted separately and reshaped into a 'long' format with
  structure matching the output from \code{\link{reshapeHRJtolong}}. Thus if
  desired, the user could \code{rbind} the escapement data and HRJ (long
  format) data frame (produced by \code{\link{reshapeHRJtolong}}) for additional
  analyses.  Additionally, there is a check for matching copies of 'b' and
  'c' files, by stock. If a file is imported without its matching file, the
  user is warned at the console output.
}
\examples{
\dontrun{
filename <- list.files(".", pattern = "HRJ")
hrj.list <- readHRJtext(filename)
}
}
