## plot2 - Plots global active power from Electric power consumption dataset
##
## Written by John Kinsella for Coursera class "Exploratory Data Analysis"
##

DT <- read.table("household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F, na.strings="?")

feb_data <- DT[DT$Date == "1/2/2007" | DT$Date == "2/2/2007",]

feb_data$Time=strptime(paste(feb_data$Date, feb_data$Time), "%d/%m/%Y %H:%M:%S")

png(filename="plot2.png", width=480, height=480)
plot(feb_data$Time, feb_data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()

