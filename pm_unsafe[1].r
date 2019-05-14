# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1) # class: data.frame

# Contents of optional Zip port are in ./src/
# source("src/yourfile.R");
# load("src/yourData.rdata");

dataset1$PM_Unsafe <- dataset1$PM >= 25

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("dataset1");