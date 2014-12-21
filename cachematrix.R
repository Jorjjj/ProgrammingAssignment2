## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  get <- function() x
  setImatrix <- function(Imatrix) m <<- Imatrix
  getImatrix <- function() m
  
  list(get=get, setImatrix=setImatrix, getImatrix=getImatrix)
}

cacheSolve <- function(x) {
  m <- x$getImatrix()
  if(!is.null(m)){
    message("Cached data found. Getting result... Done.")
    return(m)
  }
  else {
    message("No cached data found. Calculating inverse matrix...")
    data <- x$get() 
    m <- solve(data)
    x$setImatrix(m) 
    message("Done.")
    return(m)
  }