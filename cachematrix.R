## Put comments here that give an overall description of what your
## functions do

#The following pair of functions demonstrates how to cache the inverse of a matrix.


## Write a short comment describing this function

## Function Code to create a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

inv_x <- NULL

#setter and getters for matrix and its inverse 
    set <- function(y){
        x <<- y
        inv_x <<- NULL
    }
    get <- function(){
        x
    }
    setInv <- function(inv){
        inv_x <<- inv
    }
    getInv <- function(){
        inv_x
    }
    list(set=set,get=get,setInv=setInv,getInv=getInv)
 }

## Write a short comment describing this function
# Returns inverse of the matrix if cached else computes it and returns

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv_x <- x$getInv()
        if(!is.null(inv_x)){
            #returning cached Inverse"
            return (inv_x)
        }
        mat <- x$get()
        inv_x <-solve(mat)
        x$setInv(inv_x)
        inv_x
}
