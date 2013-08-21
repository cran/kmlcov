\name{predict_clust}
\alias{predict_clust}
\title{Creates a character string expression to calculate the predicted values}
\usage{
  predict_clust(cov, nomCoef, nom_model)
}
\arguments{
  \item{cov}{Name of the covariates.}

  \item{nomCoef}{Name of the coefficients.}

  \item{nom_model}{Name of the glm model.}
}
\value{
  A character string of the expression of the predicted
  values of a given cluster.
}
\description{
  Given the covariates and the name of the coefficients
  corresponding to a given cluster, the function construct
  a character string, which will be used to calculate the
  predicted values.
}
\details{
  To calculate the predicted values in each cluster, we
  need the values of the covariates in the data and the
  right coefficients in the 'glm' object. To do this we
  construct an expression which will be evaluated inside
  \code{\link{glmClust}}.
}
\note{
  Meant to be used internally.
}

