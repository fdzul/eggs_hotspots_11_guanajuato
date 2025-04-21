# Step 1. define the path ####
path_ovitraps <- "1.Datasets/11_guanajuato"
path_coordinates <- paste(path_ovitraps, "DescargaOvitrampasMesFco.txt", sep = "/")

# Step 2. run the function #### 
library(sf)
library(INLA)
leon15 <- deneggs::eggs_hotspots(path_lect = path_ovitraps,
                                path_coord = path_coordinates,
                                cve_ent = "11",
                                locality  = "León de Aldama",
                                longitude  = "Pocision_X",
                                latitude =  "Pocision_Y",
                                aproximation = "gaussian",
                                integration = "eb",
                                fam = "zeroinflatednbinomial1",
                                k = 60,
                                palette_vir  = "magma",
                                leg_title = "Huevos",
                                plot = TRUE,
                                hist_dataset = FALSE,
                                sem = 15,
                                var = "eggs",
                                cell_size = 10000,
                                alpha = .99)
leon15$map





