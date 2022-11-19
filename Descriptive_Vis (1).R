#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")

airquality <- datasets::airquality
?airquality
View(airquality)

####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

######Columns
airquality[,c(1,2)]

df<-airquality[,-6]
df

airquality$Wind
airquality$Ozone

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 
summary(airquality$Ozone)

#####################
#scatter plot
plot(airquality$Wind) 
plot(airquality$Temp,airquality$Wind,type="p") #scatter plot, as temp increases wind decreases, p for points 
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')

# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out  #outliers

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple') 

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o") #par(parameter), mar(margin), las(label), bty(boundry)

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

sd(airquality$Ozone,na.rm = T)


##Home work
e_quakes<-datasets::quakes
?quakes
View(e_quakes)

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

######Columns
e_quakes[,c(1,2)]
df <- e_quakes[,-6]
df

e_quakes$stations
e_quakes$lat

###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$long) 

#####################
#scatter plot
plot(e_quakes$lat)
plot(e_quakes$long)
plot(e_quakes$depth)
plot(e_quakes$mag)
plot(e_quakes$stations)
plot(e_quakes$mag, e_quakes$depth, type="p") #scatter plot, as temp increases wind decreases, p for points 
plot(e_quakes)
# points and lines 
plot(e_quakes$lat, type= "l")# p: points, l: lines,b: both
plot(e_quakes$long, type= "l")
plot(e_quakes$lat, xlab = 'latitude of event', 
     ylab = 'No of Instances', main = 'latitude of event in figi',
     col = 'blue')

# Horizontal bar plot
barplot(e_quakes$lat, main = 'latitude of event',
        ylab = 'latitude levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$long)
hist(e_quakes$long, 
     main = 'earthquakes longitude',
     xlab = 'longitude.', col='blue')

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")
boxplot.stats(e_quakes$depth)$out  #outliers

boxplot(e_quakes$long,main="Boxplot")
boxplot.stats(e_quakes$long)$out  #outliers

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple') 

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o") #par(parameter), mar(margin), las(label), bty(boundry)

plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
barplot(e_quakes$lat, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(e_quakes$long)
boxplot(e_quakes$lat)
boxplot(e_quakes[,0:4], main='Multiple Box plots')

sd(airquality$Ozone,na.rm = T)

#var, sd, mean
var(e_quakes$lat)
sd(e_quakes$long)
mean(e_quakes$depth)

#skewness
skewness(e_quakes$long)

#kurtosis
kurtosis(e_quakes$mag)










