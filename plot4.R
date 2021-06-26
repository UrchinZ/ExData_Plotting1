source("./getting_and_cleaning_data.R")
png(file="plot4.png", width=480, height=480)
# Multiple Base Plots
par(mfrow=c(2,2))
with(df_2, {
    plot(x=df_2$Time,
         y=df_2$Global_active_power, 
         type="l",
         xlab="",
         ylab="Global Active Power (killowatts)", 
    )
    plot(x=df_2$Time,
         y=df_2$Voltage, 
         type="l",
         xlab="datetime",
         ylab="Voltage", 
         col="black"
    )
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
           col=c("black","red", "blue"), lty = 1,bty="n")
    
    plot(x=df_2$Time,
         y=df_2$Global_reactive_power, 
         type="l",
         xlab="datetime",
         ylab="Global Reactive Power", 
         col="black"
    )
})
dev.off()
