

# Step 1. define the path ####
path_ovitraps <- "1.Datasets/11_guanajuato"
path_coordinates <- paste(path_ovitraps, "DescargaOvitrampasMesFco.txt", sep = "/")


# Step 2. run the function #### 
library(sf)
library(INLA)
rgeomex::extract_locality(cve_edo = "11",
                          locality = "León de Aldama")
# # Step 2. run the spde model villahermosa ####
leon_year <- deneggs::eggs_hotspots_week(cve_mpo = "020",
                                         cve_edo = "11",
                                         year = "2025",
                                         hist_dataset = FALSE,
                                         locality  = "Leon de Aldama",
                                         path_vect = path_ovitraps,
                                         path_coord = path_coordinates,
                                         integration_strategy = "eb",
                                         aproximation_method = "gaussian",
                                         fam_distribution = "zeroinflatednbinomial1",
                                         kvalue = 60,
                                         plot = TRUE,
                                         palette.viridis = "viridis",
                                         cell.size = 5000,
                                         alpha.value = .99)


# Step 3. Visualize the hotspots intensity #### 
deneggs::map_eggs_hotspots(betas = leon_year$betas,
                           locality = "Leon de Aldama",
                           cve_edo = "11",
                           palette = rcartocolor::carto_pal,
                           name = "SunsetDark",
                           static_map = TRUE)
