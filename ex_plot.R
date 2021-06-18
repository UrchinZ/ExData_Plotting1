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
df <- read.csv(filename, header=TRUE, sep=";")