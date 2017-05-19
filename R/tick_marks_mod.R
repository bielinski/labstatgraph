#' Dodaje znaczniki na osi pomiędzy etykietami zmiennych
#'
#' @param plot wykres z ggplot2
#' @param variable zmienna do której mają zostać dodane znaczniki
#' @param ax oś na której mają się znaleźć znaczniki
#' @param tick.length długość znaczników
#' @param tick.colour kolor znacznikóW
#'
#' @import grid
#' @export
#'

tick_marks_mod <-
    function(plot,
             variable,
             ax = 'x',
             tick.length = NULL, tick.colour = 'grey') {
        m <- grid::grid.lines(
            x = c(0, 1),
            y = c(0, 1),
            default.units = "npc",
            arrow = NULL,
            name = NULL,
            gp = gpar(col = tick.colour),
            draw = F,
            vp = NULL
        )
        fct <- plot$data[variable]
        liczba <- length(unique(as.character(unlist(fct))))
        brk <- seq(from = 0.5,
                   by = 1,
                   length.out = liczba + 1)
        if (ax == 'x') {
            second.variable.brk <- ggplot_build(plot)$layout$panel_ranges[[1]]$x.major_source
        } else {
            second.variable.brk <- ggplot_build(plot)$layout$panel_ranges[[1]]$y.major_source
        }
        if (is.null(tick.length)) {
            tick.length <- (second.variable.brk[2]-second.variable.brk[1])/25
        }
        tmp <- plot
        tmp <-
            tmp + coord_flip(expand = F, xlim = c(min(brk), max(brk))) + theme(axis.ticks.y = element_blank())
        if (ax == 'x') {
            for (i in 1:(liczba + 1)) {
                tmp <-
                    tmp + annotation_custom(
                        grob = m,
                        xmin = brk[i],
                        xmax = brk[i],
                        ymin = 0,
                        ymax = -tick.length
                    )
            }
        } else {
            for (i in 1:(liczba + 1)) {
                tmp <-
                    tmp + annotation_custom(
                        grob = m,
                        ymin = brk[i],
                        ymax = brk[i],
                        xmin = 0,
                        xmax = -tick.length
                    )
            }
        }
        tmp <- ggplot_gtable(ggplot_build(tmp))
        tmp$layout$clip[grepl(x = tmp$layout$name,pattern =  "panel")] <- "off"
        return(tmp)
    }
