## Plot4

# To change locale to English
Sys.setlocale("LC_ALL", "English")

setwd("C:/Users/luis/Documents/GitHub")

fd <- paste(getwd(), "/data/household_power_consumption.txt", sep = "") 


df <- read.table(fd, header=T, sep=";")

df <- subset(df, Date=="1/2/2007" | Date =="2/2/2007")

dt <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
s1 <- as.numeric(as.character(df$Sub_metering_1))
s2 <- as.numeric(as.character(df$Sub_metering_2))
s3 <- as.numeric(as.character(df$Sub_metering_3))


plot(dt , s1, 
     type = "l", 
     ylab = "Energy sub metering",
     xlab = "")
lines(dt, s2, type="l", col="red")
lines(dt, s3, type="l", col="blue")
legend("topright", col=c("black","red","blue"),
       c("Sub_metering_1","Sub_metering_2 ", "Sub_metering_3"),
       lty=c(1,1), lwd=c(1,1), cex= 0.7 )

dev.copy(png, file="plot4.png", height=480, width=480)

dev.off()




