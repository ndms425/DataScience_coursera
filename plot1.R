###########################################
png("plot1.png", width=480, height=480)

hist(f_data$Global_active_power
     , xlab = "Global Active Power (kilowatts)"
     , ylab = "Frequency"
     , main = "Global Active Power"
     , col = "red")
dev.off()
###########################################