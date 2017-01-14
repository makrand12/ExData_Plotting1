#Reading Data into R
hp <- read.csv("C:/Users/Makarand/Desktop/Coursera/hp.txt", header=TRUE, sep=";",nrows = 2075260)
#Obtaining the data related to 2 days i.e from 1/2/2007 to 2/2/2007
subSetData <- hp[hp$Date %in% c("1/2/2007","2/2/2007") ,]

#Converting to numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)
#Creating plot1
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#Closing the file
dev.off()