## Put comments here that give an overall description of what your 
## functions do ...
## We want the following pair of functions to create the inverse of a matrix
## and then cache this inverse matrix


## Write a short comment describing this function ...
##
## Creates a special "matrix" object that can cache its inverse.
## The object just saves it in cache ... does not calculate the inverse.
## We save the matrix to variable x and its inverse to variable m.
## We get objects with the methods:
## set -> sets matrix and resets cached inverse
## get -> returns matrix
## setMatrix -> saves solve value
## getMatrix -> returns cached inverse value

 

makeCacheMatrix <- function(x = matrix()) { 
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
 
        
 } 




## Write a short comment describing this function ...
##
## The following function will get the matrix we created with the previous function.
## If it cannot find the matrix, the function will create one in cache,
## using the solve function.
 

cacheSolve <- function(x=matrix(), ...) { 
 ## Return a matrix that is the inverse of 'x' 
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
} 
