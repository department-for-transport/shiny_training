#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("year", 
                  label = "Choose a year", 
                  choices = 2000:2010, 
                  selected = 2007,
                  multiple = TRUE),
      
       sliderInput("bins",
                   "Hey, choose a number of bins!",
                   min = 5,
                   max = 80,
                   value = 20)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      ##Text output showing date here
      textOutput("date_text"),
      br(),
      
      tabsetPanel(id = "tabs",
                  tabPanel("Chart", 
                           plotOutput("new_chart")),
                  tabPanel("Text",
                           h3("I like writing text"),
                           h6("Sometimes it is small"),
                           h1("Sometimes it is large")),
                  tabPanel("Eurovision data",
                           dataTableOutput("eurovision"))
      ) #End of tabset panel
    ) #End of main panel
  ) #End of sidebar layout
))
