test <- fread('./data/assignment1.txt',sep=';',header = TRUE,colClasses = c(character(),character(),rep(numeric(),7)),na.strings = '?')
test2<- subset(test,test$`	Date` %in% c('1/2/2007','2/2/2007'))
plot(strptime(paste(test2$`	Date`,test2$Time),'%d/%m/%Y %H:%M:%S'),test2$Global_active_power,type='l',ylab = 'Global Active Power (kilowatts)',xlab = '')