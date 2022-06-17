# Panel de visualización geográfica
visualizacion_geo_tab <- tabPanel("Geographic visualization",
                                  sidebarLayout(
                                    sidebarPanel(
                                      tags$h3("Map with sound level meters and nearby bars and restaurants"),
                                      info.box
                                    ),
                                    
                                    mainPanel(
                                      # Visualización del gráfico geográfico
                                      leafletOutput("leaflet", height = "90vh")
                                    )
                                  )
)

# Sub-panel con información sobre la aplicación
info_aplicacion_tab <- tabPanel("About the app",
                tags$h2("About the app"),
                
                tags$h3("Objective"),
                HTML("<p>The purpose of this application is to allow the user to visualize the noise levels in the Ruzafa neighborhood in an interactive way.<br>Using the heat map, you can see when the noise levels are higher (or lower).<br>With the geographical visualization you can also get an idea of why these values may be occurring.</p>"),
                
                tags$h3("Data"),
                HTML('<p>Data of noise level meters obtained from <a href="https://www.valencia.es/dadesobertes/es/data/?groups=medio-ambiente">Open Data Portal of the Valencia City Council</a>.<br>Bar and restaurant data extracted from Google Maps through web scraping.</p>'),
                
                tags$h3("Data limitations"),
                HTML("<p>The data that we have been able to obtain from bars and restaurants is what we have been able to extract from Google Maps. It is quite possible that some locations are not present on the map. Despite this, there are a total of 226; more than enough to get a good representation.</p>"),
                
                tags$h3("Contact information"),
                HTML("<p>If you have detected any error, incorrect data, or additional information that could improve the application, you can send me an email to <a href = 'mailto: omeal@alumni.uv.es'>omeal@alumni.uv.es</a> in order to correct it.</p>")
)

# Sub-panel con definiciones sobre los datos
definiciones_tab <- tabPanel("Definitions",
                             tags$h2("Definitions"),
                             
                             tags$h3("Table with the abbreviated name of the noise level meter and its street"),
                             tableOutput("nombres_calle")
)

# Sub-panel con información sobre el ruido
info_ruido_tab <- tabPanel("Basic information about noise",
                
                tags$h2("Basic information about noise"),
                
                tags$h3("What are the different noise levels?"),
                tableOutput("escala_ruido"),
                
                tags$h3("What effects does it have on us?"),
                HTML("<p>The World Health Organization (WHO), the European Economic Community (EEC) and the Superior Council for Scientific Research (CSIC) have unanimously declared that noise has both physiological and psychological health effects.</p ><p>Prolonged exposure to noise can cause medical problems such as hypertension and heart disease.</p><p>Noise above 80dB can lead to aggressive behavior and psychiatric symptoms, although the main consequence is loss of hearing.</p><p>Adverse effects of noise can include:</p><ul><li>Headaches</li><li>Difficulty with oral communication and hearing ability</li> <li>Disturbed sleep and rest</li><li>Stress, fatigue, depression, nervousness</li><li>Gastritis</li><li>Sexual dysfunction</li></ul>"),
                
                tags$h3("The consequences are not only individual"),
                HTML("<p>The effects of high noise levels are not only personal, but can also have a great socio-economic impact.<br>The following image illustrates this:<br /></p><img src='https://i.ibb.co/ckLwrW6/noise-effects.png' alt='noise-effects'>")
)