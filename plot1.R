##Plot1.R
##Kimtai Kiminy
##May 12 2017

#chacking the dataset
dataFile <- "./data/household_power_consumption.txt"

#reading the dataset
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)

#ploting the histogram to to the png files
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#closing and saving the png graphic
dev.off()
