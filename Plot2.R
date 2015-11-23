# the data is assumed to have been imported already
# Else run the plot1 file to import the data

 # Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008?  
 # Use the base plotting system to make a plot answering this question. 
 

 subsetNEI  <- NEI[NEI$fips=="24510", ] 
 aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEI, sum) 
 

 png('plot2.png') 
 barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in Baltimore, MD emissions at years')) 
 dev.off() 
