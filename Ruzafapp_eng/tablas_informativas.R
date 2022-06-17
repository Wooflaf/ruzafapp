# Tabla con equivalencias de nombres abreviados de sensores
calle <- c("Sueca Esq. Denia", "Cádiz, 16", "Cádiz, 3", "Cuba, 3", "Sueca, 2",
           "Sueca, 61", "Sueca, 32", "Carles Cervera, Chaflán Reina Doña María",
           "Salvador Abril Chaflán Maestro José Serrano", "Vivons Chaflán Cádiz", 
           "Carles Cervera, 34", "Puerto Rico, 21", "Doctor Serrano, 21", 
           "General Prim Chaflán Donoso Cortés")
names(calle) <- names(ids)

nombres_calle <- data.frame(nom_abr = names(calle),
                            calle = paste("Street", calle)) %>%
  arrange(calle)

names(nombres_calle) <- c("Abbreviated name", "Street where it is located")

# Tabla con las escalas de ruido
escala_ruido <- data.frame(valores = c("130", "120", "110", "100", "90", "80", "70", "60", "50", "40", "30", "0"),
                           info = c("Perceived level about 10 meters away from an aircraft, the noise is absolutely unbearable and painful.",
                                    "Very dangerous, some hearing protection is needed. This noise is emitted by the jet of an airplane flying at 50 meters.",
                                    "Dangerous and very annoying. They are common in a nightclub, at a rock concert and 100 meters from a landing plane.",
                                    "Very serious risk if hearing is prolonged. This level is common in many industrial work environments.",
                                    "Very noisy environment and they are dangerous if exposed for a long time. It is the noise level characteristic of a heavy vehicle traveling at 60 km/h and perceived from about 10 meters.",
                                    "Quite noisy environments, such as a street with heavy traffic or some appliances such as vacuum cleaners or washing machines.",
                                    "Noisy atmosphere, common in shopping areas and many bars, inside a train or a car.",
                                    "Low noise environment and is the usual level of voice sound in a normal conversation.",
                                    "Aquiet environment, although still interferes with sleep. It is the usual level of a study room.",
                                    "Calm atmosphere and admissible to maintain sleep.",
                                    "Below this value it is estimated that the environment is silent.",
                                    "Minimum Hearing Level"))

names(escala_ruido) <- c("Pressure level (dBA)", "Observations")