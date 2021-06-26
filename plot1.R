source("./getting_and_cleaning_data.R")
# Plot a histogram
png(file="plot1.png", width=480, height=480)
hist(df_2$Global_active_power, 
     main="Global Active Power",
     xlab="Global Active Power (killowatts)", 
     ylab="Frequency",
     col="red")
dev.off()
