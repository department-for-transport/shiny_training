#Note - this app will not run as it's missing an input widget.
# Complete the exericse, the run the app to check the results

library(shiny)

shinyUI(fluidPage(
  
  # App title
  titlePanel("My Shiny App with Custom Inputs"),
  
  # Layout with sidebar and main panel
  sidebarLayout(
    # Sidebar panel for inputs
    sidebarPanel(
      ### Dropdown menu to select a year
      # - Add a dropdown menu to allow people to select a year between 2000 and 2010.
      # - Add it to the sidebar of your app.
      # - Give it a sensible title.
      # - Set the default to 2007.
      # - Adjust the parameters to allow people to select multiple options.
      
      ##START HERE ---
      
      ### Bonus: Add a date selector to your app
      # - Use ?dateInput() to learn more about the parameters
      
      ##START HERE ---
      
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
