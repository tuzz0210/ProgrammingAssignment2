## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv<-NULL
	set<-function(y){
		x<<-y
		inv<<-NULL
	}
	get<-function()x
	setinverse<-function(invv)inv<<-invv
	getinverse<-function()inv
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m<-x$getinverse()
	if(!is.null(m)){
		message("get cache data")
		return(m)
	}
	data<-x$get()
	m<-solve(data,...)
	x$setinverse(m)
	m
}
