#' Interactively Select A Fun Palette
#'
#' @aliases
#' funPalPicker
#' @author
#' Seth Berry
#' @description
#' This function will open a Shiny gadget that will let you look at each
#' color palette.  You will see the palette and the hex values will be
#' printed out to the console on each selection.
#' @examples
#' \dontrun{funPalPicker()}
#' @export
#' @import
#' miniUI
#' shiny

funPalPicker = function() {

ui = miniPage(
  gadgetTitleBar("Fun Palette Color Selector",
                 left = miniTitleBarCancelButton("cancel", "Cancel"),
                 right = miniTitleBarButton("done", "Done", primary = TRUE)),
  miniContentPanel(selectInput("funPalSelection", "Pick Your Palette!",
                                choices = names(funPals)),
                   plotOutput("funPalPlot"))
)

server = function(input, output, session) {
  output$funPalPlot = renderPlot({
    showFunPal(input$funPalSelection)
  })
  observeEvent(input$done, {
    stopApp()
  })
  observeEvent(input$cancel, {
    stopApp()
  })
}

runGadget(ui, server)
}