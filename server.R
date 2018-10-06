
library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  dataset <- reactive( {
    mtcars
  })
  
  output$carPlot <- reactivePlot(function() {
    data = dataset()
    data[,input$groupby] <- factor( data[,input$groupby])

    ggplot(data, 
           aes_string(x = input$variablex, 
                      y = input$variabley,
                      colour = input$groupby)
           
           ) + 
      geom_point(size = 3)
  })
  
})
