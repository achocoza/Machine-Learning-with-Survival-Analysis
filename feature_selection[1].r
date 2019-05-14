# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1) # class: data.frame

dataset1$city <- 'Beijing'

dataset1$date <- as.POSIXct(paste(dataset1$year, sprintf("%02d", dataset1$month), sprintf("%02d", dataset1$day), sprintf("%02d", dataset1$hour)), format = "%Y%m%d%H")
dataset1$dateInt <- as.integer(dataset1$date)

dataset1$DEWP <- as.integer(dataset1$DEWP)
dataset1$HUMI <- as.numeric(dataset1$HUMI)
dataset1$PRES <- as.numeric(dataset1$PRES)
dataset1$TEMP <- as.numeric(dataset1$TEMP)
dataset1$Iws <- as.numeric(dataset1$Iws)
dataset1$precipitation <- as.numeric(dataset1$precipitation)
dataset1$PM <- as.integer(dataset1$PM)
dataset1$PM_Unsafe <- dataset1$PM >= 25

data.set$season <- factor(data.set$season, labels=c("Spring", "Summer", "Fall", "Winter"))
dataset1$city <- as.factor(dataset1$city)

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("dataset1");