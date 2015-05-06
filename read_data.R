# Read Data for dates from 2007-02-01 to 2007-02-02
# skip 66637 rows. 
# read 2880 rows

power_data  <- read.table("./household_power_consumption.txt", 
                          sep = ";",
                          header = F,
                          na.strings = "?",
                          skip = 66637,
                          nrows = 2880)
#Read and assign Column Names

power_data_names <- read.table("./household_power_consumption.txt", 
                               sep = ";",
                               header = T,
                               nrows = 1)

power_data_names <- names(power_data_names)
names(power_data) <- power_data_names

#Convert Date Format
power_data$Date_Time <- paste(power_data$Date,power_data$Time,sep = " ")

power_data$Date_Time <- strptime(x = power_data$Date_Time, 
                                 format = "%d/%m/%Y %H:%M:%S")

#power_data$Time <- strptime(x = power_data$Time, format = "%H:%M:%S")
power_data$Date <- strptime(x = power_data$Date, format = "%d/%m/%Y")

##---------------------------------------------------------------------------##