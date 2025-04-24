
# Paso 1. definir la ruta de la carpeta ####
path_vect <- "1.Datasets/11_guanajuato"

path_coord <- paste(path_vect, "DescargaOvitrampasMesFco.txt", sep = "/")

# Paso 2. mapear la abundancia de huevos ####
deneggs::eggs_risk(path_vect = path_vect,
                   path_coord = path_coord,
                   weeks = 11,
                   locality = "León De Los Aldama",
                   risk = FALSE)
