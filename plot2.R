plot2 <- function(powerdata){
    png(filename = "plot2.png")
    plot(powerdata$Time, powerdata$Global_active_power, type = "l")
    dev.off()
}
