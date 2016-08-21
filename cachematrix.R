## Put comments here that give an overall description of what your


## Write a short comment describing this function
 ## The function creating a  matrix object.
makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        b <- function(y) {
                x <<- y
                a <<- NULL
        }
        c <- function() x
        setInverse <- function(inverse) a <<- inverse
        getInverse <- function() a
        list(b = b,
             c = c,
             setInverse = setInverse,
             getInverse = getInverse)
}             
## Write a short comment describing this function
## the function wll use the cache to invers the matrix 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' inv <- x$getInverse()
        if (!is.null(a)) {
                message("getting cached data")
                return(a)
        }
        mat <- x$c()
        a <- solve(mat, ...)
        x$setInverse(a)
        a
}
}
