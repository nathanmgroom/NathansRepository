#Nathan Groom
# 607 week 6 quiz

#1
# Bowlpool is a matrix, according to this website: http://www.inside-r.org/packages/cran/XML/docs/readHTMLTable
# the default result is a matrix though you have an option, through as.data.frame to make it a data frame.

#2
#I think they're factors because this time we didn't specify stringsAsFactors = FALSE, so therefore
# stringsAsFactors must default to TRUE

#3 Here is code to return the number of non-null entries in hvalues:
htmlTables<-function(w){
       counter<-0
       for(i in 1:length(w)){
           if(!is.null(w[[i]])=="TRUE"){
                 counter<-(counter+1)
               }
             else{
                  counter<-(counter+0)
               }
         }
       paste("the number of tables is", counter)
   }
> htmlTables(hvalues)
[1] "the number of tables is 2"

#4 returning just the first table
doc = htmlParse(theURL)
tableNodes = getNodeSet(doc, "//table")
tb = readHTMLTable(tableNodes[[1]], as.data.frame=TRUE)
tb
Number First Name Last Name Points
1      1        Eve   Jackson     94
2      2       John       Doe     80
3      3       Adam   Johnson     67
4      4       Jill     Smith     50

#5
tb2<-tb[3:4]
> tb2
Last Name Points
1   Jackson     94
2       Doe     80
3   Johnson     67
4     Smith     50

#6 There are a lot of Wikipedia pages with good HTML tables, though some are better to use with
# readHTMLTables() than others
#One that works really well is list of countries by population:
#http://en.wikipedia.org/wiki/List_of_countries_by_population

#7
#This URL has 6 HTML tables.

#8
# I'm using Google Chrome. To view the page source, right click anywhere on the page (except for 
# images or links) and select "View Page Source". The HTML code will pop up in a new tab.