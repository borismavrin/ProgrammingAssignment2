## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<-function(y){
    x<<-y
    m<-NULL
  }
  get<-function() x
  setInvMatrix<-function(invMatrix) m<<-invMatrix
  getInvMatrix<-function() m
  list(set=set, get=get, setInvMatrix, getInvMatrix=getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInvMatrix()
  if(!is.null(m)){
    message("getting cache")
    return(m)
  }
  data<-x$get()
  
  library("matlib")
  
  invMatrix<-inv(x)
}
