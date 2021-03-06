% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fp_functions.R
\name{writeScriptFP}
\alias{writeScriptFP}
\title{(FP) Build, save, and open an R script to help execute FP calculations.}
\usage{
writeScriptFP()
}
\value{
Opens an R script that includes the template of functions to
  calculate FP values.
}
\description{
This creates and opens a script named "fp_script.R". This is a
  template for the user to work with when doing FP estimates. This is
  intended to help the user understand the work flow and due to file path
  differences, is unlikely to work as is. Some object values will need
  updating (for example the datapath).
}
\examples{
writeScriptFP()
}
