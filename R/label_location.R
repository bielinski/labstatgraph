#' Ustawianie pozycji etykiety względem zakresu danych
#'
#' @param data dane do położenia etykiety
#' @param ratio proporcja względem maksymalnej wartości danych
#'
#' @export
#'

label_location <- function(data, ratio = 30) {
    data + max(data)/ratio
}
