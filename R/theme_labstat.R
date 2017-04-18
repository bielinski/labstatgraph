#' ggplot2 LASIE theme
#'
#' @description ggplot2 LASIE theme.
#'
#' @export
#'

theme_labstat <- function() {
    theme(
        text = element_text(family = "Calibri"),
        axis.title = element_text(size = 9),
        axis.text = element_text(size = 9),
        axis.ticks = element_line(colour = 'grey'),
        panel.background = element_blank(),
        axis.line = element_line(size = 0.5,
                                 colour = 'grey'),
        legend.title = element_text(size = 10),
        legend.text = element_text(size = 10)
    )
}
