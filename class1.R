# creating variables
y <- 10^2
a <- "predictive analysis"
z <- 10.26
print(z)
# vectors
myvector <- c(1,2,3,4,5)
print(myvector)
print(myvector[4])
myOtherVec <- seq(from=3, to=27,by=3)
myOtherNewVec <- rep(x=2, times=10)
myRealNew <- seq(from=-11, to=5, by=0.3)

myReall <- c(7,3,-1,-5,-9)
myReallN <- rep(myReall, times=2)
myReallNew <- rep(myReallN, times=10)

myV <- sort(c(-1,3,-5,7,-9))

repVector <- rep(myV, each=10, times=2)
repVecto <- sort(rep(c(-1,3,-5,7,-9), each=10, times=2, decreasing=TRUE))
print(repVecto)

#matrices
# myMatrix <- matrix(vector, no_of_rows, no_of_columns)
myMatrix <- matrix(c(1,2,3,4,5,6,7,8,9), nrow= 3)
print(myMatrix)
# accessing a matrix element
print(myMatrix[2,2])

mVector <- c(2,2,2,2,2,2,2,2,2) #rep(x=2, times=9)
myMatrixx <- matrix(mVector, ncol= 3)
print(myMatrixx)

#list
foo <- list(2.2, "predictive analysis", TRUE, matrix(c(10,20,30,40), nrow=2,ncol=2), "hello")
print(foo)
print(foo[3])
print(foo[4])

#assigning names
names(foo) <- c("integer", "string", "logical", "matrix", "stringTwo")
print(foo$string)
print(foo$stringTwo)

# dataframes

myData <- data.frame(person = c("Bob", "Ryan", "Julia"), 
                     age =c(31, 105, 25), 
                     sex = factor(c("M","M", "F")))
myData$person
newRecord <- data.frame(person = "Sarah", age = 7, sex = "F")
myData <- rbind(myData, newRecord)

funny <- factor(c("High", "Low", "Medium", "Medium"))
myData <- cbind(myData, funny)
