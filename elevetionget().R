x <- c(30,30.5,31)
y <- c(69.333333,69.5,69.666666)
z <- c(NA,NA,NA)
for(i in 1:3){
        gmap <- c("http://maps.googleapis.com/maps/api/elevation/json?locations=",y[i],",",x[i],"&sensor=false")
        coordlink <- paste(gmap[1],gmap[2],gmap[3],gmap[4],gmap[5], sep='')
        con <- url(coordlink)
        z[i] <- data.frame(readLines(con))
}
z
z[1]
a <- fromJSON(file = coordlink)
str(a)
a[[1]][[1]]$elevation
