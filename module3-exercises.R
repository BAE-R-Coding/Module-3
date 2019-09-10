#author:Justine Neville
#Module 3 exercises
#last modified: 9/9/19

#exercise 1----
2 - 10
3 * 5
9 / 2
5 - 3 * 2
(5 - 3) * 2
4 ^ 2
8 / 2 ^ 2

#exercise 2 - woodrat biomass----
g<- 250 #biomass of inidividual woodrat
indivs <- 3
bmass <-  g * indivs
bmass <- bmass/1000 #biomass of all woodrats
print(bmass)
# exercise 3 -expressions and variables----
site1_g_carbon_m2_day <- 5
site2_g_carbon_m2_day <- 2.3
site1_area_m2 <- 200
site2_area_m2 <- 450
site1_npp_day <- site1_g_carbon_m2_day * site1_area_m2
site2_npp_day <- site2_g_carbon_m2_day * site2_area_m2
site1_npp_day
site2_npp_day
total_npp <- sum(site1_npp_day,site2_npp_day)
diff_npp <- abs(site1_npp_day-site2_npp_day)
ann_npp <- total_npp*365
#exercise 4 - bird banding----
number_of_birds <- c(28, 32, 1, 0, 10, 22, 30, 19, 145, 27, 
                     36, 25, 9, 38, 21, 12, 122, 87, 36, 3, 0, 5, 55, 62, 98, 32, 
                     900, 33, 14, 39, 56, 81, 29, 38, 1, 0, 143, 37, 98, 77, 92, 
                     83, 34, 98, 40, 45, 51, 17, 22, 37, 48, 38, 91, 73, 54, 46,
                     102, 273, 600, 10, 11)
no_sites <- length(number_of_birds)
site42_birds <- number_of_birds[42]
bird_total <- sum(number_of_birds)
bird_min <- min(number_of_birds)
bird_max <- max(number_of_birds)
bird_avg <- mean(number_of_birds)
last_site_birds <- number_of_birds[length(number_of_birds)]
#exercise 5- 
#exercise 5 - choice operators ----
w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"
colors <- c("green", "pink", "red")

#TRUE/FALSE statements

w>10
"green"%in%colors
x>y
2*x+0.2==y
dna1==dna2
dna1!=dna2
w>x & y>z
13.2<(x*w) & (x*w)<13.5
nchar(dna1)>5|z<w*x
#exercise 6 - shrub volume vectors----
#descriptive info on yew Taxus baccata
length <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9)
width <- c(1.3, 2.2, 1.5, 4.5, 3.1, NA, 1.8, 0.5, 2.0, 2.7)
height <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2)

#characteristics of 10 studied individuals
shrub_vol <- length*width*height
vol_total <- sum(shrub_vol,na.rm=TRUE)
shrub_2.5 <- height[which(length>2.5)]
shrub_5.0 <- height[which(height>5.0)]
shrub_first5 <- height[1:5]
vol_first3 <- shrub_vol[1:3]
vol_last5 <- shrub_vol[(length(shrub_vol)-4):length(shrub_vol)]  