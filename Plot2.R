## Plot2

# To change locale to English
Sys.setlocale("LC_ALL", "English")

setwd("C:/Users/luis/Documents/GitHub")

fd <- paste(getwd(), "/data/household_power_consumption.txt", sep = "") 


df <- read.table(fd, header=T, sep=";")

# Subset the data
df <- subset(df, Date=="1/2/2007" | Date =="2/2/2007")


gp <- as.numeric(as.character(df$Global_active_power))

dt <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(dt, gp, type="l", xlab="", ylab="Global Active Power (kilowatts)")

png("plot2.png", width=480, height=480)

dev.off()




