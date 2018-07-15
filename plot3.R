###########################################
png("plot3.png", width=480, height=480)
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
       , lty=1)
dev.off()
###########################################