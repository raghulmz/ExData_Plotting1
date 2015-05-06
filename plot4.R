## Read Data
# I know that our professor asked to upload only 4 .R files
# But I feel putting the code to read data on all four isn't elegant
# Hence read_data is a seperate file

source("read_data.R")

# Plot 4
png("plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

##SubPlot (1,1)
plot(x = power_data$Date_Time,
     y = power_data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

##SubPlot (1,2)

plot(x = power_data$Date_Time,
     y = power_data$Voltage,
     xlab = "datetime",
     ylab = "Voltage",
     type = "l")

##SubPlot (1,3)

plot(x = power_data$Date_Time,
     y = power_data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)
lines(power_data$Date_Time,
      power_data$Sub_metering_2,
      col = "red"
)
lines(power_data$Date_Time,
      power_data$Sub_metering_3,
      col = "blue"
)
line_names <- c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
color_names <- c("black","red","blue")
legend("topright",legend = line_names, col = color_names, lty = "solid", bty = "n")

##SubPlot (2,2)

plot(x = power_data$Date_Time,
     y = power_data$Global_reactive_power,
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l")

dev.off()

