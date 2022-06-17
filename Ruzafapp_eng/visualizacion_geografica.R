visualizacion_geografica <- function(){
  leaflet() %>%
    addProviderTiles(providers$OpenStreetMap.HOT) %>%
    addAwesomeMarkers(data = hosteleria, lng = ~Longitude, lat = ~Latitude, # Marcadores de hostelería
                      clusterOptions = markerClusterOptions(), # Agrupación de marcadores
                      icon = icon_hosteleria,
                      label = ~name,
                      popup = paste0(
                        "<b> Name: </b>",
                        hosteleria$name,
                        "<br>",
                        "<b> Category: </b>",
                        hosteleria$Category,
                        "<br>",
                        "<b> Address: </b>",
                        hosteleria$Address)) %>% 
    setView(lng = median(hosteleria$Longitude), # Vista inicial: mediana de lats y longs para que esté 'centrada'
            lat = median(hosteleria$Latitude), zoom = 16) %>%
    addAwesomeMarkers(data = all_df_ubi_median, lng = ~longitude, lat = ~latitude, # Marcadores sonómetros
                      icon = ~icon_sonometro[nivel],
                      label = ~street,
                      group = "sonometros",
                      popup = paste0(
                        "<b> Name: </b>",
                        all_df_ubi_median$street)) %>% 
    addCircleMarkers(data = all_df_ubi_median, lng = ~longitude, lat = ~latitude,
                     radius = ~3*sqrt(median_LAeq),
                     opacity = 0.8,
                     color = ~color_pal(scaled),
                     fillOpacity = 0.6) %>% 
    addLegend(position = "bottomright", # Añadimos una leyenda orientativa
              labels = c("Level 3", "Level 2", "Level 1"), 
              colors = c("darkred", "red", "salmon"),
              opacity = .7,
              title = "Sound level meters") %>%
    addResetMapButton() %>% # Botón para poder volver a la vista inicial
    addSearchFeatures(targetGroups = "sonometros") # Botón de búsqueda de sonómetro
}
