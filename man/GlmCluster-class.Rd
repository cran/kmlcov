\name{GlmCluster-class}
\Rdversion{1.1}
\docType{class}
\alias{GlmCluster-class}
\alias{GlmCluster}
\title{Class \code{GlmCluster}}
\description{
\code{\linkS4class{GlmCluster}} contains all relevant information about
the trajectories obtained and the affectation to the clusters.
}
\section{Objects from the Class}{
\code{\linkS4class{GlmCluster}} is used inside \link{glmClust} and
contain all the information to plot and print the main trajectories.
}
\section{Slots}{
  \describe{
    \item{\code{formula}:}{Object of class \code{formula}. }
    \item{\code{nClust}:}{The number of clusters.}
    \item{\code{ident}:}{Name of the 'identity' column in the data.}
    \item{\code{timeVar}:}{Name of the 'time' column in the data.}
    \item{\code{time}:}{ \code{Numeric}  Vector of the time.}
    \item{\code{effectVar}:}{Name of a variable with cluster effect or not.}
    \item{\code{effect}:}{A variable effect, can be a level cluster effect or not.}
    \item{\code{model.glm}:}{A \code{glm} object.}
    \item{\code{timeParametric}:}{Object of class \code{logical}.}
    \item{\code{partition}:}{Vector of \code{integer} containing the affectation of the individuals to the clusters.}
    \item{\code{partition.long}:}{Same as partition but with repeated measures corresponding to the number of observations for each individual}
    \item{\code{proportions}:}{Proportions of individuals (trajectories) affected in each cluster}
    \item{\code{criteria}:}{A \code{matrix} which contains the values of the 'log-likelihood', the 'AIC' (Akaike Information Criterion) and 'BIC' (bayesian information criterion).}
    \item{\code{converge}:}{An object of class \code{\linkS4class{Converge}}.}
    \item{\code{nIter}:}{Number of iterations of the algorithm.}
    \item{\code{for_ggplot}:}{A \code{data.frame} containing the time
      and the typical trajectories.}
  }
}
\section{Methods}{
\link{plot,GlmCluster-method}{plot} Display the main trajectories.
}
\seealso{
  Classes: \code{\linkS4class{Converge}}.\cr
  Plot: \code{plot(GlmCluster)}.
}
\keyword{classes}
\note{
  Meant to be used internally.
}
