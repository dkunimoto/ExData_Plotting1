plot1 <- function(powerdata){
    png(filename = "plot1.png")
    hist(powerdata$Global_active_power)
    dev.off()
}
