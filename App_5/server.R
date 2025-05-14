#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(ggplot2)
library(readr)
library(tidyr)
library(dplyr)

#data
TPMs <- read_csv("TPMs_table_100genes.csv")

#1 col
gene_ids <- TPMs[[1]]

shinyServer(function(input, output, session) {
  updateSelectInput(session, "gene_id", choices = gene_ids)
  #reactive
  sel_gene_data <- reactive({
    req(input$gene_id)
    TPMs %>%
      filter(.[[1]] == input$gene_id) %>%
      pivot_longer(-1, names_to = "Sample", values_to = "TPM")
  })
  
  #plot
  output$expressionPlot <- renderPlot({
    gene_df <- sel_gene_data()
    
    ggplot(gene_df, aes(x = Sample, y = TPM)) +
      geom_bar(stat = "identity", fill = "grey") +
      theme_minimal() +
      labs(title = paste("Expression of", input$gene_id),
           x = "Sample", y = "TPM") +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
})

