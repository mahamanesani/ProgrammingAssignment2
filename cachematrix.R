# Below are two functions that can be used to cache an inverse of an inversible sqaure matrix. The function create the matrix's cache and 
# the second one compute the inverse and cache it.
# This function create a cache of a given matrix x and sets defines its properties (get, set)

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
  minv<-NULL
  set<-function(y){
    x<<-y
    minv<<-NULL
  }
  get<-function() x 
  setinv<-function(inv) minv<<-inv
  getinv<-function() minv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  minv<-x$getinv()
  # We check if the minv is not null and if the x hasn't changed
  if(!is.null(minv) & identical(x,x$get)){
    message("Getting cached data")
    return(m)
  }
  data<-x$get()
  minv<-solve(data)
  x$setinv(minv)
  minv
  
}

}
