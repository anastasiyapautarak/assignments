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
  #app title
  titlePanel("Gene Expression View"),
  
  sidebarLayout(
    sidebarPanel(
      #menu
      selectInput("gene_id", "Select a gene ID:", choices = NULL)
    ),
    
    mainPanel(
      #TPM expression plot
      plotOutput("expressionPlot")
    )
  )
))
