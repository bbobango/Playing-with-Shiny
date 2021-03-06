#Preliminaries
library(tidyverse)
library(shiny)

#Getting the data

#Shiny template
ui <- fluidPage(
  titlePanel('Welcome to my Shiny app'),
  
  sidebarLayout(
    sidebarPanel(
  #Input() functions
      sliderInput(inputId = 'num',
                  label = 'Choose a number',
                  value = 25, min = 1, max = 100),
      #Output() functions
    ),
    mainPanel(
      plotOutput('hist')
    )
  )
)

server <- function(input, output){
  output$hist <- renderPlot({
    title <- "100 random normal values"
    hist(rnorm(input$num))
  })
  }

shinyApp(ui = ui, server = server)

