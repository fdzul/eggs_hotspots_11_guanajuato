
# Paso 1. subir definir la ruta del archivo ####
path <- "1.Datasets/11_guanajuato"


# Paso 2. indicadores de ovitrampas por casa ###
deneggs::ovitraps_occupancy_abundancy(path_ovitraps  = path,
                                      scale = "ovitraps")

# Paso 3. indicadores de ovitrampas por manzana ###
deneggs::ovitraps_occupancy_abundancy(path_ovitraps  = path,
                                      scale = "blocks")
