#install.packages("lidR")
library("lidR")
library(raster)
library(rgdal)
#install.packages("gstat")
library(gstat)

setwd("~/Desktop/Lab4Data/Lab4_Data/USGS_LPC_MA_Sndy_CMPG_2013_19TCG255905_LAS_2015/")
las <- readLAS("USGS_LPC_MA_Sndy_CMPG_2013_19TCG255905_LAS_2015.las")
plot(las)

dtm2 <-  grid_terrain(las, algorithm = tin())
plot(dtm2)
raster::plot(dtm2, col = height.colors(50)) #just different colors
las2 <- lasnormalize(las, dtm2) #don't know if this does anything