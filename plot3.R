## plot3 - Plots Energy sub-metering from Electric power consumption dataset
##
## Written by John Kinsella for Coursera class "Exploratory Data Analysis"
##

DT <- read.table("household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F, na.strings="?")

feb_data <- DT[DT$Date == "1/2/2007" | DT$Date == "2/2/2007",]

feb_data$Time=strptime(paste(feb_data$Date, feb_data$Time), "%d/%m/%Y %H:%M:%S")

png(filename="plot3.png", width=480, height=480)
plot(feb_data$Time, feb_data$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
points(feb_data$Time, feb_data$Sub_metering_2, type="l", col="red")
points(feb_data$Time, feb_data$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

