## plot1 - Histogram of Global Active Power from Electric power consumption dataset
##
## Written by John Kinsella for Coursera class "Exploratory Data Analysis"
##

library(data.table)
# I'm using sed to convert the ?s to NA - Mac R seems to have known issues.
DT <- fread("sed 's/?/NA/g' household_power_consumption.txt", sep=";", header = TRUE)

feb_data <- DT[DT$Date == "1/2/2007" | DT$Date == "2/2/2007",]

png(filename="plot1.png", width=480, height=480)
hist(feb_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
