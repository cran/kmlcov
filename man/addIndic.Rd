\name{addIndic}
\alias{addIndic}
\title{Create the new formula with the indicator covariates}
\usage{
  addIndic(covar, nClust, parametric = TRUE, nomClust =
    'G')
}
\arguments{
  \item{covar}{A 'character' vector of covariates.}

  \item{nClust}{Number of clusters.}

  \item{parametric}{If [TRUE] it means we are parametric on
  time.}

  \item{nomClust}{The beginning of the name of the
  indicator covariates 'Ga, Gb, .., etc.}
}
\value{
  A character string which will be used as a 'formula'.
}
\description{
  Write the new formula given the covariates with a level
  cluster effect, the number of clusters and the type
  parametric on time or not.
}
\details{
  Given the covariates and the number of clusters, it
  returns a character string which will be converted inside
  \code{\link{glmClust}} to a formula to represent the
  covariates with different cluster effect.
}
\note{
  Meant to be used internally.
}

