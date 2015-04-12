## plot4 - Creates 4 plots from Electric power consumption dataset
##
## Written by John Kinsella for Coursera class "Exploratory Data Analysis"
##

DT <- read.table("household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F, na.strings="?")

feb_data <- DT[DT$Date == "1/2/2007" | DT$Date == "2/2/2007",]

feb_data$Time=strptime(paste(feb_data$Date, feb_data$Time), "%d/%m/%Y %H:%M:%S")

png(filename="plot4.png", width=480, height=480)
par(mfcol=c(2,2))

with(feb_data, {
  # Global Active Power plot
  plot(Time, Global_active_power, ylab="Global Active Power", xlab="", type="l")

  # Energy Sub-metering plot
  plot(Time, Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
  points(Time, Sub_metering_2, type="l", col="red")
  points(Time, Sub_metering_3, type="l", col="blue")
  legend("topright", lty=1, bty="n", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

  # Voltage plot
  plot(Time, Voltage, ylab="Voltage", xlab="datetime", type="l")

  # Global reactive power plot
  plot(Time, Global_reactive_power, xlab="datetime", type="l")
})
dev.off()
