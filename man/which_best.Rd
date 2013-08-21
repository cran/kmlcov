\name{which_best}
\alias{which_best}
\title{Seek the best partitions}
\usage{
  which_best(kmlcovar, crit = "log-class-likelihood")
}
\arguments{
  \item{kmlcovar}{An object of class \code{KmlCovList}.}

  \item{crit}{Name of the criterion which have to be
  optimised, CLL for classification log-likelihood AIC for
  Akaike information criterion and BIC for Bayesian
  information criterion.}
}
\value{
  An object of class \code{GlmCluster} or
  \code{KmlCovList}.
}
\description{
  Seek the best partitions in an object of class
  \code{KmlCovList} and return the best one of each fixed
  number of cluster.
}
\examples{
data(artifdata)
res <- kmlCov(formula = Y ~ clust(time + time2), data = artifdata, ident = 'id',
timeVar = 'time', effectVar = 'treatment', nClust = 2:3, nRedraw = 2) # run 2 times the algorithm
best <- which_best(res) # return the best partition of each cluster
plot(best)
}
\seealso{
  \link{kmlCov}
}

