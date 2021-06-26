# Acquire data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists("./data")){
    dir.create("./data")
    download.file(url, dest="./data/dataset.zip", mode="wb")
    unzip ("./data/dataset.zip", exdir="./data")
    file.remove("./data/dataset.zip")
}

# Read data in dataframe
filename <- "./data/household_power_consumption.txt"
df <- read.csv(filename, header=TRUE, sep=";", na.strings = "?")

# Format dataframe
# Take only from the dates 2007-02-01 and 2007-02-02
library(dplyr)
library(lubridate)
df$Time <- paste(df$Date, df$Time)
df$Time <- dmy_hms(df$Time)
df$Date <- dmy(df$Date)

start <- ymd("2007-02-01")
end <- ymd("2007-02-03")
eval <- df$Time >= start & df$Time < end
df_2 <- subset(df, eval)
df_2$Day <- wday(df_2$Date, label=TRUE, abbr = TRUE)
