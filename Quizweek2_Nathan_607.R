#Week 2 Quiz
#Nathan Groom
#1
vector <- c(1,1,2,3,4,5,6,6,7,7,8,9,10,11,12,14,15,16,17,18)
vector
[1]  1  1  2  3  4  5  6  6  7  7  8  9 10 11 12 14 15 16 17 18
#2
as.character(vector)
[1] "1"  "1"  "2"  "3"  "4"  "5"  "6"  "6"  "7"  "7"  "8"  "9"  "10" "11" "12" "14" "15" "16" "17" "18"
#3
as.factor(vector)
[1] 1  1  2  3  4  5  6  6  7  7  8  9  10 11 12 14 15 16 17 18
Levels: 1 2 3 4 5 6 7 8 9 10 11 12 14 15 16 17 18
#4
v <- as.factor(vector)
v
[1] 1  1  2  3  4  5  6  6  7  7  8  9  10 11 12 14 15 16 17 18
Levels: 1 2 3 4 5 6 7 8 9 10 11 12 14 15 16 17 18
levels(v)
[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12"
[13] "14" "15" "16" "17" "18"

#5
(3*vector)^2 - (4*vector) -1
[1]    4    4   27   68  127  204  299  299  412  412  543  692
[13]  859 1044 1247 1707 1964 2239 2532 2843
 
#6
require(MASS)
X = c(1,1,1,1,1,1,1,1,5,4,6,2,3,2,7,8,8,9,4,7,4,9,6,4)
X
[1] 1 1 1 1 1 1 1 1 5 4 6 2 3 2 7 8 8 9 4 7 4 9 6 4
x <- matrix(X,ncol=3)
x
[,1] [,2] [,3]
[1,]    1    5    8
[2,]    1    4    9
[3,]    1    6    4
[4,]    1    2    7
[5,]    1    3    4
[6,]    1    2    9
[7,]    1    7    6
[8,]    1    8    4
Y <- c(45.2,46.9,31.0,35.3,25.0,43.1,41.0,35.1)
y <- matrix(Y,ncol=1)
y
[,1]
[1,] 45.2
[2,] 46.9
[3,] 31.0
[4,] 35.3
[5,] 25.0
[6,] 43.1
[7,] 41.0
[8,] 35.1
z <- ginv(t(x)%*%(x))
j <- t(x)%*%y
z%*%j
        [,1]
[1,] 3.153126
[2,] 1.983743
[3,] 3.999539

#7
q <- list(a=("Nathan"),b=("is"),c=("cool"))
> q
$a
[1] "Nathan"

$b
[1] "is"

$c
[1] "cool"

q["a"]
$a
[1] "Nathan"

#8
A <- c("a","b","c","d","e","f","g","h","i","j")
k <- c(5,5,5,7,7,7,8,8,8,8)
B<-as.factor(k)
C<-c(1,2,3,4,5,6,7,8,9,10)
D<-as.Date(c("2014-09-03","2014-09-02","2014-09-01","2014-08-31","2014-08-30","2014-08-29","2014-08-28","2014-08-27","2014-08-26","2014-08-25"))
DF <-data.frame(A,B,C,D)
DF
A B  C          D
1  a 5  1 2014-09-03
2  b 5  2 2014-09-02
3  c 5  3 2014-09-01
4  d 7  4 2014-08-31
5  e 7  5 2014-08-30
6  f 7  6 2014-08-29
7  g 8  7 2014-08-28
8  h 8  8 2014-08-27
9  i 8  9 2014-08-26
10 j 8 10 2014-08-25

#9
E<-append(k,9,after=length(10))
E<-E[-5]
DF<-data.frame(A,E,C,D)
> DF
A E  C          D
1  a 5  1 2014-09-03
2  b 9  2 2014-09-02
3  c 5  3 2014-09-01
4  d 5  4 2014-08-31
5  e 7  5 2014-08-30
6  f 7  6 2014-08-29
7  g 8  7 2014-08-28
8  h 8  8 2014-08-27
9  i 8  9 2014-08-26
10 j 8 10 2014-08-25

#10
data = read.csv("temperatures.csv",header=TRUE, sep=",")

#11
tomato <- read.table(file="/users/nathangroom/Desktop/measurements.txt", header = TRUE, sep =",")
#12
myURL<-"http://www.learningR.com/data/tomato"
pipeURL<-read.table(file=myURL, header=TRUE,sep="|")
#13
x=1
for(i in 1:12){
  x<-x*((1:12)[i])
  print(x)
}
#14
x=1500
for(i in 1:72){
  x<-(x+(.0324*x))
  print(x)
}
#15
myvector <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
sum(myvector[3],myvector[6],myvector[9],myvector[12],myvector[15],myvector[18])
[1] 63
#16
x=2
y=1
for(i in 1:10){
  x<-(x+(x^y))
  print(x-2)
}
#17
while(y<=10){
  print(x(x^y))
  y<-y+1
}
#18
sum(2^(1:10))
#19
vector1<-(seq(20,50, by=5))
> vector1
[1] 20 25 30 35 40 45 50
#20
vector10<-rep(c("example"),times=10)
vector10
[1] "example" "example" "example" "example" "example" "example" "example" "example" "example"
[10] "example"
#21
a=-1
b=2
c=2
quad<-function(a,b,c){
      d<- (((-b)+sqrt((b^2)-(4*a*c)))/(2*a))
      e<-(((-b)-sqrt((b^2)-(4*a*c)))/(2*a))
      print(d)
      print(e)
   }
quad(-1,2,2)
[1] -0.7320508
[1] 2.732051
