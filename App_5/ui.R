#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Gene Expression View"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("gene_id", "Select a gene ID:", choices = NULL)
    ),
    
    mainPanel(
      plotOutput("expressionPlot")
    )
  )
))
