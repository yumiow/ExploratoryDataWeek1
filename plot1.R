# read data
data <- read.csv(file = "c:\\Users\\weyu\\Downloads\\household_power_consumption.txt",header=TRUE, 
              sep=";", na.strings = "?" )
# data cleaning, formatting

data$Date <- as.Date(as.character(data$Date),format = "%d/%m/%Y")
data$Time <- as.character(data$Time)
## subset data set
data <- subset(data,Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

## Plot 1
hist(data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
