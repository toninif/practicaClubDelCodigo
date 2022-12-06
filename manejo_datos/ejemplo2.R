

# Paquetes 

library(readr) # Para leer datos csv
library(dplyr) # Para manejar datos

# Datos

inteligencia_perros <- read_csv("manejo_datos/datos/inteligencia_perros.csv") # Asignar datos a nuevo objeto


# Codigo

datos_para_grafico <- inteligencia_perros %>% # Crear objeto y asignarle inteligencia_perros. Y LUEGO
  mutate( # Crear una nueva variable
    raza_factor = forcats::as_factor(Breed) # La nueva variable sera Breed convertida en factor
  ) %>% # Y LUEGO
  filter(grepl("Terrier", Breed) & height_low_inches > 17) # Filta los datos según estas 
                                                          # dos condiciones. Por eso el &

# En este caso la primer condición es que tome todos los datos 
# de la variable Breed que contengan "Terrier". Y también que el sean mayores que 17 
# en la variable height_low_inches


# Traducción

# Crea un nuevo objeto que contenga "inteligencia_perros" modificada. 
# Primero convertí la variable Breed a factor.
# Segundo filtra los datos y devolveme aquelos que cumplan las dos condiciones.
# Solo quiero los datos que sean de los perros Terrier
# y que su peso máximo en libras sea mayor a 17.

