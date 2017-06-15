#' Deprecated functions in ctctools
#'
#' These functions still work but will be eventually be removed (defunct).
#'
#' \itemize{
#' The deprecated functions include:
#'  \item \code{\link{importData}}
#'  \item \code{\link{mergeData}}
#'  \item \code{\link{writeTable1}}
#'  \item \code{\link{writeTable3}}
#'  \item \code{\link{writeTable4}}
#'  \item \code{\link{writeTable5}}
#'  \item \code{\link{write_table6.6}}

#'
#' }
#'
#' @name ctctools-deprecated
NULL




#' @export
#' @rdname ctctools-deprecated
importData <- function(data.path.vec=NA, model.list=NULL){
  .Deprecated("importFCSCCC") #include a package argument, too
}#END importData


#' @export
#' @rdname ctctools-deprecated
mergeData <- function(ccc.list, fcs.list, stocks.names='all'){
   .Deprecated("mergeFCSCCC") #include a package argument, too
}#END mergeData



#' @export
#' @rdname ctctools-deprecated
plotCompare <- function(data.combined, savepng=FALSE, results.path = ".", point.col.df, ...){
  .Deprecated("plotFCSCCC") #include a package argument, too
}#END plotCompare


#' @export
#' @rdname ctctools-deprecated
writeTable1 <- function(data.combined, results.path="."){
  .Deprecated("writeCalibrationTable1") #include a package argument, too
}#END writeTable1


#' @export
#' @rdname ctctools-deprecated
writeTable3 <- function(data.combined, results.path="."){
  .Deprecated("writeCalibrationTable3") #include a package argument, too
}#END writeTable3



#' @export
#' @rdname ctctools-deprecated
writeTable4 <- function(data.combined, results.path="."){
  .Deprecated("writeCalibrationTable4") #include a package argument, too
}#END writeTable4



#' @export
#' @rdname ctctools-deprecated
writeTable5 <- function(data.combined, results.path="."){
  .Deprecated("writeCalibrationTable5") #include a package argument, too
}#END writeTable5


#' @export
#' @rdname ctctools-deprecated
write_table6.6 <- function(spfi.output, data.catch){
  .Deprecated("writeSPFItable6.6") #include a package argument, too
}#END writeTable5

