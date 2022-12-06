#
#
# Haciendo un gráfico
#
#

# Paquetes 

library(readr) # Para cargar datos

library(ggplot2) # Con este paquete se crean gráficos re lindos
library(ggdogs)


# Datos


inteligencia_perros <- read_csv("manejo_datos/datos/inteligencia_perros.csv") # Asignar datos a nuevo objeto

datos_para_grafico <- inteligencia_perros %>% 
  mutate(
    raza_factor = forcats::as_factor(Breed)
  ) %>% 
  filter(grepl("Terrier", Breed) & height_low_inches > 17)

# Visualización básica

# Se utiliza la función ggplot del paquete ggplot2
# En el argumento data se indica el objeto que contiene los datos
# Para manejar los ejes primero se usa el argumento mapping 
# Y dentro de trabaja con las "aes". En si son el eje x, el y, el color, el relleno.
# En este gráfico en el eje x iran las razas de perro y en el eje y su peso máximo.
# Luego al gráfico se le agrega otra capa con el signo +
# Y se indica el tipo de forma que va a graficar. En este caso columnas
# Por ultimo se le agrega otra capa que lo que hace es rotar el gráfico
# con la función coord_flip. Esto se hizo para que se puedan leer los nombres
# de las razas de perros

ggplot(data = datos_para_grafico, mapping = aes(x = raza_factor,
                                                y = weight_high_lbs)) +
  geom_col() +
  coord_flip()



# Traducción

# Grafica los datos del objeto, asignadole la variable raza_factor al eje X
# y la variable peso máximo del perro al eje Y. Una vez con los datos, agrega una
# capa que sean columnas. Cada categoria de X va a tener su columna.
# Por ultimo invertí los ejes del gráfico.


