#R Assignment Week 7
#Nathan Groom
#part 1
sqlite <- dbDriver ("SQLite")
simplecharterdb<-dbConnect(sqlite, "/users/nathangroom/desktop/simplecharter.sqlite")
> dbListTables(simplecharterdb)
[1] "BookingsCaptainsShips"
[2] "allcharters"          
[3] "bookings"             
[4] "captains"             
[5] "payments"             
[6] "ships"                
[7] "sqlite_sequence" 
#part 2
#the original table
Boston<-read.csv("/users/nathangroom/desktop/BostonHomePrices.csv")
head(Boston)
X506 X13     X  X.1   X.2   X.3  X.4    X.5 X.6 X.7     X.8    X.9  X.10 X.11
1    CRIM  ZN INDUS CHAS   NOX    RM  AGE    DIS RAD TAX PTRATIO      B LSTAT MEDV
2 0.00632  18  2.31    0 0.538 6.575 65.2   4.09   1 296    15.3  396.9  4.98   24
3 0.02731   0  7.07    0 0.469 6.421 78.9 4.9671   2 242    17.8  396.9  9.14 21.6
4 0.02729   0  7.07    0 0.469 7.185 61.1 4.9671   2 242    17.8 392.83  4.03 34.7
5 0.03237   0  2.18    0 0.458 6.998 45.8 6.0622   3 222    18.7 394.63  2.94 33.4
6 0.06905   0  2.18    0 0.458 7.147 54.2 6.0622   3 222    18.7  396.9  5.33 36.2
#makes a new file
newdb <- dbConnect(sqlite,"newDataBase.db")
#writes "Boston" table into this new file
dbWriteTable(newdb, "Boston", Boston)
dbListTables(newdb)
[1] "Boston"