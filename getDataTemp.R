#Download and load data for Reproducible Research Class Project #2
#Storm Data 

#setwd("C://Users//akeller.HARDEN//Documents//GitHub//RepData_PeerAssessment1")

internetSource <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
filename = "StormData.csv.bz2"
fullfilename <- file.path(getwd(), filename)

if (file.exists(fullfilename)){
  print("storm file already exists locally")
}else{
  print("file not found locally, so dowload from website")
  download.file(internetSource 
                , destfile=filename)
}

if(exists("stormdata")){
  print("stormdata already loaded into R")
}else{
  print("load stormdata")
  stormdata <- read.csv(filename, header = TRUE)
}
