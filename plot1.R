NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#sum emissions by year 
table<-aggregate(NEI$Emissions, by=list(Category=NEI$year), FUN=sum)

#and create a plot
png("plot1.png", height=480, width=480)

plot(table$Category, table$x,pch=19,
     ylab = 'Emissions',
     xlab = 'Year')

dev.off()
