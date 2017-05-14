##Plot2.R
##Kimtai Kiminy
##May 14, 2017

#Checking the dataset
dataFile <- "./data/household_power_consumption.txt"

#Reading the dataset
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

##numric setting
globalActivePower <- as.numeric(subSetData$Global_active_power)

#ploting the png graphic
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#closing and saving the png graphic
dev.off()
