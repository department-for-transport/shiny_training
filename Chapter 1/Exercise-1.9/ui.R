
library(shiny)

shinyUI(fluidPage(
  
  ### Exercise 1. Change the title of the app to something different
  titlePanel(""),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    ### Question 2. Create two tabs, one called Chart to keep the chart in it
    ### one called Text to write some text in
    mainPanel(
      plotOutput("distPlot")
      ### Question 3. Format the text in your tab (e.g. header, bold text etc)
      
      ### Bonus: Can you work out how to set a tab to default when you run the app
      
      )
    )
  )
)
