#' Paleta kolorow do raportow
#'
#' @param kolory wektor nazw kolorow do zastosowania (czerwony, zielony, fioletowy, niebieski, granatowy, pomaranczowy, szary)
#'
#' @description Zwraca wektor z wybranymi kolorami z palety stosowanej w raportach.
#'
#' @export
#' @import grDevices
#'
paleta.raporty <- function(kolory) {
    paleta <- c(
        czerwony = rgb(224, 0, 52, maxColorValue = 255),
        zielony = rgb(0, 176, 80, maxColorValue = 255),
        fioletowy = rgb(110, 37, 133, maxColorValue = 255),
        niebieski = rgb(0, 176, 240, maxColorValue = 255),
        granatowy = rgb(8, 38, 77, maxColorValue = 255),
        pomaranczowy = rgb(220, 90, 15, maxColorValue = 255),
        szary = rgb(178, 180, 179, maxColorValue = 255)
    )
    output <- paleta[kolory]
    attributes(output) <- NULL
    return(output)
}
