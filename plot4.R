###########################################
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

# 1
plot(f_data$data_time
     , f_data$Global_active_power
     , type="l"
     , xlab = ""
     , ylab="Global Active Power")


# 2
plot(f_data$data_time
     , f_data$Voltage
     , type = "l"
     , xlab = "datetime"
     , ylab = "Voltage")
# 3
plot(f_data$data_time
     , f_data$Sub_metering_1
     , type = "l"
     , xlab = ""
     , ylab = "Energy sub metering")
lines(f_data$data_time
      , f_data$Sub_metering_2
      , type = "l"
      , col = "red")
lines(f_data$data_time
      , f_data$Sub_metering_3
      , type = "l"
      , col = "blue")
legend("topright"
       , col=c("black", "red", "blue")
       , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       , lty=0)
# 4
plot(f_data$data_time
     , f_data$Global_reactive_power
     , type="l"
     , xlab="datetime"
     , ylab="Global_reactive_power")
dev.off()
###########################################