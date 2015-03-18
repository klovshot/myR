source("~/Dropbox/klovshot/myR/createLocs.R")
library(jsonlite)
createLocs(c(69.333333,30),c(69.666666,31), 0.05)
coords <-NULL
for (i in 1:nrow(Locs)) {
        coords[i] <- paste(Locs[i,], collapse=",")
                
}
dots <- paste(coords, collapse ="|")
nchar(dots)

        gmaplink <- paste("http://maps.googleapis.com/maps/api/elevation/json?locations=",dots,"&sensor=false", sep ="")
        a <- fromJSON(gmaplink)$results
        cbind(z,a$elevation)
str(a)
a[[1]][[1]]$elevation
