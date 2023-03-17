# 1. Load the data:
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "power_consumption.zip")
unzip("power_consumption.zip")
file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?") 

# 2. Convert Date and Time to appropriate data types
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# 3. Create each plot using base plotting system
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()