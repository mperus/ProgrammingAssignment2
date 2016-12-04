## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        INV <- NULL
        set<-function(y){
                x<<-y
                INV<<-NULL
        }
        
        get<-function() x
        setinverse<-function(inverse) INV<<-inverse
        getinverse<-function() INV
        
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        INV<-x$getinverse()
        if(!is.null(INV)){
                message("getting cached data")
                
        }
        
        data<-x$get()
        INV<-inverse(data, ...)
        x$setinverse(INV)
        INV
        ## Return a matrix that is the inverse of 'x'
}
