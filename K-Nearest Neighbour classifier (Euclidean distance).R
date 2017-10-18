#importing the dataset
occupancy_data <- read.table("datatraining.txt", sep = ",")
nrow(occupancy_data)
ncol(occupancy_data)
dim(occupancy_data)
#Creating new data set
occupancy_data_f <- occupancy_data[,c(2,3,4,5,7)]
occupancy_data_f$euclidean_distance <- NA
#adding the query point 
tem <- 24.15
hum <- 27.2675
lit <- 429.5
co2 <- 715.00
#Calculating the euclidean distances from a query points to each of the point in the dataset 
length <- nrow(occupancy_data_f)
for(i in 1:length)
 {
  occupancy_data_f$euclidean_distance[i] = sqrt (
    (occupancy_data_f$Temperature[i]-tem)^2+
    (occupancy_data_f$Humidity[i]-hum)^2+
    (occupancy_data_f$Light[i]-lit)^2+  
    (occupancy_data_f$CO2[i]-co2)^2  
  )  
}
