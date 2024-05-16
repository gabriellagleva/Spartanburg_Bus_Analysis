library(tidyverse)

library(readxl)

parcelData <- read_excel("parcelArea.xlsx")

average <- mean(parcelData$areaParcel)

print(average)

analysis_DataFrame <- data.frame(radius = numeric(), area = numeric(), totalFit = numeric(), overlapArea = numeric())
for (i in 1:51){
  rowID = i
  radius = (i + 24)/100
  area = pi * radius^2
  totalFit = area / average
  distance = 0.2
  overlap = ((radius^2)*(acos((distance^2 + radius^2 + radius^2)/2*distance*radius))*2 - 0.5*sqrt((-distance + radius + radius)*(distance+radius+-radius)*(distance+-radius+radius)*(distance+radius+radius)))
  analysis_DataFrame[i, ] <- c(radius, area, totalFit, overlap)
}
  

 ggplot(data=analysis_DataFrame, aes(x=radius, y=overlapArea))+
  geom_line()+
  geom_point() +
  xlab("Radius of Circle (miles)") +
  ylab("Area of Overlap (square miles)") +
  theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text=element_text(size=12), axis.title=element_text(size=24))