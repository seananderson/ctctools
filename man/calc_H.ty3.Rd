% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spfi_functions.R
\name{calc_H.ty3}
\alias{calc_H.ty3}
\title{(SPFI) Calculate the AEQ stratum harvest rate parameters grouped by
  fishery, and year.}
\usage{
calc_H.ty3(c.ty.sum, r.ty.sum, T.ty, N.ty)
}
\arguments{
\item{c.ty.sum}{Output from \code{\link{calc_ty.sum}}.}

\item{r.ty.sum}{Output from \code{\link{calc_ty.sum}}.}

\item{T.ty}{Output from \code{\link{calc_T.ty}}.}

\item{N.ty}{Output from \code{\link{calc_N.ty}}.}
}
\value{
A data frame of the AEQ stratum harvest rate parameter estimates
  grouped by fishery stratum and year.
}
\description{
This is equivalent to equation 6b in the draft SPFI document. In
  the Visual Basic this is referred to as the AEQScaler.
}
\examples{
\dontrun{
T.ty <- calc_T.ty(catch.df = data.catch$data.catch)
N.ty <- calc_N.ty(T.ty = T.ty, hcwt.ty = hcwt.ty)
H.ty <- calc_H.ty3(c.ty.sum = c.ty.sum, r.ty.sum = r.ty.sum, T.ty = T.ty, N.ty = N.ty)
}
}
