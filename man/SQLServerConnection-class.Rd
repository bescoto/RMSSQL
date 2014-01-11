\name{SQLServerConnection-class}
\Rdversion{1.1}
\docType{class}
\alias{SQLServerConnection-class}
\alias{dbSendQuery,SQLServerConnection,character-method}

\title{Class \code{"SQLServerConnection"}}
\description{
%%  ~~ A concise (1-5 lines) description of what the class is. ~~
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("SQLServerConnection", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{jc}:}{Object of class \code{"jobjRef"} ~~ }
    \item{\code{identifier.quote}:}{Object of class \code{"character"} ~~ }
  }
}
\section{Extends}{
Class \code{"\linkS4class{JDBCConnection}"}, directly.
Class \code{"\linkS4class{DBIConnection}"}, by class "JDBCConnection", distance 2.
Class \code{"\linkS4class{DBIObject}"}, by class "JDBCConnection", distance 3.
}
\section{Methods}{
  \describe{
    \item{dbSendQuery}{\code{signature(conn = "SQLServerConnection", statement = "character")}: ... }
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
showClass("SQLServerConnection")
}
\keyword{classes}
