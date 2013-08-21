\name{affect_rand}
\alias{affect_rand}
\title{Affect randomly the individuals to the clusters}
\usage{
  affect_rand(nObs, nClust)
}
\arguments{
  \item{nObs}{Number of observations.}

  \item{nClust}{Number of clusters.}
}
\value{
  A [vector] of length 'nObs' containing the affectation to
  the clusters.
}
\description{
  Affect randomly the individuals to the clusters.
}
\details{
  Affect randomly the individuals to the clusters providing
  no empty clusters.
}
\note{
  Meant to be used internally.
}

