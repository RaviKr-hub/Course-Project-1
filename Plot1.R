data<-read.table(file.choose(),header=T,sep=";", stringsAsFactors=FALSE, dec=".")
dim(data)
summary(data)
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(subsetdata$Global_active_power)
globalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
