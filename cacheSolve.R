cacheSolve <- function(x, ...) {

        inv <- x$getinverse()
    
    
    if(!is.null(inv)) {
        # Simply return the computed inverse		
        message("Getting cached matrix")
        return(inv)
    }
    
    data <- x$get()
    
    # Find the inverse
    inv <- solve(data, ...)
    
    # Cache this result in the object
    x$setinverse(inv)
    
    # Return this new result
    inv    
}
