library(knitr)
library(tidyverse)
library(lubridate)
library(magrittr)
library(leaflet)
library(leaflet.extras)
library(shiny)
library(shinythemes)
library(shinyWidgets)
library(plotly)
library(htmlwidgets)
library(forcats)
library(viridis)

source("leaflet_icons_infobox_en.R", local = TRUE, encoding = "UTF-8")

load("./data/data.Rdata")

dateRangeInputMod <- function(inputId, label, minview = "days", maxview = "y", ...) {
  d <- shiny::dateRangeInput(inputId, label, ...)
  d$children[[2L]]$children[[1]]$attribs[["data-date-min-view-mode"]] <- minview
  d$children[[2L]]$children[[3]]$attribs[["data-date-min-view-mode"]] <- minview
  d$children[[2L]]$children[[1]]$attribs[["data-date-max-view-mode"]] <- maxview
  d$children[[2L]]$children[[3]]$attribs[["data-date-max-view-mode"]] <- maxview
  d
}

ultimo_dia_mes <- function(date){
  as.Date(date) %m+% months(1) %m-% days(1)
}


date_heatmap <- function(df){
  ggplot(df, aes(monthweek, weekdayf, text = text)) + 
    geom_tile(aes(fill = valor)) + 
    facet_grid(year~month) +
    scale_fill_viridis_c(option = "plasma", na.value = "gray65") +
    scale_y_discrete(limits = rev) +
    labs(x="Week of the month", y = "", subtitle = "")
}

interactive_date_heatmap <- function(p){
  ggplotly(p, tooltip = "text") %>% 
    config(displayModeBar = FALSE)
}

color_pal <- colorNumeric(palette = colorRamp(c("#FDD49E", "#7F0000"), 
                                              interpolate="spline"),
                          all_df_ubi_median$scaled)

source("visualizacion_geografica.R", local = TRUE, encoding = "UTF-8")
source("boton_config.R", local = TRUE, encoding = "UTF-8")
source("tabs.R", local = TRUE, encoding = "UTF-8")
source("tablas_informativas.R", local = TRUE, encoding = "UTF-8")