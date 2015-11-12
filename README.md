RMSSQL
==========

SQL Server DBI interface for R, based on Microsoft's JDBC driver.

These packages are required: DBI, RJDBC

You will also need a working Java runtime, either 32 or 64 bit to
match your R runtime.


Here is some example code:

```
con <- dbConnect(MSSQLServer(), 'myDBServer', user='sa', password='mypw')
dbListTables(con)
dbGetQuery(con, "select * from myDBName..my_table")
dbDisconnect(con)
```
