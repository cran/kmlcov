\name{glmClust}
\alias{glmClust}
\title{Clustering  longitudinal data}
\usage{
  glmClust(formula, data, ident, timeVar, nClust, family =
    'gaussian', effectVar = '', weights =
    rep(1,nrow(data)), affUser, timeParametric = TRUE,
    separateSampling = TRUE, max_itr = 100, verbose = TRUE)
}
\arguments{
  \item{formula}{A symbolic description of the model. In
  the parametric case we write for example 'y ~
  clust(time+time2) + pop(sex)', here 'time' and 'time2'
  will have a different effect according to the cluster,
  the 'sex' effect is the same for all the clusters. In the
  non-parametric case only one covariate is allowed.}

  \item{data}{A [data.frame] in long format (no missing
  values) which means that each line corresponds to one
  measure of the observed phenomenon, and one individual
  may have multiple measures (lines) identified by an
  identity column. In the non-parametric case the totality
  of patients must have all the measurements at fixed
  times.}

  \item{nClust}{The number of clusters, between 2 and 26.}

  \item{ident}{Name of the column identity in the data.}

  \item{timeVar}{Name of the 'time' column in the data.}

  \item{family}{A description of the error distribution and
  link function to be used in the model, by default
  'gaussian'. This can be a character string naming a
  family function, a family function or the result of a
  call to a family function.  (See \link{family} for more
  details of family functions).}

  \item{effectVar}{Name of the effect specified or not in
  the formula is has level cluster effect or not
  (optional), note that this parameter is useful for the
  function \link{plot}}

  \item{weights}{Vector of 'prior weights' to be used in
  the fitting process, by default the weights are equal to
  one.}

  \item{affUser}{Initial affectation of the individuals in
  a [data.frame] format, if missing the individuals are
  randomly assigned to the clusters so it is optional .}

  \item{timeParametric}{By default [TRUE] thus parametric
  on the time. If [FALSE] then only one covariate is
  allowed in the formula and the algorithm used is the
  k-means.}

  \item{separateSampling}{By default [TRUE] it means that
  the proportions of the clusters are supposed equal in the
  classification step, the log-likelihood maximised at each
  step of the algorithm is \eqn{\sum_{k=1}^{K}\sum_{y_i \in
  P_k} \log(f(y_i, \theta_k))}{}, otherwise the proportions
  of clusters are taken into account and the log-likelihood
  is \eqn{latex}{\sum_{k=1}^{K}\sum_{y_i \in P_k}
  \log(\lambda_{k}f(y_i, \theta_k))}.}

  \item{max_itr}{The maximum number of iterations fixed at
  100.}

  \item{verbose}{Print the output in the console.}
}
\value{
  An object of class \linkS4class{GlmCluster}.
}
\description{
  'glmClust' cluster longitudinal data (trajectories) using
  the likelihood as a metric of distance, it also deals
  with multiples covariates with different effects using
  the generalised linear model 'glm'.
}
\details{
  'glmClust' implements an ECM (esperance classification
  maximisation) type algorithm which assigns the
  trajectories to the cluster maximising the likelihood.
  The procedure is repeated until no change in the
  partitions or no sufficient increase in the likelihood is
  possible.\cr

  'glmClust' also deals with multiple covariates with
  different level effects, different in each cluster and/or
  identical for all of them.\cr

  The introduction of covariates is possible thanks to
  'glm' which fits a generalised linear model and take into
  account the type of the response (normal, binomial,
  Poisson ...etc) and the link function. \cr

  Several parameters of 'glmClust' are in common with
  'glm', like the \code{formula} which requires a
  particular attention by specifying the covariates with a
  cluster effect, for e.g. \code{clust(T1+T2+..+Tn)}, the
  covariates with an identical effect in each cluster are
  specified with the keyword \bold{pop}, for e.g.
  \code{pop(X1+X2+..+Xn)}, note that these last covariates
  are optional. \cr The data are in the long format and no
  missing values are allowed.\cr

  In the parametric case (\code{timeParametric = TRUE})
  multiples covariates are allowed, in the non-parametric
  case only one covariate is allowed.\cr

  The algorithm depends greatly on the starting condition,
  which is obtained by randomly affecting the trajectories
  to the clusters unless the user introduce his own
  partition. To obtain better results it is desirable to
  run the algorithm several times from different starting
  points, therefore it is preferable to use \link{kmlCov}
  which runs the algorithm several times with different
  number of clusters.

  At the end of the algorithm, an object of class
  \linkS4class{GlmCluster} is returned and contains
  information about the affectation of the trajectories,
  the proportions, the convergence, ...etc. The main
  trajectories can be simply visualised by
  \code{plot(my_GlmCluster_Object)}.
}
\examples{
data(artifdata)
res <- glmClust(formula = Y ~ clust(time + time2 + time3) + pop(treatTime),
data = artifdata, ident = 'id', timeVar = 'time', effectVar = 'treatment', nClust = 4)
# the trajectories with indices 0 indicate the ones with a normal treatment, 1 indicate a high dose
# the color indicates the clusters
# the proportions are in the table above the diagram
plot(res)
}
\seealso{
  \link{kmlCov}
}

