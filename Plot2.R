#****************** Plot-2 *******************


#reading the text file and seprate each string so as to make it a column name
power <- read.table("./power.txt",header=TRUE, sep=";", na.strings = "?")
#reading only from 1/2/2007 to 2/2/2007
subpower<-subset(power,Date %in% c("1/2/2007","2/2/2007"))
png(file = "plot2.png",width = 480,height = 480)
#to plot this I will need the hourly plotting of each day therefore I will concatenate date and time with paste()
datetime <- paste(subpower$Date, subpower$Time)
#after concatenating in character, I will divide it in date format so as to read it and plot
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
plot(datetime,subpower$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
dev.off()