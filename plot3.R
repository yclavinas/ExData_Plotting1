# create plot and save as png 480x480
## names should be plot1.png, plot2.png,...

data <- as.data.frame(source("load_data.R"))

# pre-processing data
Sub_metering_1 <- as.numeric(as.character(data$value.Sub_metering_1))
Sub_metering_2 <- as.numeric(as.character(data$value.Sub_metering_2))
Sub_metering_3 <- as.numeric(as.character(data$value.Sub_metering_3))

### plot3
png('plot3.png', 480, 480)

plot(Sub_metering_1,
     col = 'black', 
     type = 'l',
     xaxt = 'n',
     ylab = 'Energy sub metering',
     xlab = ''
)
lines(Sub_metering_2, col = 'red', type = 'l')
lines(Sub_metering_3, col = 'blue', type = 'l')
axis(1, at=c(0,1500,length(x_data)), labels=c('Thu', 'Fri','Sat'))
legend('topright',
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red", "blue"),
       lty=1,
       cex=0.45
)
dev.off()
