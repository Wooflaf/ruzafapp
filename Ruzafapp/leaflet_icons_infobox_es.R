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

# Caja de información para el mapa interactivo
info.box <- HTML('<hr style="background-color: #e95521;height:3px;border:none">
<h4 style ="color: #e95521;">Botones</h4>
<p>En la esquina superior izquierda, hay cinco botones. Los dos primeros son para hacer más y menos zoom; el tercero es para regresar a la vista inicial, y por último, el botón para buscar y situar la vista en el sensor que queramos.</p>
<hr style="border-color: black;">
<h4 style ="color: #e95521;">Interactividad</h4>
<p>En el mapa hay círculos con números en su interior. Este número corresponde a la cantidad de locales que hay en esa zona. Si hacemos click, hará zoom y creará nuevos grupos. Si hacemos click sucesivamente, podremos ver a qué locales corresponden.<br><br>
   Si pinchamos en el local, podremos ver información relativa a ellos. De la misma manera, si hacemos click en un sensor, nos mostrará su información.
</p>
<hr style="border-color: black;">
<h4 style ="color: #e95521;">Indicaciones breves</h4>
<p>Cuanto más oscuro sea el rojo del círculo que rodea al sensor, más ruidoso es. De la misma forma, cuanto más claro, menos ruidoso. Los locales son aquellos coloreados de naranja.</p>
<hr style="border-color: black;">
<h4 style ="color: #e95521;">Observaciones</h4>
<p>Podemos observar claramente que los sensores que tienen muchos bares y restaurantes alrededor tienen niveles de ruido mayores.<br><br>
   Mira el sensor <b>cadiz3</b>. ¿Por qué es (según nuestro criterio) el más ruidoso, pero apenas tiene bares o restaurantes a su alrededor?<br>
   La respuesta es simple. Solo tienes que ver que está situado frente a la Gran Vía de les Germanies, una vía urbana muy transitada.<br><br>
   Es decir, el ruido que hacen las personas en bares y restaurantes es una de las causas de estos altos niveles de ruido, pero también lo es el tráfico de vehículos. Sobre todo en las zonas más próximas a vías urbanas muy transitadas, como es el caso anterior.
</p>')
