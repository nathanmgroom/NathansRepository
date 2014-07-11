require(XML)
Loading required package: XML
myURL <- "http://en.wikipedia.org/wiki/Barcelona"
sports <- readHTMLTable(myURL, which = 6, header = TRUE, stringsAsFactors=FALSE)
BarcalonaSports <- sports
BarcalonaSports
Club           League             Sport
1             FC Barcelona Primera División          Football
2         RCD Espanyol[98] Primera División          Football
3                CE Europa Tercera División          Football
4     FC Barcelona Bàsquet Primera División        Basketball
5     FC Barcelona Handbol Primera División          Handball
6  FC Barcelona Ice Hockey Primera División        Ice hockey
7      FC Barcelona Hoquei Primera División     Roller hockey
8      FC Barcelona Futsal Primera División            Futsal
9       FC Barcelona Rugby Primera División       Rugby union
10       Barcelona Dragons     World League American football
11        Barcelona Búfals Primera División American football
Venue     Established Capacity
1                       Camp Nou            1899  100,000
2        Estadi Cornellà-El Prat            1900   40,500
3                   Nou Sardenya            1907    7,000
4                Palau Blaugrana            1926    7,585
5                Palau Blaugrana            1942    7,585
6                   Palau de Gel            1972    1,256
7                Palau Blaugrana            1942    7,585
8                Palau Blaugrana            1986    7,585
9                        CDMVdHT            1924  no data
10 Estadi Olímpic Lluís Companys 1991 (withheld)   56,000
11    Camp Municipal Narcís Sala            1987    6,550
> 