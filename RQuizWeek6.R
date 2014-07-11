#assign file to a variable, in this case called 'pizza'
pizza <- "/users/nathangroom/desktop/pizza-store-data.csv"
#uses the read.table function to create a data.frame called tomato.
#I'm accounting for the header by saying 'header=TRUE' and it's a 
#csv file so sep = ","
tomato<-read.table(file=pizza, header= TRUE, sep = ",")
#Here I'm pulling up the summary of the data.frame I created.
> summary(tomato)
date                 store         pizzas        customers    
1/1/13 :   4   Cork Street   :365   Min.   :  0.0   Min.   :  0.0  
1/10/13:   4   Stadium Drive :365   1st Qu.:181.8   1st Qu.:148.0  
1/11/13:   4   West Main     :365   Median :215.0   Median :182.0  
1/12/13:   4   Westnedge Hill:365   Mean   :227.1   Mean   :189.2  
1/13/13:   4                        3rd Qu.:285.0   3rd Qu.:228.2  
1/14/13:   4                        Max.   :417.0   Max.   :389.0  
(Other):1436  