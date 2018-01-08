
## Plot 2
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
plot(data$Global_active_power~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
