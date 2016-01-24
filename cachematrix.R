## Two R functions completed as Assigment 2 for R Programming course

## a makeCacheMatrix object represents a matrix object that can store 
## a copy of its own inverse, and has functions for setting 
## and accessing the matrix and its inverse

## cacheSolve is a method for solving for the inverse of the matrix represented 
## by a makeCacheMatrix object



## makeCacheMatrix creates a "matrix" object that can cache its
## own inverse in order to save having to repeatedly compute it

makeCacheMatrix <- function(x = matrix()) {
    
    ## inv object stores the inverse of matrix represented by makeCacheMatrix
    inv <- NULL
    
    ## function for setting a makeCacheMatrix using a matrix
    set <- function(y){     
        x <<- y
        inv <<- NULL
    }
    
    ## function for accessing the matrix from a makeCacheMatrix
    get <- function(){      
        x
    }
    
    ## function for setting the inverse of a makeCacheMatrix using a matrix
    setinv <- function(y){  
        inv <<- y
    }
    
    ## function for accessing the matrix inverse from a makeCacheMatrix
    getinv <- function(){
        inv
    }
    
    list(set=set, get=get, setinv=setinv, getinv=getinv)
        
}


## cacheSolve takes a makeCacheMatrix "matrix" as a parameter
## and returns the inverse of that matrix
## if the inverse of the matrix has been previously calculated
##          then cacheSolve returns the cached version of its inverse
## otherwise cacheSolve computes the inverse using solve() function 

cacheSolve <- function(x, ...) {
    
    ## get the inverse of the makeCAcheMatrix object x
    inv <- x$getinv()
    
    ## if the inverse has previously been calculated then return the cached copy
    if(!is.null(inv)){
        message("using cached copy of inverse")
        return(inv)
    }
    
    ## if the inverse has not previously been calculated (i.e. inv is NULL
    ## then calculate and return the inverse using the solve() function
    message("calculating inverse")
    m <- x$get()            ## get matrix from makeCacheMAtrix object
    inv <- solve(m)         ## calulate the inverse matrix
    x$setinv(inv)           ## cache the inverse into the makeCacheMatrix object
    inv                     ## return the inverse
}
