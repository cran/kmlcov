\name{kmlCov}
\alias{kmlCov}
\title{Clustering longitudinal data from different starting conditions}
\usage{
  kmlCov(formula, data, ident, timeVar, nClust = 2:6,
    nRedraw = 20, family = 'gaussian', effectVar = '',
    weights = rep(1,nrow(data)) , timeParametric = TRUE,
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
  of patients must have all the measurements at all fixed
  times.}

  \item{nClust}{The number of clusters, at leas 2 an at
  most 26.}

  \item{nRedraw}{The number of time the algorithm is re-run
  with different starting conditions.}

  \item{ident}{The name of the column identity.}

  \item{timeVar}{Specify the column name of the time
  variable.}

  \item{family}{A description of the error distribution and
  link function to be used in the model, by default
  'gaussian'. This can be a character string naming a
  family function, a family function or the result of a
  call to a family function.  (See 'family' for details of
  family functions).}

  \item{effectVar}{An effect, can be a level cluster effect
  or not.}

  \item{weights}{Vector of 'prior weights' to be used in
  the fitting process, by default the weights are equal to
  one.}

  \item{timeParametric}{By default [TRUE] thus parametric
  on the time. If [FALSE] then only one covariate is
  allowed in the formula and the algorithm used is the
  k-means.}

  \item{separateSampling}{By default [TRUE] it means that
  the proportions of the clusters are supposed equal in the
  classification step, the log-likelihood maximised at each
  step of the algorithm is \eqn{\sum_{k=1}^{K}\sum_{y_i \in
  P_k} \log(f(y_i, \theta_k))}, otherwise the proportions
  of clusters are taken into account and the log-likelihood
  is \eqn{\sum_{k=1}^{K}\sum_{y_i \in P_k}
  \log(\lambda_{k}f(y_i, \theta_k))}.}

  \item{max_itr}{The maximum number of iterations fixed at
  100.}

  \item{verbose}{Print the output in the console.}
}
\value{
  A an object of class \code{KmlCovList}.
}
\description{
  'kmlCov' re-launch the algorithm implemented in
  \link{glmClust}, for clustering longitudinal data
  (trajectories), several times with different starting
  conditions and various number of clusters.
}
\details{
  The purpose of \code{kmlCov} is clustering longitudinal
  data, as well as \link{glmClust}, and automate the
  procedure of re-launching the algorithm from different
  starting conditions by specifying \code{nRedraw}.\cr

  The algorithm depends greatly of the starting conditions
  (initial affectation on the trajectories/individuals), so
  it is recommanded to run the algorithm multiple times in
  order to explore the space of the solutions. \cr

  'kmlCov' return a list of list of \code{GlmCLuster}, the
  partitions are compared using as criterion the
  \bold{classification log-likelihood}, the higher are the
  best partitions.
}
\examples{
data(artifdata)
res <- kmlCov(formula = Y ~ clust(time + time2), data = artifdata, ident = 'id',
timeVar = 'time', effectVar = 'treatment', nClust = 2:3, nRedraw = 2) #run 2 times for each cluster
}
\seealso{
  \link{glmClust} \cr \link{which_best}
}

