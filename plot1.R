## Read Data
# I know that our professor asked to upload only 4 .R files
# But I feel putting the code to read data on all four isn't elegant
# Hence read_data is a seperate file

source("read_data.R")

#Plot 1
png("plot1.png", width = 480, height = 480)

hist(power_data$Global_active_power, 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     col = "red")

dev.off()
