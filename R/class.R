##=== Add sqljdbc4.jar to classpath

##=== SQLServerDriver

setClass("SQLServerDriver", contains = "JDBCDriver")

SQLServer <- function(identifier.quote=NA) {
  require(RJDBC)
  drv <- JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver", system.file("java", "sqljdbc4.jar", package="RSQLServer"))
  new("SQLServerDriver", identifier.quote=as.character(identifier.quote), jdrv= drv@jdrv)
}

setMethod("dbConnect", "SQLServerDriver", def=function(drv, url, user='', password='', ...) {
  drv <- callNextMethod(drv, url, user, password, ...)
}, valueClass = "SQLServerConnection")

### SQLServerConnection

setClass("SQLServerConnection", representation("JDBCConnection", jc="jobjRef", identifier.quote="character"))

setMethod("dbSendQuery", signature(conn="SQLServerConnection", statement="character"),  def=function(conn, statement, ..., list=NULL) {
  Result <- getMethod("dbSendQuery", signature(conn="RDBCConnection", statement="character"))(conn, statment, ..., list=list)
  
  new("SQLServerResult", jr=r, md=md, stat=s, pull=.jnull())
})

##=== SQLServerResult
## jr - result set, md - metadata, stat - statement
## Since the life of a result set depends on the life of the statement, we have to explicitly
## save the later as well (and close both at the end)

setClass("SQLServerResult", representation("JDBCResult", jr="jobjRef", md="jobjRef", stat="jobjRef", pull="jobjRef"))

setMethod("dbHasCompleted", "JDBCResult", def = function(res, ...) {
  TRUE
}, valueClass = "logical")