NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#choose only Baltimore City
table21<-subset(NEI, fips=="24510")

#sum emissions by year 
table22<-aggregate(table21$Emissions, by=list(Category=table21$year), FUN=sum)

#and create a plot
png("plot2.png", height=480, width=480)

plot(table22$Category, table22$x,pch=19,
     ylab = 'Emissions',
     xlab = 'Year')

dev.off()
