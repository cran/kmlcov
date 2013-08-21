\name{log_lik}
\alias{log_lik}
\title{Calculate the log-likelihood}
\usage{
  log_lik(y, n, mu, wt, family, nparam, disp_mod)
}
\arguments{
  \item{y}{Observed values.}

  \item{n}{Vector of '1's and same length as y.}

  \item{mu}{Predicted values.}

  \item{wt}{Weights.}

  \item{family}{An object of class \code{\link{family}}.}

  \item{nparam}{Number of parameters of the model.}

  \item{disp_mod}{Dispersion of the 'glm' model.}
}
\value{
  The log-likelihood of an individual (trajectory).
}
\description{
  The log-likelihood is calculated with taking into account
  the type of data ('gaussian', 'binomial', ... etc) and
  the link function.
}
\details{
  This function calculates the log-likelihood for the
  exponential \code{\link{family}}, it uses the 'AIC'
  function to realise this operatin.
}
\note{
  Meant to be used internally.
}

