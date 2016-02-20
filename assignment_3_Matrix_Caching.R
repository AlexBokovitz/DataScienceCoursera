## These functions will take a matrix vaiable, find the
## inverse, and then cache it.  If called again it will evalute the new
## matrix and either return the cached inverse or recalc the inverse, cache
## it, and then return the inverse.

## This function will cache the original matrix for comparison and it's inverse

makeCacheMatrix <- function(x = matrix()) {
     inverse_matrix <<- solve(x)
}


## this function will check to see if the inverse has already been cached
## or have it cahced and then returned to the user

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     if(!exists('original_matrix')) {
          message('Create inverse cache')
          original_matrix <<- x
          makeCacheMatrix(x)
     }else if(!identical(x,original_matrix)) {
          message('Recalced inverse cache')
          original_matrix <<- x
          makeCacheMatrix(x)
     }else {
          message('Reused cached inverse')
     }
     
     inverse_matrix
}