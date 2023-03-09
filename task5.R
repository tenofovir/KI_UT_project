#What is the average and median CO2 uptake of the plants from Quebec and Mississippi?
co2_q <- subset(CO2, Type == "Quebec")
co2_m <- subset(CO2, Type == "Mississippi")
mean(co2_m$uptake)
#[1] 20.88333 for Mississippi
mean(co2_q$uptake)
#[1] 33.54286 for Quebec
median(co2_m$uptake)
#[1] 19.3 for Mississippi
median(co2_q$uptake)
#[1] 37.15 for Quebec