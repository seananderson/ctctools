% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spfi_functions.R
\name{calc_d.tsa}
\alias{calc_d.tsa}
\title{(SPFI) Calculate the distribution parameters grouped by fishery,
  stock, and age.}
\usage{
calc_d.tsa(r.tsa.sum, n.ysa, hcwt.ty = NULL, standardize.bol = FALSE)
}
\arguments{
\item{r.tsa.sum}{Output from \code{\link{calc_tsa.sum}}.}

\item{n.ysa}{Synonymous with \code{CWTPop} in VB or:
\code{hrj.df[hrj.df$data.type=="Pop" & hrj.df$fishery.index == 1,]}}

\item{hcwt.ty}{Output from \code{\link{calc_hcwt.ty}}.}

\item{standardize.bol}{A Boolean, default=FALSE.}
}
\value{
A data frame of the distribution parameter estimates grouped by
  fishery stratum, stock, and age.
}
\description{
This is equivalent to equation 1 in the draft SPFI document.
  This function does a single estimate of the \code{d} values. It does not
  perform iterations to optimize.
}
\details{
The initial call of this function will have no data for
  \code{hcwt.ty}. If this is true, then the values are set to 0.01 as is done
  in the Visual Basic.
}
\examples{
\dontrun{
#look to \\code{\\link{buildSPFIscript}} for creating hrj.df
hrj.df <- hrj.df[hrj.df$spfiflag==1,]
cwtpop <- hrj.df[hrj.df$data.type=="Pop" & hrj.df$fishery.index == 1 & hrj.df$stock.index \%in\% stock.subset,]
cwtpop <- subset(cwtpop,select = -fishery.index) #n.ysa
cwtcatch <- hrj.df[hrj.df$data.type=="NomCat" & hrj.df$fishery.index \%in\% fishery.subset & hrj.df$stock.index \%in\% stock.subset,]
if(region=="seak") cwtcatch <- adjustAlaska(x = cwtcatch, data.catch = data.catch)
r.tsa.sum <- calc_tsa.sum(x = cwtcatch, newvar.name = "r.tsa.sum")
d.tsa <- calc_d.tsa(r.tsa.sum = r.tsa.sum, n.ysa = cwtpop, standardize.bol = TRUE)
}
}
