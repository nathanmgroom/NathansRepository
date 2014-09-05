#Week 2 Assignment
#Nathan Groom
#1a
queue<- c("James","Mary","Steve","Alex","Patricia")
#1b
queue<-append(queue, "Harold")
#1c
queue<-queue[-1]
#1d
queue<-append(queue,"Pam",after=1)
#1e
queue<-queue[-5]
#1f
queue<-queue[-which(queue=="Alex")]
#1g
match("Patricia",queue)
#1h
length(queue)

#2
quad<-function(a,b,c){
       d<- (((-b)+sqrt((b^2)-(4*a*c)))/(2*a))
       e<-(((-b)-sqrt((b^2)-(4*a*c)))/(2*a))
       print(d)
       print(e)
       if(((b^2)-(4*a*c))>0){
             print("There are 2 real roots")
         }
       if(((b^2)-(4*a*c))==0){
             print("There is 1 double root")
         }
       if(((b^2)-(4*a*c))<0){
             print("There are 0 real roots")
         }
   }
> quad(1,2,3)
[1] NaN
[1] NaN
[1] "There are 0 real roots"

#3
notdiv <- function(x){
      x%%3 != 0 & x%%7 != 0 & x%%11 != 0}
notdivlist <- sapply(1:1000, function(x) notdiv(x))
sum(notdivlist)
[1] 520
#4
pythag<-function(f,g,h){
       if(f^2+g^2==h^2){
             print("This is a Pythagorian Triple")
         }
       else if(f^2+h^2==g^2){
             print("This is a Pythagorian Triple")
         }
       else if(h^2+g^2==f^2){
             print("This is a Pythagorian Triple")
         }
       else{
             print("This is not a Pythagorian Triple")
         }
   }
pythag(3,4,5)
[1] "This is a Pythagorian Triple"
pythag(1,1,1)
[1] "This is not a Pythagorian Triple"