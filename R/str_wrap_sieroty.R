#' Zawijanie etykiet na sierotach typograficznych
#'
#' @param string etykieta
#' @param width szerokosc etykiety
#'
#' @export
#'
str_wrap_sieroty <- function(string, width) {
    x <- str_wrap(string = string, width = width)
    x <- gsub(pattern = ' w\n',replacement = '\nw ',x = x)
    x <- gsub(pattern = ' i\n',replacement = '\ni ',x = x)
    x <- gsub(pattern = ' z\n',replacement = '\nz ',x = x)
    return(x)
}
