###########################################
setwd("C:/Users/Administrator/Documents/coursera/Exploratory Data Analysis/Week 1")
getwd


data <- read.table("household_power_consumption.txt"
                   , sep = ";" , na = "?", header = T)

head(data)

from_date <- as.Date("2007-02-01", "%Y-%m-%d")
to_date <- as.Date("2007-02-02", "%Y-%m-%d")
in_date <- c(from_date, to_date)

f_data <- subset(data, as.Date(data$Date, "%d/%m/%Y") %in% as.Date(in_date, "%Y-%m-%d"))

data_time <- strptime(paste(f_data$Date, f_data$Time), "%d/%m/%Y %H:%M:%S")
f_data <- cbind(f_data, data_time)

head(f_data)