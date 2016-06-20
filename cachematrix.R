## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

## We are now inside the function 

## Define some functions

## set the matrix, get the matrix, set the inverse, get the inverse

 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
		setinverse <- function(solve) m <<- solve
		## in case any error is thrown trace back
		print("Dont worry, just a traceback output!!! if you see ERROR, then time for correction")
		traceback()
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		    m <- x$getinverse()
        if(!is.null(m)) {
                print("getting cached data!!!")
                return(m)
        }
		## In case we do not get any inverse of the matrix, we are calling the get function get itself
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
		print("did you get something???")
        m
}
