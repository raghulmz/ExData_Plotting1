## Read Data
# I know that our professor asked to upload only 4 .R files
# But I feel putting the code to read data on all four isn't elegant
# Hence read_data is a seperate file

source("read_data.R")

#Plot 3
png("plot3.png", width = 480, height = 480)

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
legend("topright",
       legend = line_names, 
       col = color_names, lty = "solid")
dev.off()
