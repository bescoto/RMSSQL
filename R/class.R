#' @import RJDBC
#' @import DBI

##=== SQLServerDriver

#' @export
setClass("MSSQLServerDriver", contains = "JDBCDriver")

#' @export
MSSQLServer <- function(identifier.quote=NA) {
  drv <- JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver",
              system.file("java", "sqljdbc4.jar", package="RSQLServer"))
  return(as(drv, "MSSQLServerDriver"))
}

#' @export
setMethod("dbConnect", "MSSQLServerDriver",
          def=function(drv, host, dbname=NULL, user='', password='',
              win.auth=FALSE, ...) {
  cnnstr <- paste0("jdbc:sqlserver://", host)
  if (win.auth) {
    if (user != '' || password != '')
      stop("Cannot specify user or password with Windows Authentication")
    cnnstr <- paste0(cnnstr, ";integratedSecurity=true")
  }
  if (!is.null(dbname))
      cnnstr <- paste0(cnnstr, "; DatabaseName=", dbname)
  jc <- callNextMethod(drv, cnnstr, user, password, ...)
  return(as(jc, "MSSQLServerConnection"))
})


##=== SQLServerConnection

#' @export
setClass("MSSQLServerConnection", contains = "JDBCConnection")

#' @export
setMethod("dbSendQuery", "MSSQLServerDriver",
          def=function(conn, statement, ...) {
            return(as(callNextMethod(), "MSSQLServerResult"))
          })


##=== SQLServerResult

#' @export
setClass("MSSQLServerResult", contains = "JDBCResult")
