#Nathan Groom
#607 Quiz Week 4
#1
require(ggplot2)
h<-qplot(year, data=movies, geom="histogram",binwidth=10, main="Number of Movies by Decade")
#2
require(dplyr)
require(reshape2)
a <- select(movie, year, rating, Action, Animation, Comedy, Drama, Documentary, Romance, Short)
m <- melt(a, id.vars = c("year", "rating"), variable.name = "Genres", value.name = 'filter')
m1 <- filter(m, filter == 1)
m2 <- group_by(m1, Genres)
summarise(m2, avg.rating = mean(rating)) 
ggplot(data = m1, aes(x = Genres, y = rating)) + geom_boxplot() 
ggplot(data = m1, aes(x = year, y = rating)) + geom_smooth() + facet_wrap(~Genres) 
#3
rating_vs_length <- ggplot(data = m, aes(y = rating, x =length )) + geom_violin() + ggtitle("Relationship between rating and length")
#It appears there is more variance in rating for movies with an average length
#Movies that have a short length or a long length appear to have average ratings.
#Movies that have average lengths appear more likely to have very high or very low ratings.

#4
#reshaping the dataset with dplyr
m.len <- select(movie, length, Action, Animation, Comedy, Drama, Documentary, Romance, Short)
m.gen <- melt(m.len, id.vars = "length", variable.name = "Genres", value.name = 'filter')
len.gen <- filter(m.gen, filter == 1) 
#plotting movie lengths by genre
g <- ggplot(data = len.gen, aes(x = Genres, y = length)) 
g1 <- g + geom_boxplot()
#adjust the scale
g1 + scale_y_continuous(limit = c(0, 300))

#5
require(gridExtra)
a<-select(movies,votes, year, length, rating)
b<-melt(a, id.vars=c("votes"), variable.name="Factors")
c<-group_by(b, votes)

a1<-select(movies, votes, rating)
b1<-group_by(a1, votes, rating)
plot1<-ggplot(data=b1, aes(x=rating, y=votes) , name="Rating", color='red')+geom_line()

a2<-select(movies, votes, length)
b2<-group_by(a2, votes, length)
plot2<-ggplot(data=b2, aes(x=length, y=votes) , name="Length", color='blue')+geom_line()

a3<-select(movies, votes, year)
b3<-group_by(a3, votes, year)
plot3<-ggplot(data=a3, aes(x=year, y=votes), , name="Year", color='red')+geom_line()

grid.arrange(plot1, plot2, plot3, ncol=1)

#the question was what other variable has the biggest effect on the votes.
#it looks like more recent movies got more votes
#rating and votes are positively correlated
#none of the other variables significantly predict the number of votes the movie got.
