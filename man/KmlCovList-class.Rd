\name{KmlCovList-class}
\Rdversion{1.1}
\docType{class}
\alias{KmlCovList-class}
\alias{KmlCovList}
\title{Class \code{KmlCovList}}
\description{
\code{KmlCovList} is an S4 class which contain a list of
\link{GlmCluster} objects or a list of list of them.
}
\section{Objects from the Class}{
This class is used internally by \link{kmlCov}
}
\section{Slots}{
  \describe{
    \item{\code{list_part}:}{Contain a \code{list} or a \code{list}
      of \code{"list"} of \code{GlmCluster} objects.}
  }
}
\section{Methods}{
\link{plot} Display the main trajectories one by one.
}
\seealso{
  Classes: \code{\linkS4class{GlmCluster}}.\cr
  Plot : \code{plot(KmlCovList)}.
}
\note{
  Meant to be used internally.
}