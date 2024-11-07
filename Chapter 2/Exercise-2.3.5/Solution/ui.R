
library(shiny)

shinyUI(fluidPage(
  
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
      selectInput("year", #input name
                  label = "Select Year(s):", 
                  choices = 2000:2010,
                  #make 2007 the default value
                  selected = 2007,
                  #allow multiple selections
                  multiple = TRUE), #always remember the comma to separate inputs
      
      ### Bonus: Add a date selector to your app
      # - Use ?dateInput() to learn more about the parameters
      
      ##START HERE ---
      dateInput("date",
                label = "Choose a date:",
                value = Sys.Date() #default value is today's date
                ) 
      
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      
    )
  )
))
