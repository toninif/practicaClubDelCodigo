#
#
# Manejo de datos Ejemplo 1
#
#

# Paquetes

library(readr) # Para cargar datos
library(dplyr) # Para manejar datos

# Datos

inteligencia_perros <- read_csv("manejo_datos/datos/inteligencia_perros.csv") # Los datos

glimpse(inteligencia_perros) # Para verlos con algo de info

#  Cambiando nombres / Creando nuevas variables / Relocalizando variables

inteligencia_perros_ordenada <- inteligencia_perros %>% # Se crea un nuevo objeto
                                                        # No conviene sobreescribir el original
                                                        # Y LUEGO ( %>% )
  rename( # Con esta funcion se renombra
    raza = Breed, # El orden es: nombre nuevo = nombre original
    altura_minima_pulgadas = height_low_inches, # Si son varios se usa la coma
    altura_maxima_pulgadas =  height_high_inches, # En este caso luego de la coma doy un ENTER asi se lee mejor
    peso_minimo_libras = weight_low_lbs,
    peso_maximo_libras = weight_high_lbs,
    repeticion_baja = reps_lower,
    repeticion_alta = reps_upper
  ) %>% # Y DESPUES
  mutate( # Con esto se crea una nueva variable
    raza_factor = forcats::as_factor(raza) # El orden es: nombre = contenido de la variable
                                          # En este caso estoy transformando la variable raza a factor
                                          # Para eso no sobreescribo la original. Creo una nueva con el nombre
                                          # y el _factor para indicar que la cambie. 
                                          # Para pasara a facor use la funcion as_factor del paquete forcats
  ) %>% # Y DESPUES
  relocate(raza_factor, .after = raza) # Acomode la variable raza_factor luego de la variable raza
                                      # El primer argumento es la variable a mover, el segundo argumento
                                      # es donde moverla. Si es "despues de" entonce se usa ".after". 
                                      # Si es "antes de", entonces se usa ".before"

# Traducción del código anterior

# Al nuevo objeto "inteligencia_perros_ordenada" asignale lo siguiente. 
# Primero agarra el objeto inteligencia_perros. Luego cambiale los nombres
# a las siguientes variables. Luego crea la variable "raza_factor". El contenido
# de esta variable sera el mismo que "raza" pero serán factores. Luego
# move la variable "raza_factor" para que se ubique después de la variable raza












  