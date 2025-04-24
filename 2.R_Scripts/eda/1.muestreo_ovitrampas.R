
# Paso 1. subir definir la ruta del archivo ####
path <- "1.Datasets/11_guanajuato/DescargaOvitrampasMesFco.txt"


# Paso 2. visualizar el muestreo ####
deneggs::blocks_surveillance(locality = "Leon de Aldama",
                             cve_edo = "11",
                             path_coords = path)


