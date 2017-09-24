#************* Assignment-1 : Read the text file from coursera page and Reconstruct plots ****************


#****************** Plot-1 *******************

#reading the text file and seprate each string so as to make it a column name
power <- read.table("./power.txt",header=TRUE, sep=";", na.strings = "?")
#reading only from 1/2/2007 to 2/2/2007
subpower<-subset(power,Date %in% c("1/2/2007","2/2/2007"))
#plotting a histogram on a file devile = png
png(file = "plot1.png",width = 480,height = 480)
hist(subpower$Global_active_power,col="red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()