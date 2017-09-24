#****************** Plot-4 ********************


#reading the text file and seprate each string so as to make it a column name
power <- read.table("./power.txt",header=TRUE, sep=";", na.strings = "?")
#reading only from 1/2/2007 to 2/2/2007
subpower<-subset(power,Date %in% c("1/2/2007","2/2/2007"))
png(file = "plot4.png",width = 480,height = 480)
# making 2 X 2 matrix plots
par(mfrow = c(2,2), mar = c(4,4,2,2), oma = c(4,0,4,0))
# calling plot() and lines() as required to create 4 plots
with(subpower,{
  plot(datetime,subpower$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
  plot(datetime,subpower$Voltage,type = "l", xlab = "datetime", ylab = "Voltage")
  plot(datetime,subpower$Sub_metering_1,type = "l", col = "Black", xlab = "",ylab = "Energy Sub Metering")
  lines(datetime,subpower$Sub_metering_2,type = "l", col = "Red")
  lines(datetime,subpower$Sub_metering_3,type = "l", col = "Blue")
  legend("topright", lty = 1, lwd = 2, col = c("Black","Red", "Blue"), legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
  plot(datetime,subpower$Global_reactive_power,type = "l", xlab = "datetime")
})
dev.off()