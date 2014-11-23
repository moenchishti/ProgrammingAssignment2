## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix function creates a "matrix",
## which creates list containing following function:
## i. sets the value of matrix
## ii. gets the value of matrix
## iii. sets inverse value of matrix
## iv. gets inverse value of matrix

makeCacheMatrix <- function(x = matrix()) {
	# holds the cached value or NULL if nothing is cached
	# initially nothing is cached so set it to NULL
	cache <- NULL
	# store a matrix
	setMatrix <- function(newValue) {
		x <<- newValue
		# since the matrix is assigned a new value, flush the cache
		cache <<- NULL
	}
	# returns the stored matrix
	getMatrix <- function() {
		x
	}
	# cache the given argument
	cacheReverse <- function(value) {
		cache <<- value
	}
	# get the cached value
	makeReverse <- function() {
		cache
	}
	# return a function list where every named element is a function
	list(setMatrix = setMatrix, getMatrix = getMatrix, cacheReverse = cacheReverse, makeReverse = makeReverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	# gets the stored cached value
	reverse <- y$makeReverse()
	# if the stored cached value exists then return it
	if(!is.null(reverse)) {
		message("fetching stored cached data")
		return(reverse)
	}
	# otherwise fetch the matrix, evaluate the inverse value and store it in the cache
	data <- y$getMatrix()
	reverse <- value(data)
	y$cacheReverse(reverse)
	# return the reverse value
	reverse
}
