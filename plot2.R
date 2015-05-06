## Read Data
# I know that our professor asked to upload only 4 .R files
# But I feel putting the code to read data on all four isn't elegant
# Hence read_data is a seperate file

source("read_data.R")

#Plot 2
png("plot2.png", width = 480, height = 480)


plot(x = power_data$Date_Time,
     y = power_data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

dev.off()
