##Header Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3
##Line 16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000

## Read File
d <- read.table("household_power_consumption.txt", header=TRUE, sep=";", 
     na.strings = "?", colClasses = c('character','character','numeric','numeric',
     'numeric','numeric','numeric','numeric','numeric'))


##print(d$Date)
##print(d)
##head(dateTime)
##dim(d) ##2880

## Format date type MM/DD/YYY HHSS to YYYY-MM-DD
d$Date <- as.Date(d$Date, "%d/%m/%Y")

## Filter data
d <- subset(d, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove missing observations
d <- d[complete.cases(d),]

## Combine Date and Time column
dateTime <- paste(d$Date, d$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")

## Remove Date and Time column
d <- d[ ,!(names(d) %in% c("Date","Time"))]

## Add DateTime column
d <- cbind(dateTime, d)

## Format dateTime Column
d$dateTime <- as.POSIXct(dateTime)

## PLOT 2
plot(d$Global_active_power~d$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
