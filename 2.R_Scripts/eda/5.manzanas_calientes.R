

# Paso 1. definir la ruta de la carpeta
path_vect <- "1.Datasets/11_guanajuato"

# Paso 2. definir el resto de argumentos y aplicar la función
deneggs::eggs_hotblocks(path_vect = path_vect,
                        cve_edo = "11",
                        locality = "Irapuato",
                        wk = 11,
                        brand = "slack")
