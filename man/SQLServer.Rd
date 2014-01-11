\name{SQLServer}
\alias{SQLServer}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
SQLServer
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
SQLServer(driverClass = "", classPath = "", identifier.quote = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{driverClass}{
%%     ~~Describe \code{driverClass} here~~
}
  \item{classPath}{
%%     ~~Describe \code{classPath} here~~
}
  \item{identifier.quote}{
%%     ~~Describe \code{identifier.quote} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (driverClass = "", classPath = "", identifier.quote = NA) 
{
    classPath <- path.expand(unlist(strsplit(classPath, .Platform$path.sep)))
    .jinit(classPath)
    .jaddClassPath(system.file("java", "sqljdbc4.jar", package = "RSQLServer"))
    if (nchar(driverClass) && is.jnull(.jfindClass(as.character(driverClass)[1]))) 
        stop("Cannot find SQL Server driver class ", driverClass)
    jdrv <- .jnew(driverClass, check = FALSE)
    .jcheck(TRUE)
    if (is.jnull(jdrv)) 
        jdrv <- .jnull()
    new("SQLServerDriver", identifier.quote = as.character(identifier.quote), 
        jdrv = jdrv)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
