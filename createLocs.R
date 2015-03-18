createLocs <- function (x, y, res) {
        i <- trunc((y[1] - x[1])/res)+1
        j <- trunc((y[2] - x[2])/res)+1
        k <- i*j
        z <- matrix(nrow = k, ncol = 2)
        q <-0
        for (n in 1:i) {
                for (m in 0:(j-1)) { 
                        q <- q+1
                        z[q,2] <- x[2] + m*res
                        z[q,1] <- x[1]
                }
                x[1] <- x[1] + res
        }
        Locs <<- z
}

                

