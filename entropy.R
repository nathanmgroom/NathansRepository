#entropy project 607
#Nathan Groom
#1
prop3<-function(input){
       (table(input)[1])/(sum(table(input)))   
     }

> entropy<-function(y){
  A<-(1-prop3(y))*log(base=2,(1-prop3(y)))
  B<-prop3(y)*log(base=2,(prop3(y)))
  C<-(-1*(A+B))
  print(C)
}
entropy(dataset$answer)
0 
0.9832692 
prop4<-function(input1,input1a){
       table(input1)[input1a]/sum(table(input1))
       
     }
#2
infogain<-function(i,j){
  entropies<-vector(mode="numeric")
  sizes<-vector(mode="numeric")
  values<- j[!duplicated(j)]
  for (p in 1:(length(values))){
    entropies[p]<-entropy(target[j==values[p]])
    sizes[p]<-length(i[j==values[p]])/length(i)
  }
  return(entropy(i)-sum(entropies*sizes))
  }
  
#3
decide<-function(input){
  container1<-0
  column<-0
  container2<-c()
  for(p in 1:(length(input)-1)){
    gain<-infogain(as.vector(input[,length(input)]), as.vector(input[,p]))
    container2<-c(container1, gain)
    if(gain>container1){
      container1<-gain
      column<-p
    }
  }
  return(list(column, container2))
}
