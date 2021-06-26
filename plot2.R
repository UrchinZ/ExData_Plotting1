source("./getting_and_cleaning_data.R")
# Plot a line plot
png(file="plot2.png", width=480, height=480)
plot(x=df_2$Time,
     y=df_2$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power (killowatts)", 
     )
dev.off()
