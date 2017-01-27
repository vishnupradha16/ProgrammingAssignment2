## Writing functions to get inverse of mstrix

## creating the matrix

makeCacheMatrix <- function(x = matrix()) {
					m <- NULL
					set <- function(y) {
						x <<- y
						m <<- NULL
					}
					get <- function()x
					setinverse <- function(solve) m <<- solve
					getinverse <- function()m
					list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Solve for matrix inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
        	message("returning cached inverse")
        	return(m)
        }
        data <-x$get(
        m <- solve(data,...))
        x$setinverse(m)
        m
}
