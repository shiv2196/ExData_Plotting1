#****************** Plot-3 *******************


#reading the text file and seprate each string so as to make it a column name
power <- read.table("./power.txt",header=TRUE, sep=";", na.strings = "?")
#reading only from 1/2/2007 to 2/2/2007
subpower<-subset(power,Date %in% c("1/2/2007","2/2/2007"))
png(file = "plot3.png",width = 480,height = 480)
# will call plot() once and lines() twice with different colors
with(subpower,{
  plot(datetime,subpower$Sub_metering_1,type = "l", col = "Black", xlab = "",ylab = "Energy Sub Metering")
  lines(datetime,subpower$Sub_metering_2,type = "l", col = "Red")
  lines(datetime,subpower$Sub_metering_3,type = "l", col = "Blue")
})
#legend made on topright corner
legend("topright", lty = 1, lwd = 2, col = c("Black","Red", "Blue"), legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
dev.off()