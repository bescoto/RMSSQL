\name{SQLServerDriver-class}
\Rdversion{1.1}
\docType{class}
\alias{SQLServerDriver-class}
\alias{dbConnect,SQLServerDriver-method}

\title{Class \code{"SQLServerDriver"}}
\description{
%%  ~~ A concise (1-5 lines) description of what the class is. ~~
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("SQLServerDriver", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{identifier.quote}:}{Object of class \code{"character"} ~~ }
    \item{\code{jdrv}:}{Object of class \code{"jobjRef"} ~~ }
  }
}
\section{Extends}{
Class \code{"\linkS4class{JDBCDriver}"}, directly.
Class \code{"\linkS4class{DBIDriver}"}, by class "JDBCDriver", distance 2.
Class \code{"\linkS4class{DBIObject}"}, by class "JDBCDriver", distance 3.
}
\section{Methods}{
  \describe{
    \item{dbConnect}{\code{signature(drv = "SQLServerDriver")}: ... }
	 }
}
\references{
%%  ~~put references to the literature/web site here~~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%%  ~~objects to See Also as \code{\link{~~fun~~}}, ~~~
%%  ~~or \code{\linkS4class{CLASSNAME}} for links to other classes ~~~
}
\examples{
showClass("SQLServerDriver")
}
\keyword{classes}
