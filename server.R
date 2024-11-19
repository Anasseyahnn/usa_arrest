library(DT)
library(gt)
library(psych)
library(tidyverse)

function(input, output, session){
  
  # dictionnaire des données
  output$dictionnaire <- renderPrint(
    # dictionnaire des données 
    my_data %>% 
      str()
    
  )
  
  # statistique descriptive
  output$statistique <- renderPrint(
    my_data %>% 
      describe()
  )
  
  # presentation de la données
  output$dataT <- renderDataTable(
    my_data %>% 
      select(State,everything())
  )
  
  
  
}