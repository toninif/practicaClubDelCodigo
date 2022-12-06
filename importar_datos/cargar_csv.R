#
#
# Cargando datos separados por coma (csv)
# Para este ejemplo los datos los descargue de kaggle: 
# https://www.kaggle.com/datasets/jasleensondhi/dog-intelligence-comparison-based-on-size
#

library(readr) # El paquete que carga este tipo de datos es readr

inteligencia_perros <- read_csv("importar_datos/datos/inteligencia_perros.csv") 

# En la linea 9 se creo un nuevo objeto y se le asignó ( <- ) los datos importados.
# La funcion que se utilizo es read_csv. El parametro que se completo es el que
# indica donde se encuentran los datos. En este caso, los datos estan dentro del proyecto
# en la carpeta importar_datos/datos/inteligencia_perros.csv. Esto ultimo es el archivo.
# Es importante siempre incluir el formato del archivo. En este caso .csv

inteligencia_perros # Con esto se puede ver el objeto en la consola
str(inteligencia_perros) # Esta es una forma de ver la estructura de nuestra base
glimpse(inteligencia_perros) # Esta es una función del paquete dplyr
                            # que permite ver los datos con más información