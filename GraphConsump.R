GraphConsump <- function(){
}    

readConsump <- function(textfile){
    # read data in
    powerdata <- read.csv2(textfile, header = TRUE)
}

cleanConsump <- function(powerdata){
    # clean data - dates = dates, numbers = nums, etc
    powerdata$Date <- as.Date(as.character(powerdata$Date), format = "%d/%m/%Y")
    powerdata$Time <- as.character(powerdata$Time)
    powerdata$Time <- strptime(powerdata$Time,  format = "%H/%M/%S")
    powerdata$Global_active_power <- as.numeric(levels(powerdata$Global_active_power))[powerdata$Global_active_power] 
    powerdata$Global_reactive_power <- as.numeric(levels(powerdata$Global_reactive_power))[powerdata$Global_reactive_power]
    powerdata$Voltage <- as.numeric(levels(powerdata$Voltage))[powerdata$Voltage]
    powerdata$Global_intensity <- as.numeric(levels(powerdata$Global_intensity))[powerdata$Global_intensity]
    powerdata$Sub_metering_1 <- as.numeric(levels(powerdata$Sub_metering_1))[powerdata$Sub_metering_1]
    powerdata$Sub_metering_2 <- as.numeric(levels(powerdata$Sub_metering_2))[powerdata$Sub_metering_2]
    powerdata$Sub_metering_3 <- as.numeric(levels(powerdata$Sub_metering_3))[powerdata$Sub_metering_3]
    powerdata
}

subsetdata <- function(powerdata){
    keydata <- powerdata[powerdata$Date == "2007-02-01" | powerdata$Date == "2007-02-02", ]
}

}

# create the graphs from the data
