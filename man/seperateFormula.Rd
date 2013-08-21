\name{seperateFormula}
\alias{seperateFormula}
\title{Separate the covariates in a formula}
\usage{
  seperateFormula(formula)
}
\arguments{
  \item{formula}{A symbolic description of the model. In
  the parametric case we write for example \code{ y ~
  clust(time+time2) + pop(sex)}, here 'time' and 'time2'
  will have a different effect according to the cluster,
  the 'sex' effect is the same for all the clusters. In the
  non-parametric case only one covariate is allowed.}
}
\value{
  A list of 1 or 2 [formula].
}
\description{
  Separate the covariates from a 'formula' with a cluster
  effect from the ones with an identical effect in each
  cluster if provided.
}
\details{
  Given a 'formula' of the form \code{Y ~ clust(T1 + T2 +
  ...) + pop(X1 + X2 + ...)} or just \code{Y ~ clust(T1 +
  T2 + ...)}, it returns a list of two or one 'formula' of
  the form \code{Y ~ T1 + T2 + ...} and \code{ ~ X1 + X2 +
  ...} if provided.\cr The first element of the list
  correspond to the covariates with a different effects
  corresponding to the cluster, the 2nd correspond to
  covariates having an identical effect in each cluster.\cr
  In the non-parametric case only \bold{one} covariate is
  allowed.
}
\note{
  Meant to be used internally.
}

