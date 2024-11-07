
library(shiny)

shinyUI(fluidPage(
  
  ### Exercise 1. Change the title of the app to something different
  titlePanel("My Shiny App!"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    ### Question 2. Create two tabs, one called Chart to keep the chart in it
    ### and one called Text to write some text in
    mainPanel(
      tabsetPanel(
        # Chart tab for the plot
        tabPanel("Chart", 
                 plotOutput("distPlot")),
        
        # Text tab with formatted text
        tabPanel("Text", 
                 h2("Welcome to My Shiny App"),  # Header
                 p("This app demonstrates a simple histogram of waiting times for eruptions of the Old Faithful geyser."),
                 p(strong("Adjust the number of bins"), " using the slider to see the effect on the chart.")
        ),
        
        ### Bonus: Set the default tab to "Chart" when the app runs
        id = "tabs", selected = "Chart"
      )
    )
  )
))
