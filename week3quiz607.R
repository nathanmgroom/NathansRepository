#Week3Quiz 607
#NathanGroom
#Nathan-16, 13, 14,  6
#1
meanfunc<-function(x){
       print(sum(x)/length(x))
   }
> meanfunc(y)
[1] 19.16667
#2
y<-c(1,4,5,NA,12,11)
meanfuncNA<-function(x){
  print(sum(na.exclude(x))/length(na.exclude(x)))
}
> meanfuncNA(y)
[1] 6.6
#3
gcd <- function(x,y) {
       r <- x%%y;
       return(ifelse(r, gcd(y, r), y))
   }
> gcd(10,5)
[1] 5
#4
EuclidFun <- function(a, b){
  
  if (a == 0 || b == 0){
    
    return (0)
    
  } else {
    
    m <- max(abs(a), abs(b))
    
    n <- min(abs(a), abs(b))
    
    r <- m %% n
    
    while (r != 0){
      
      m <- n
      
      n <- r
      
      r <- m %% n
      
    }
    
    return (n)
    
  }
  
}



EuclidFun(1, 0) # 0

EuclidFun(21, 7) # 7

EuclidFun(21, 11) # 1

EuclidFun(210, 45) # 15

EuclidFun(210, -45) # 15
#5
calculateExpression<-function(x,y){ 
  return((x^2*y)+(2*x*y)-(x*y^2))  
}

#6
require(data.table)
cartable1 <- read.table(file="/users/nathangroom/desktop/week-3-price-data.csv",header=TRUE,sep=",")
cartable2<-read.table(file="/users/nathangroom/desktop/week-3-make-model-data.csv",header=TRUE,sep=",")
setkey(cartable1, ModelNumber)
setkey(cartable2,ModelNumber)
carmerge<-cartable1[cartable2]
carmerge
ModelNumber ID  Color Mileage Price   Make    Model Year
1:        1091  1   Blue   36281 12400 Toyota    Camry 2010
2:        1091  6    Red   61130  9900 Toyota    Camry 2010
3:        1091 10   Blue   56095 10400 Toyota    Camry 2010
4:        1091 17 Silver   43017 11700 Toyota    Camry 2010
5:        1091 18   Blue   53126 10700 Toyota    Camry 2010
6:        1091 24   Blue   31204 12900 Toyota    Camry 2010
7:        1142  2  Black   30107 13000 Toyota    Camry 2011
8:        1142  3    Red   45827 11400 Toyota    Camry 2011
9:        1142  5  White   38426 12200 Toyota    Camry 2011
10:        1142  9  White   64466  9600 Toyota    Camry 2011
11:        1142 13 Silver   54342 10600 Toyota    Camry 2011
12:        1142 14 Silver   40757 11900 Toyota    Camry 2011
13:        1142 20  White   48504 11100 Toyota    Camry 2011
14:        1254  4  White   63624  9600 Toyota  Corolla 2010
15:        1254  7    Red   68400  9200 Toyota  Corolla 2010
16:        1254 26  Green   34716 12500 Toyota  Corolla 2010
17:        1908  8  White   31863 12800 Toyota  Corolla 2011
18:        2111 16  White   36216 12400   Ford    Focus 2010
19:        2111 19  Black   42945 11700   Ford    Focus 2010
20:        2200 21  White   46494 11400   Ford    Focus 2011
21:        2310 22 Silver   57672 10200   Ford Explorer 2010
22:        2310 23  Black   53942 10600   Ford Explorer 2010
23:        2310 28  White   37107 12300   Ford Explorer 2010
24:        2312 11  Black   47647 11200   Ford Explorer 2011
25:        2312 15    Red   42685 11700   Ford Explorer 2011
26:        2312 25    Red   52674 10700   Ford Explorer 2011
27:        2312 27    Red   30479 13000   Ford Explorer 2011
#there's 27 entries so no surprise here
#7
MergedDataLeft<-merge(x=Week3_price, y=Week3_make_model, by.x=c("ModelNumber"), by.y=c("ModelNumber"),
                      
                      all=TRUE, all.x=TRUE, all.y=FALSE)
#8
(Year2010 <- subset(merge2, Year == 2010))
#9
subset(merge(df.price,df.MakeModel,by="ModelNumber", all.x=TRUE), Color=="Red" & Price > 10000)
#10
subset(merge(df.price,df.MakeModel,by="ModelNumber", all.x=TRUE), Color=="Red" & Price > 10000)[,c(2,4:8)]
#11
numCharacters <- function(vec){    
  # Error Check    if(is.character(vec) == FALSE){        
  return("The input vector is not a character vector.")    
}    
num.chars <- nchar(vec)    
return(num.chars)
}
test <- c("Monday", "Friday", "Sat", "Wednesday", "How long is this string")
numCharacters(test) # 6 6 3 9 23
str(Year2010)
#12
concFun <- function(cvec1, cvec2){ 
  if (length(cvec1) != length(cvec2)){    
    stop('Two character vectors are not the same length.')  
  } else {    
    concVec <- paste(cvec1, cvec2) 
  }  
  return (concVec)  
}
char<- c('theatre', 'movie', 'ticket')
char2 <- c('AMC', 'Guardians Of The Galaxy', 'One')
concFun(char, char2)
# [1] "theatre AMC"                   "movie Guardians Of The Galaxy"
# [3] "ticket One" 
char3 <- c('AMC', 'Guardians Of The Galaxy', 'Begin Again' ,'One')
concFun(char, char3)
# Error in concFun(char, char3) :
# Two character vectors are not the same length.
#13
king<-"the king is dead. Long live the king"
vowel<-function(x){
       str_extract(x,"[AEIOUaeiou]..")
       
    }
> vowel(king)
[1] "e k"
#14
Month<-(1:3)
> Day<-(1:3)
> Year<-(2013:2015)
> dateDF<-data.frame(Month,Day,Year)
> dateDF
Month Day Year
1     1   1 2013
2     2   2 2014
3     3   3 2015

#adding the date format
dates<-as.Date(c("2013-1-1","2014-2-2","2015-3-3"))

dateDF[, "Date Format"]<-dates
> dateDF
Month Day Year Date Format
1     1   1 2013  2013-01-01
2     2   2 2014  2014-02-02
3     3   3 2015  2015-03-03
#15
as.Date("09-05-2014" , "%m-%d-%Y")
#16
> theDate<-as.Date("2014-09-12")
> str_sub(string=as.character(theDate),start=6,end=7)
[1] "09"
#17
date.seq <- seq(mdy("1-1-2005"), mdy("12-31-2014"),  by = "day")
head(date.seq) # "2005-01-01 UTC" "2005-01-02 UTC" "2005-01-03 UTC" "2005-01-04 UTC" "2005-01-05 UTC" "2005-01-06 UTC"
tail(date.seq) # "2014-12-26 UTC" "2014-12-27 UTC" "2014-12-28 UTC" "2014-12-29 UTC" "2014-12-30 UTC" "2014-12-31 UTC"