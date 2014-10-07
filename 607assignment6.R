#607 Assignment 6
#Nathan Groom
require(rvest)
wikiPop<-html("http://en.wikipedia.org/wiki/List_of_countries_by_population")
x<-(wikiPop %>% html_nodes("td"))
y<- x %>% html_text()
# Name of country
y[20]
[1] " United States"
# Population
y[21]
[1] "318,844,000"
# Population statistic is as of this date
[1] "October 3, 2014"

#(optional part: read the same URL with XML instead of RVest)
# this was much easier, simply use ReadHTMLTable() which we learned about earlier.
require(XML)
url<-"http://en.wikipedia.org/wiki/List_of_countries_by_population"
p=readHTMLTable(url,as.data.frame=TRUE)
m<-p[1]
head(m)
$`NULL`
Rank                  Country (or dependent territory)    Population               Date % of world\npopulation                         Source
1      1                                          China[8] 1,367,160,000    October 7, 2014                    19%      Official population clock
2      2                                             India 1,260,600,000    October 7, 2014                  17.5%               Population clock
3      3                                     United States   318,867,000    October 7, 2014                  4.43%      Official population clock
4      4                                         Indonesia   252,164,800       July 1, 2014                  3.51%              Official estimate
5      5                                            Brazil   203,255,000    October 7, 2014                  2.83%      Official population clock
6      6                                          Pakistan   188,020,000       July 1, 2014                  2.61%     Official annual projection
7      7                                           Nigeria   178,517,000       July 1, 2014                  2.48%               UN projection[6]
8      8                                        Bangladesh   157,097,000    October 7, 2014                  2.18%      Official population clock
9      9                                         Russia[9]   146,149,200     August 1, 2014                  2.03%              Official estimate
