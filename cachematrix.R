## functions that cache the inverse of a matrix

## The function below creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function(y) {
    x <- y
    invrs <- NULL
  }
  get <- function() x ## function that gets the value of the matrix
   setinverse <- function(inverse) invrs <- inverse ## function that sets the value of the matrix
      getinverse <- function() invrs
        list(set = set, get = get,
           setinverse = setinverse,
              getinverse = getinverse)
}




## The function below computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
   invrs <= x$getinverse()## function that gets the inverse value
    if(!is.null(invrs)) {
      message("getting cached data")
        return(invrs)
  }
  mat <- x$get()
    invrs <- solve(mat, ...)
      x$setinverse(invrs) ## function that sets the inverse value
        invrs
        ## Return a matrix that is the inverse of 'x'
}
