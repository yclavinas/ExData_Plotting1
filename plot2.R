# create plot and save as png 480x480
## names should be plot1.png, plot2.png,...

data <- as.data.frame(source("load_data.R"))

# pre-processing data
Global_active_power <- as.numeric(as.character(data$value.Global_active_power))

### plot2
png('plot2.png', 480, 480)
plot(Global_active_power,
     type = 'l',
     xaxt = 'n',
     ylab = 'Global Active Power (Killowatts)',
     xlab = ''
)
axis(1, at=c(0,1500,length(x_data)), labels=c('Thu', 'Fri','Sat'))
dev.off()
