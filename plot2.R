#Reading Data into R
hp <- read.csv("C:/Users/Makarand/Desktop/Coursera/hp.txt", header=TRUE, sep=";",nrows = 2075260)
#Obtaining the data related to 2 days i.e from 1/2/2007 to 2/2/2007
subSetData <- hp[hp$Date %in% c("1/2/2007","2/2/2007") ,]
#Changing the class of date
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
