#Ex 10 Problem 1
#Nolan Downey

library(ggplot2)

setwd("C:/Users/Nolan Downey/Desktop/JuniorSem1/BioComp/Exercise10")

covid <- read.csv("total_cases.csv", header = TRUE)

ggplot(data = covid, 
       aes(x = Day, y = WorldCovidTotalCases)) +
         geom_point(color = "blue", shape = 21, size = 3) +
          geom_smooth(method = "lm") +
            geom_jitter()

