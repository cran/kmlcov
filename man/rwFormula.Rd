\name{rwFormula}
\alias{rwFormula}
\title{Rewrite the formula with all the covariates}
\usage{
  rwFormula(formula, col.names, ident)
}
\arguments{
  \item{formula}{: An object of type 'formula' of the form
  \code{y ~ .}}

  \item{col.names}{: Name of the columns in the data.}

  \item{ident}{: Name of the identity column in the data.}
}
\value{
  : A 'formula' with all covariates.
}
\description{
  Rewrite a given formula with all the covariates, so do
  note have to write them all.
}
\note{
  Meant to be used internally.
}

