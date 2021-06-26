source("./getting_and_cleaning_data.R")
# Plot a line plot
png(file="plot3.png", width=480, height=480)
plot(x=df_2$Time,
     y=df_2$Sub_metering_1, 
     type="l",
     xlab="",
     ylab="Global Active Power (killowatts)", 
     col="black"
)
lines(x=df_2$Time,
     y=df_2$Sub_metering_2, 
     type="l",
     col="red"
)
lines(x=df_2$Time,
     y=df_2$Sub_metering_3, 
     type="l",
     col="blue"
)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red", "blue"), lty = 1, cex=0.8)
dev.off()
