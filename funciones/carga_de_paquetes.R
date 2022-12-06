#
#
# Función para instalar paquetes en caso de no tenerlos
#
# 

# Primero se crea un objeto que contenga los paquetes que utilizaremos
# Esto se hace nombrando al objeto (en este caso paquetes_usados), luego
# utilizando la flecha de asignación ( <- ) y luego el conjunto de paquetes
# con la función c()

paquetes_usados <- c("tidyverse", "ggdog")


installed_packages <- paquetes_usados %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) { # Esta funcion hace el siguiente checkeo: si (if) alguno (any) de los paquetes
                                        # en "installed_packages" no esta presente (es decir devuelve FALSE)
                                        # entonces instala esos paquetes
  install.packages(paquetes_usados[!installed_packages])
}
