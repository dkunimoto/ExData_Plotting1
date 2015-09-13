plot2 <- function(powerdata){
    png(filename = "plot2.png")
    plot(powerdata$Global_active_power, powerdata$Time)
    dev.off()
}
