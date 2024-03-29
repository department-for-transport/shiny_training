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
library(dplyr)
library(DT)

eurovision_data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-05-17/eurovision.csv')

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
  
  output$eurovision <- renderDataTable({
    
     eurovision_data %>%
      dplyr::filter(year %in% as.numeric(input$year))
    
  })
  
}) #End of server
