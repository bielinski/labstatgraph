#' Rozszerzenie wykresu do rozmiaru obejmującego etykiety
#'
#' @param plot wykres do rozszerzenia
#' @param axis os do rozszerzenia
#'
#' @export
#'
expand_plot <- function(plot, axis = "y") {
    zmienna <- plot$data[as.character(plot$mapping[axis])]
    tmp.max <- max(zmienna,na.rm = T)
    if (tmp.max<1) {
        tmp.max <- tmp.max*100
        limit <- ceiling(tmp.max*1.2)
        limit <- limit/100
    } else {
        limit <- ceiling(tmp.max*1.2)
    }
    if (axis == 'y') {
        output <- plot + expand_limits(y = limit)
    } else {
        if (axis == "x") {
            output <- plot + expand_limits(x = limit)
        }
    }
    return(output)
}
