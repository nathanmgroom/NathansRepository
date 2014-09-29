#Nathan Groom
#607 assignment 5
#1
#Three questions we might want to ask about this data are the following:
#a) First, is age a factor on whether the respondents would choose Cullen skink over
# Partan bree?
#b) Is the city the respondent is in a factor on whether he or she would choose 
# Cullen skink over Partan bree?
#c) What is the overall preference of all the respondents?

#2
Edinburgh16to24<-c(80100,35900)
Edinburgh25up<-c(14300,214800)
Glasgow16to24<-c(99400,43000)
Glasgow25up<-c(150400,207000)
Poll<-data.frame(Edinburgh16to24,Edinburgh25up,Glasgow16to24,Glasgow25up)
Poll
Edinburgh16to24 Edinburgh25up Glasgow16to24 Glasgow25up
1           80100         14300         99400      150400
2           35900        214800         43000      207000

#3
require(dplyr)
require(tidyr)

Poll2<-Poll %>% gather(key,value,Edinburgh16to24:Glasgow25up)
> Poll2
Response             key  value
1      Yes Edinburgh16to24  80100
2       No Edinburgh16to24  35900
3      Yes   Edinburgh25up  14300
4       No   Edinburgh25up 214800
5      Yes   Glasgow16to24  99400
6       No   Glasgow16to24  43000
7      Yes     Glasgow25up 150400
8       No     Glasgow25up 207000

names(Poll2)<-c("Response","Demographic","Votes")
Poll2
Response     Demographic  Votes
1      Yes Edinburgh16to24  80100
2       No Edinburgh16to24  35900
3      Yes   Edinburgh25up  14300
4       No   Edinburgh25up 214800
5      Yes   Glasgow16to24  99400
6       No   Glasgow16to24  43000
7      Yes     Glasgow25up 150400
8       No     Glasgow25up 207000

#4
#Is age a factor?
Young<-filter(Poll2, Demographic == "Glasgow16to24" | Demographic == "Edinburgh16to24")
> Young
Response     Demographic Votes
1      Yes Edinburgh16to24 80100
2       No Edinburgh16to24 35900
3      Yes   Glasgow16to24 99400
4       No   Glasgow16to24 43000
Old<-filter(Poll2, Demographic == "Glasgow25up" | Demographic == "Edinburgh25up")
> Old
Response   Demographic  Votes
1      Yes Edinburgh25up  14300
2       No Edinburgh25up 214800
3      Yes   Glasgow25up 150400
4       No   Glasgow25up 207000
YoungYes<-filter(Young, Response == "Yes")
YoungNo<-filter(Young, Response == "No")
OldYes<-filter(Old,Response == "Yes")
OldNo<-filter(Old,Respons=="No")
sum(YoungYes["Votes"])/sum(Young["Votes"])
[1] 0.6946594
sum(YoungNo["Votes"])/sum(Young["Votes"])
[1] 0.3053406
sum(OldYes["Votes"])/sum(Old["Votes"])
[1] 0.2808184
sum(OldNo["Votes"])/sum(Old["Votes"])
[1] 0.7191816
#We can see that among younger Scots, the yes votes (preference for Cullen skink)
# is much higher at about 69%. Compare this to older Scots who overwhelmingly 
#prefer Partan bree at 72%. So yes, age is a factor.

# Is the city a factor? We will do a similar thing here.
Edinburgh<-filter(Poll2, Demographic == "Edinburgh25up" | Demographic == "Edinburgh16to24")
> Edinburgh
Response     Demographic  Votes
1      Yes Edinburgh16to24  80100
2       No Edinburgh16to24  35900
3      Yes   Edinburgh25up  14300
4       No   Edinburgh25up 214800
Glasgow<-filter(Poll2, Demographic == "Glasgow25up" | Demographic == "Glasgow16to24")
> Glasgow
Response   Demographic  Votes
1      Yes Glasgow16to24  99400
2       No Glasgow16to24  43000
3      Yes   Glasgow25up 150400
4       No   Glasgow25up 207000
> EdinburghYes<-filter(Edinburgh, Response == "Yes")
> EdinburghNo<-filter(Edinburgh,Response=="No")
> GlasgowYes<-filter(Glasgow, Response == "Yes")
> GlasgowNo<-filter(Glasgow, Response == "No")
> sum(EdinburghYes["Votes"])/sum(Edinburgh["Votes"])
[1] 0.2735439
> sum(EdinburghNo["Votes"])/sum(Edinburgh["Votes"])
[1] 0.7264561
> sum(GlasgowYes["Votes"])/sum(Glasgow["Votes"])
[1] 0.4997999
> sum(GlasgowNo["Votes"])/sum(Glasgow["Votes"])
[1] 0.5002001
# We can see that Edinburgh respondents heavily prefer Partan bree, 73% to 27%
# Glasgow is much more even, with essentially a 50-50 split on Yes/No votes.
# So yes, city is a factor.

#Now to get a feel for what the overall preference was:
> YesVotes<-filter(Poll2, Response == "Yes")
> NoVotes<-filter(Poll2, Response == "No")
> sum(YesVotes["Votes"])/sum(Poll2["Votes"])
[1] 0.4073855
> sum(NoVotes["Votes"])/sum(Poll2["Votes"])
[1] 0.5926145
# across all ages and both cities, Partan bree won out with 59% of the votes,
# with Cullen skink getting 41%. We can see that Partan bree won largely because
# of broad support from Edinburgh respondents of all ages.

#5
#When I got to part 4, I thought that my final question, of which "won out overall"
# was a bit too simplistic and I wished I had chosen a different question
# but when I went through the process I realized that it's a good "final question"
# to ask, having parsed through the demographics. It's easy to see that 
# there are more "No" voters overall, but after asking the two questions about
# whether age or city were factors, I got a better understanding of how the 
# voting ended up as it did. Most notably I discovered that age was a factor but
# the yes and no votes among age groups essentially canceled each other out, with
# about 70% of 16-24 year olds and 25+ year olds voting yes and no, respectively.
# The biggest factor was the city factor, with Edinburgh's strong preference for
# Partan bree being what largely decided this poll.