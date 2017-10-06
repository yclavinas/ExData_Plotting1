# create plot and save as png 480x480
## names should be plot1.png, plot2.png,...

data <- as.data.frame(source("load_data.R"))

# pre-processing data
Global_active_power <- as.numeric(as.character(data$value.Global_active_power))


# create plot and save as png 480x480
## names should be plot1.png, plot2.png,...
### plot1
png('plot1.png', 480, 480)
hist(Global_active_power, col = 'red', 
     main = 'Global Active Power',
     xlab = 'Global_active_power (kilowatts)')

dev.off()
