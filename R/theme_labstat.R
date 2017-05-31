#' ggplot2 LASiE theme
#'
#' @description ggplot2 LASiE theme.
#'
#' @param colour kolor osi
#'
#' @export
#'

theme_labstat <- function(colour = 'grey') {
    theme(
        text = element_text(family = "Calibri"),
        axis.title = element_text(size = 9),
        axis.text = element_text(size = 9),
        axis.ticks = element_line(colour = colour),
        panel.background = element_blank(),
        axis.line = element_line(size = 0.5,
                                 colour = colour),
        legend.title = element_text(size = 10),
        legend.text = element_text(size = 10),
        legend.position = ('top'),
        legend.key.size = unit(3, units = 'mm'),
        strip.text.y = element_text(angle = 180),
        strip.background = element_blank(),
        strip.placement = 'outside'
    )
}
