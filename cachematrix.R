## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  newm <- NULL
  set <- function(y) {
    x <<- y
    newm <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) newm <<- inverse
  getinv <- function() newm
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
#test

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  newm <- x$getinv
  if (!is.null(newm)) {
    message("getting cached data")
    return(newm)
  }
  data <- x$get()
  newm <- solve(data, ...)
  x$setinverse(newm)
  newm
}
