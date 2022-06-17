boton_config <- dropdown(
  tags$h3("Configuration"),
  
  # Selector del rango de fechas
  dateRangeInputMod("date_rg",
                 label = "Select the range of months",
                 start = "2020-09-01", end = today() - day(today() - 1),
                 min = "2020-09-01", max = today() - day(today() - 1),
                 separator = " - ", format = "mm/yyyy",
                 startview = "year", language = "en",
                 weekstart = 1, minview = "months", maxview = "decade"
  ),
  
  # Selector del sensor
  pickerInput("calle", "Select the sensor", 
              choices = names(ids), selected = "sueca61",
              options = list(style = "btn-primary")),
  
  # Selector de la medida
  pickerInput("med", "Select the time", 
              choices = c("7:00 - 19:00", "19:00 - 23:00", "23:00 - 7:00",  
                          "All day"), 
              selected = "7:00 - 19:00",
              options = list(style = "btn-warning")),
  
  # Botón switch para permitir la aparición del selector del segundo sensor
  switchInput(
    inputId = "comparar",
    label = "Compare",
    onStatus = "success",
    offStatus = "danger"
  ),
  
  # Selector del segundo sensor condicionado al switch previo
  conditionalPanel(
    condition = "input.comparar",
    pickerInput("calle2", "Select the second sensor",
                choices = names(ids),
                options = list(style = "btn-success"))
  ),
  
  # Configuración del botón dropdown
  style = "material-circle", 
  icon = icon("gear", verify_fa = F),
  status = "danger", width = "250px",
  animate = animateOptions(
    enter = animations$fading_entrances$fadeInLeftBig,
    exit = animations$fading_exits$fadeOut
  )
)
