# load the giant data - Electric power consumption

data <- read.csv2(file = 'household_power_consumption.txt', header = TRUE)

# date format dd/mm/yyyy, converting with as.Date to more useful class
## after this date will be yyyy/mm/dd
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# subsetting the data 
days <- subset(data, Date >= as.Date('2007-02-01') & Date <= as.Date('2007-02-02'))
