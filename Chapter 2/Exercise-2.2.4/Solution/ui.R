
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("My Shiny App!"),
  
  sidebarLayout(
    sidebarPanel(
      ## Question 2. Identify the input widget and change the title
      ## Question 3. Change the min, max and default values
      sliderInput("bins",
                  "Slide the button to adjust the value:",
                  min = 10,
                  max = 100,
                  value = 50)
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Chart", 
                 plotOutput("distPlot")
        ),
        tabPanel("Text", 
                 h2("Welcome to My Shiny App"),
                 p("This app demonstrates a simple histogram of waiting times for eruptions of the Old Faithful geyser."),
                 p(strong("Adjust the number of bins"), " using the slider to see the effect on the chart.")
        ),
        id = "tabs", selected = "Chart"
      )
    )
  )
))