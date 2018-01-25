## Put comments here that give an overall description of what your
## functions do

## creating matrix object for storing inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set<-function(y){
    x<<-y
    invr<<-NULL
  }
  get<-function() x
  setInverse<-function(inverse) m<<-inverse
  getInverse<-function() {
      invr
  }
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## searching of inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInverse()
  if(!is.null(m)){
    message("getting cache")
    return(m)
  }
  data<-x$get()
  inv<-solve(data, ...)
  x$setInverse<-inv
  inv
}


#Testing
# > a<-matrix(c(rpois(16, 1:16)), 4, 4)
# > m=makeCacheMatrix(a)
# > m$get()
# [,1] [,2] [,3] [,4]
# [1,]    0    5   10   10
# [2,]    1    5   12   11
# [3,]    0    9    8   18
# [4,]    4    8    8   14
# > cacheSolve(m)
# [,1]          [,2]        [,3]          [,4]
# [1,] -0.48  3.333333e-01 -0.06666667  1.666667e-01
# [2,]  1.60 -1.333333e+00 -0.33333333  3.333333e-01
# [3,]  0.18  6.055762e-17 -0.10000000 -1.513940e-17
# [4,] -0.88  6.666667e-01  0.26666667 -1.666667e-01
