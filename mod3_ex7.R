#script author:Justine Neville
#purpose: practice using data frames in R
#exercise 7, module3
#last modified: 09/10/19

library(tidyverse)
shrub_dims <- read_csv("data/shrub-dimensions-labeled.csv")
view(shrub_dims)
shrub_vol <- shrub_dims$length*shrub_dims$width*shrub_dims$height
shrub_height <- shrub_dims[ ,c("shrubID","height")]
shrub_row2 <- shrub_dims[2, ]
shrub_first5 <- head(shrub_dims,5)