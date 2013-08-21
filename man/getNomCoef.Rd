\name{getNomCoef}
\alias{getNomCoef}
\title{Get the name of the coefficients in the 'glm' object according to the current cluster}
\usage{
  getNomCoef(covar, cov_fix, nomClust, itrClust, parametric
    = TRUE)
}
\arguments{
  \item{covar}{A vector of [character] indicating the
  covariates with a levec cluster effect.}

  \item{cov_fix}{A vector of [character] indicating the
  covariates with the same effect in each cluster.}

  \item{nomClust}{The beginning of the name of the
  undicator covariates, by default 'G[letters]'.}

  \item{itrClust}{The number of the current cluster.}

  \item{parametric}{By default [TRUE] for parametric on
  time.}
}
\value{
  A vector of [character] giving the name of the
  coefficients associated to awith a given cluster.
}
\description{
  This function creates and return a vector containing the
  name of the coefficients associated to the current
  cluster.
}
\details{
  Given the name of the covariates and the number of the
  current cluster, it constructs a vector used to retrieve
  the coefficients from a 'glm' object, these coefficients
  are used to calculate the predicted values of the current
  cluster.
}
\note{
  Meant to be used internally.
}

