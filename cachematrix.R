## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
cache <- NULL
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  getMatrix <- function() { ## get a  matrix
    x
  }
  
  cacheInverse <- function(solve) { ## get tha value of the cache
    cache <<- solve
  }
  getInverse <- function() { ## inverse this stuff
    cache
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse) ##Each named element is a function
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inverse <- y$getInverse() ## get the value
  if(!is.null(inverse)) { 
    message("getting cached data")
    return(inverse)
  }
  data <- y$getMatrix() ## get the matrix
  inverse <- solve(data)
  y$cacheInverse(inverse) ## invers data
  inverse ## return the answer
}
