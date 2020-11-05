#Exercise 10 Problem 2
#Nolan Downey


library(ggplot2)
library(cowplot)


setwd("C:/Users/Nolan Downey/Desktop/JuniorSem1/BioComp/Exercise10")

data <- read.csv("data.txt", sep=",",header=TRUE)

dir_north <- data[data$region == "north",]
dir_south <-  data[data$region == "south",]
dir_east <- data[data$region == "east",]
dir_west <- data[data$region == "west",]

northVal <- numeric(length = nrow(dir_north))
southVal <- numeric(length = nrow(dir_south))
eastVal <- numeric(length = nrow(dir_east))
westVal <- numeric(length = nrow(dir_west))
                     

for (i in 1:nrow(dir_north)){
  northVal[i] = (dir_north$observations[i])
}

for (j in 1:nrow(dir_south)){
  southVal[j] = (dir_south$observations[j])
}

for (x in 1:nrow(dir_east)){
  eastVal[x] = (dir_east$observations[x])
}

for (z in 1:nrow(dir_west)) {
  westVal[z] = (dir_west$observations[z])
}

northMean <- mean(northVal)
southMean <- mean(southVal)
eastMean <- mean(eastVal)
westMean <- mean(westVal)

means <- c(northMean,southMean,eastMean,westMean)


bplot_data <- data.frame("r" = data$region, "means" = means)

barPlot <- ggplot(bplot_data, aes(x = r, y = means)) +
  stat_summary(geom = "bar")

scatPlot <- ggplot(data, aes(x = region, y = observations)) +
  geom_jitter()

plot_grid(barPlot, scatPlot)

"""
The difference in the bar and scatter plots is significant because the scatter
plot shows that the standard deviation amonst the regions vastly differs
Although the means may be very close to one another in value, the observations
for each region are very different.
"""