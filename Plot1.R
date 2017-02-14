## Plot1

setwd("C:/Users/luis/Documents/GitHub/Exploratory-Data-Analysis")

fe <- paste(getwd(), "/data/household_power_consumption.txt", sep = "") 


df <- read.table(fe, header=T, sep=";")

df$Global_active_power <- as.numeric(as.character(df$Global_active_power))


# Subset the data
df <- subset(df, Date=="1/2/2007" | Date =="2/2/2007")

# NAs omit
df <- na.omit(df)



hist(df$Global_active_power, 
       col  = "red",
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       ylab = "Frequency")     

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
       
