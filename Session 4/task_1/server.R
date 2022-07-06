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
library(ggplot2)

eurovision_data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-05-17/eurovision.csv')

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

  eurovision_filtered <- reactive({
    
    eurovision_data %>%
      dplyr::filter(year == input$year)
    
  })
  
  output$eurovision_chart <- renderPlot({
   
    ggplot(eurovision_filtered(), aes(x = artist_country, y = rank))+
      geom_bar(stat = "identity")
    
  })
  
  ##Create a text output
  
  output$date_text <- renderText({
    
    paste("Welcome to the app! Today's date is: ", lubridate::today())
    
  })
  

  
  ##Create a data table output
  
  output$eurovision <- renderDataTable({
    
    eurovision_filtered()
    
  })
  
  output$download_data <- downloadHandler(
      filename = function() {
        paste('data-', Sys.Date(), '.csv', sep='')
      },
      content = function(con) {
        write.csv(eurovision_filtered(), con)
      }
    )
  
}) #End of server
