library(shiny)
library(shinydashboard)

dashboardPage(
  
  dashboardHeader(title = "Exploaration des arrestations aux USA en 1973",
                  titleWidth = 650,
                  tags$li(class = "dropdown", tags$a(href = "https://www.github.com/anasseyahnn", icon("github"), "Mes projets", target = "_blank")),
                  tags$li(class = "dropdown", tags$a(href = "https://www.linkedin.com/anasseyahanan", icon("linkedin"), "Mon profi", target = "_blank"))
                  ),
  
  dashboardSidebar(
    # Menu vertical 
    sidebarMenu(
      id = "sidebar",
      
      # Premier menu
      menuItem("Donnée", tabName = 'data', icon = icon('database')),
      menuItem(text = "Visualisation", tabName = 'viz', icon = icon('chart-line')),
      menuItem(text = "Cartographie", tabName = 'map', icon = icon('map'))
    )
  ),
  
  dashboardBody(
    tabItems(
      # premier tab item (data)
      tabItem(tabName = 'data',
              # tab box
              tabBox(id = "t1", width = 12,
                     tabPanel("Objectif de l'étude", icon = icon("address-card"), h4("tabpanel 1 placeholder")),
                     tabPanel(title ="Donnée", icon = icon("database"), dataTableOutput("dataT")),
                     tabPanel(title ="Dictionnaire des données", icon = icon("address-card"), verbatimTextOutput("dictionnaire")),
                     tabPanel(title ="Statistique des données", icon = icon("calendar"), verbatimTextOutput("statistique"))
                     )
              ),
      
      # seconde tab item (visualisation)
      tabItem(tabName = 'viz',
              # tab box
              tabBox(id="t2", width = 12,
                     tabPanel(title = "Analyse des tendances de crimes par ville", value = "trends", h4("tabpanel-4 placeholder UI")),
                     tabPanel(title = "Distribustions", value = "distro", h4("tabpanel -5 placeholder")),
                     tabPanel(title = "Matrice de correlation", h4("tabpanel -6 placeholder")),
                     tabPanel(title = "Relation entre les types d'arrestation et les populations",value = "relation" ,h4("tabpanel -6 placeholder"))
                     )
              ),
      
      # seconde tab item (map)
      tabItem(tabName = 'map',
              # tab box
              tabBox(h4("tabpanel-7 placeholder UI"))
              )
      
      
      

    )
  )
  
)