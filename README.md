RMSSQL
==========

SQL Server DBI interface for R, based on Microsoft's JDBC driver.

These packages are required: DBI, RJDBC

You will also need a working Java runtime, either 32 or 64 bit to
match your R runtime.


Here is some example code:

...
con <- dbConnect(MSSQLServer(), 'uschicsdb-02', user='sa', password='')
dbListTables(con)
dbGetQuery(con, "select * from CanBeDeleted_Hail_Percentiles..test_table_small")
dbDisconnect(con)
...
