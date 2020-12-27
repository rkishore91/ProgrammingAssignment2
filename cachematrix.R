##>getwd()
##[1] "C:/Users/a605294/Documents"
##> setwd("C:/Users/a605294/OneDrive/Courses/R - Coursera/Week 3")



makeCacheMatrix <- function(x = matrix()) {
    
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inverse <<- inverse
    getinverse <- function() inverse
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}



cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("cached matrix")
        return(inverse)
    }
    data <-x$get()
    inverse <- solve(data)
    x$setinverse(inverse)
    inverse
}

##mat <- matrix(rnorm(9,0), 3,3)
##mat
##matc <- makeCacheMatrix(x)
##matc$get()
##matc$getinverse()

##cacheSolve(matc)
