## Put comments here that give an overall description of what your
## functions    do

## Write a short comment describing this function
#### Inverse Matrix Cache Storage ####
##The function creates a matrix that store the cache of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    iv <- NULL          #set the value of invert matrix
    set <- function(y){
        x <<- y
        iv <<- NULL
    }
    get <- function() x #get the value of the matrix
    setIn <- function(InvMatrix) iv <<-InvMatrix #set the value of the inverse
    getIn <- function() iv #get the value of the inverse
    list(set = set, get = get,
         setIn = setIn, getInv = getInv)
}


## Write a short comment describing this function

#### Computing the inverse of the matrix created above ####

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    iv <- x$getIn()
    if(!is.null(iv)){
        message("getting cached data")
        retun(m)
    }
    data <- x$get()
    iv <- solve(data) #here computing and set the inverse of the matrix
    x$setIn(iv)
    iv
}
