## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##--------------------------------------------##
##        Set the value of the matrix         ##
##--------------------------------------------##
  
      m <- NULL       ## Initialize object m  ##
##                       with NULL values     ##
      set <- function(y) {
      x <<- y
      m <<- NULL}
## -------------------------------------------##
##    END OF FUNCTION WITHIN makCacheMatrix   ##
## -------------------------------------------##
##        Get the value of the matrix         ##
## -------------------------------------------## 
      
      get <- function() x
      
##--------------------------------------------##      
##        Set the value of solve              ##
##--------------------------------------------##     
      
      setsolve <- function(solve) m <<- solve()
      
##--------------------------------------------##  
##       Get the value of the solve           ##
##--------------------------------------------##
      
      getsolve <- function() m
    
}
##--------------------------------------------##
##      END OF makeCacheMatrix Function       ##
##--------------------------------------------##

##--------------------------------------------##
## The object of this function is to return   ##
## the inverse of a matrix.  It executes a    ##
## function (solve) located in the cache.     ##
##--------------------------------------------##
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- (data)
    x$setsolve(m)
    m
}

