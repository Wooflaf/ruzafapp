# Definimos los iconos que tendrán los sensores y los servicios de hostelería
icon_hosteleria <- makeAwesomeIcon(
  icon = "cutlery",
  iconColor = "black",
  markerColor = "orange"
)

icon_sonometro <- awesomeIconList(
  "Nivel 3" = makeAwesomeIcon(
    icon = "volume-up",
    iconColor = "black",
    markerColor = "darkred",
    library = "fa"
  ),
  "Nivel 2" = makeAwesomeIcon(
    icon = "volume-up",
    iconColor = "black",
    markerColor = "red",
    library = "fa"
  ),
  "Nivel 1" = makeAwesomeIcon(
    icon = "volume-up",
    iconColor = "black",
    markerColor = "lightred",
    library = "fa"
  )
)

# Información para el mapa interactivo
info.box <- HTML('<hr style="background-color: #e95521;height:3px;border:none">
<h4 style ="color: #e95521;">Buttons</h4>
<p>In the upper left corner, there are five buttons. The first two are for zooming in and out; the third is to return to the initial view, and finally, the button to search and place the view on the noise level meter that we want.</p>
<hr style="border-color: black;">

<h4 style ="color: #e95521;">Interactivity</h4>
<p>On the map there are circles with numbers inside. This number corresponds to the number of bars in that area. If we click, it will zoom and create new groups. If we click successively, we can see which bars they correspond to.<br><br>
If we click on the bar, we can see information about it. In the same way, if we click on a noise level meter, it will show us its information.</p>
<hr style="border-color: black;">

<h4 style ="color: #e95521;">Brief indications</h4>
<p>The darker the red in the circle around the noise level meter, the noisier it is. In the same way, the clearer, the less noisy. The bars are colored orange. </p>
<hr style="border-color: black;">

<h4 style ="color: #e95521;">Observations</h4>
<p>We can clearly see that the noise level meters that have many bars and restaurants around them have higher noise levels.<br><br>

Take a look at the <b>cadiz3</b> noise level meter. Why is it (according to our criteria) the noisiest, but hardly has any bars or restaurants around it?<br>
The answer is simple. You only need to see that it is located in front of Gran Via de les Germanies, a busy urban road.<br><br>

In other words, the noise made by people in bars and restaurants is one of the causes of these high noise levels, but so is vehicle traffic. Especially in the areas closest to busy urban roads, as in the previous case.</p>')

