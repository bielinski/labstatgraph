#' Konwersja danych procentowych
#'
#' @param data dane w formacie XX,X\% - vector lub matrix
#'
#' @description Konwertuje dane pochodzace z arkuszy Excel z formatu procentowego do formatu numerycznego.

#' @export
#'
cnvrt.prcnt <- function(data) {
  tmp <- gsub(pattern = '%', replacement = '',x = data)
  tmp <- gsub(pattern = ',', replacement = '.', x = tmp)
  tmp <- apply(X = tmp, MARGIN = 2, FUN = as.numeric)
  tmp <- tmp/100
  return(tmp)
}
