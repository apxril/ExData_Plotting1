# extracting the file

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./power.zip")
unzip("./power.zip")

# reading the file

dataset <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(dataset) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date =="2/2/2007")
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")

# saving the image

> png("plot1.png", width=480, height=480)
> dev.off()