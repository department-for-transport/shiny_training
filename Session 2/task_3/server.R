#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(gapminder)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$new_chart <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
  ##Create a text output
  
  output$date_text <- renderText({
    
    paste("Welcome to the app! Today's date is: ", lubridate::today())
    
  })
  
  ##Create a data table output
  
  output$gap <- renderDataTable({
    
    gapminder::gapminder
    
  })
  
}) #End of server
