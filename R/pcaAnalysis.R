#' pcaAnalysis
#'
#' @param data the data we try to find the principle component
#'
#' @return the list
#' @export
#' @importFrom stats prcomp
#' @importFrom stats princomp
#' @import FactoMineR
#'
#' @examples pcaAnalysis(census)
pcaAnalysis <- function(data){
  print( prcomp(data, scale. = FALSE)$rotation )
  p<-princomp(data, cor = FALSE)
  print(summary(p))
  print(FactoMineR::PCA(data,scale.unit = FALSE))


  p
}
