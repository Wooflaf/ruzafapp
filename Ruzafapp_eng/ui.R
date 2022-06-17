# UI para aplicación de visualización de ruido en Ruzafa con barra de navegación superior.
shinyUI(
  navbarPage("Noise visualization in Ruzafa",
             header = "",
             theme = shinytheme("united"),
             
             # Panel de mapa de calor
             tabPanel("Heat map",
                      
                      tags$head(tags$style(".leaflet-top {z-index:999!important;}")),
                      
                      # Información introductoria
                      tags$h3("Interact with the data!"),
                      HTML("<p>This visualization will allow you to see which days there is more (or less) noise for each noise level meter at a glance.<br>You can modify the time at which is measured, the noise level meter, the date range... and even compare two noise level meters! Hover over the colored boxes to find out which day they correspond to and what their value is.<br>It is advisable to read the help section beforehand.<br>Click on the tools button to be able to modify it to your liking.<br></p>"),
                      
                      # Botón de configuración
                      boton_config,
                      br(),
                      
                      # Mostrar el primer mapa de calor 
                      plotlyOutput("heatmap"),
                      
                      # Mostrar el segundo mapa de calor si el switch de comparación está activo
                      conditionalPanel(
                        condition = "input.comparar",
                        plotlyOutput("heatmap2")
                      )),
             
             # Panel de visualización geográfica
             visualizacion_geo_tab,
             
             # Panel con sub-paneles de ayuda e información
             navbarMenu("Help", 
                        icon = icon("info-circle"),
                        
                        # Sub-panel con información sobre la aplicación
                        info_aplicacion_tab,
                        
                        # Sub-panel con definiciones sobre los datos
                        definiciones_tab,
                        
                        # Sub-panel con información sobre el ruido
                        info_ruido_tab
             ))
)
