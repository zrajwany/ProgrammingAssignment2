## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix object that can store its inverse

makeCacheMatrix <- function(x = matrix()) {
  newm <- NULL
  set <- function(y) {
    x <<- y
    newm <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) newm <<- inverse
  getinv <- function() newm
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)
}


## Computes the inverse of the matrix in the above function.  If it has already been calculated, it returns the stored inverse
#test

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  newm <- x$getinv()
  if (!is.null(newm)) {
    message("getting cached data")
    return(newm)
  }
  data <- x$get()
  newm <- solve(data, ...)
  x$setinv(newm)
  newm
}

