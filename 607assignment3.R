#Assignment 3
#Nathan Groom
#1
> vecc<-c(9,3,1,NA,3,NA)
> missing<-function(x){
       y<-length(x)
       z<-length(na.omit(x))
       print(y-z)
   }
> missing(vecc)
[1] 2
#2
missing2<-function(x){
       y<-length(x)
       z<-length(na.omit(x))
       
     }
#here just changing my previous function so it doesn't print out every value
e<-c(1,2,3,4,NA,6,7,NA,9,10)
f<-c(11,NA,NA,NA,15,16,17,18,NA,20)
g<-c(NA,22,23,NA,NA,26,27,28,29,30)
dfdf<-data.frame(e,f,g)
dframe<-function(k){
           V<-sapply(k,missing2)
           
             print(V)
        }
> dframe(dfdf)
e f g 
2 4 3
#3
#sorts input vector
Input.Sort <- function(input) {
  listlen <- length(input)
  for (i in 2:listlen) {
    for (j in 1:i) {
      if (input[i] < input[j]){
        low <- input[i]
        high <- input[j]
        input[i] <- high
        input[j] <- low
      }
    } 
  }
  return(input)
}
#finds median
Find.Median <- function (input) {
  if (length(input)%% 2 ==0) {
    Median <-   ( input [ length(input) / 2 ] + input [ length(input) / 2 +1 ] ) /2
  }
  else {
    Median <-    input [ (length(input) - 1) / 2   + 1]
  }
  return(Median)
} 
#finds 1st and 3rd quartiles
Quartile  <- function (input) {
  Med <- Find.Median (input)
  Lower.Half  <- input [ input < Med]
  Upper.Half  <-  input [ input > Med]
  First.Quartile <- Find.Median (Lower.Half)
  Third.Quartile <- Find.Median (Upper.Half)
  return (c(First.Quartile, Third.Quartile))
}
#main functions
if ( missing2(x) > 0 ) {
  output <- c(NA,NA,NA,NA,NA,NA,NA,missing2(x))
  
  names(output) <- c("minimum" , "maximum" , "mean", "median" , "first quartile", "third quartile", "standard deviation", "missing Values")
  return (output)
}
else {
  
  input <- Input.Sort(input)
  output <- c(input[1], input[length(input)], sum(input)/length(input),    Find.Median(input)   ,          Quartile(input)[1] , Quartile(input)[2] ,    sqrt(sum( (input -   sum(input)/length(input)      )^2)/length(input)),  0 )
  
  names(output) <- c("minimum" , "maximum" , "mean", "median" , "first quartile", "third quartile", "standard deviation", "missing Values")
  
  return (output)
  
}
}
#4
input <- c("R" , "R" , "Java" , "Python",NA, "C", "SQL", "R", "Perl", "Ruby", "Python", NA)
Search.Vector <- function (input) {  
  output <- c()
  input.summary <- summary(as.factor(c(input)))  
  output[1] <- length(input.summary)  
  output[2] <- names(sort(input.summary) [length(input.summary)])  
  output[3] <- sort(input.summary) [length(input.summary)]  
  output[4] <- length(which (is.na(input), TRUE))  
  names(output) <- c("Num Dstnct val" , "which occurs max?" , "How many times?" , "Num of missing val") 
  return(output) }
Search.Vector(input)
#5
logFunc <- function(logVec){
  len <- length(logVec)
  num.of.missing <- sum(is.na(logVec))
  newlogVec <- logVec[!is.na(logVec)]
  truevalue <- length(newlogVec[newlogVec == TRUE])
  falsevalue <- length(newlogVec[newlogVec == FALSE])
  portion <- truevalue/len
  loglist <- list(number.of.TRUE.value = truevalue, proportion.of.TRUE.value = portion,
                  number.of.FALSE.value = falsevalue, number.of.missing.value = num.of.missing)
  return(loglist)
}


logVec <- c(TRUE, FALSE, NA, FALSE, TRUE, FALSE, TRUE, FALSE, NA, FALSE)

logFunc(logVec)
#6
dfSum <- function(df){
  if(is.data.frame(df) == FALSE){
    return("The object is not a data frame.")
  }
  names <- colnames(df)
  sum.result <- list()
  for(i in 1:ncol(df)){
    column <- df[,i]
    if(is.numeric(column) == TRUE){
      result <- numSum(column)
    } else if(is.character(column) == TRUE | is.factor(column) == TRUE){
      result <- charSum(column)
    } else {
      result <- logicalSum(column)
    }
    sum.result <- append(sum.result, list(result))
  }
  names(sum.result) = names
  return(sum.result)
}