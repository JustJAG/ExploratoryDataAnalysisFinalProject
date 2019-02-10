NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#choose only Baltimore City
table21<-subset(NEI, fips=="24510")

#and create a plot
png("plot3.png", height=480, width=480)

ggplot(table21, aes(factor(year),Emissions,)) + geom_point() + facet_grid(~ type) +labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) 

dev.off()
