## downloadData - loads data for "Exploratory Data Analysis" programming assignment 1
##
## Written by John Kinsella for Coursera class "R Programming"

## Function to download zip file containing data for assignment,
## and then uncompress the data contained in the zip file.
##
## NOTE: As I'm usually using a mac, this uses curl to download the https URL.
downloadData <- function() {
  file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  dest_file_name <- "exdata-data-household_power_consumption.zip"

  download.file( file_url, destfile = dest_file_name, method="curl")
  unzip(dest_file_name)
}