test <- fread('./data/assignment1.txt',sep=';',header = TRUE,colClasses = c(character(),character(),rep(numeric(),7)),na.strings = '?')
test2<- subset(test,test$`	Date` %in% c('1/2/2007','2/2/2007'))
hist(test2$Global_active_power,main = "Global Active Power", xlab = "Global Active Power (kilowatts)",col = "RED")