\name{kmlcov-package}
\alias{kmlcov-package}
\alias{kmlcov}
\docType{package}
\title{
Clustering longitudinal data using the likelihood as a metric of
distance
}
\description{
'kmlcov' Cluster longitudinal data using the likelihood as a metric of
distance. The generalised linear model allow the user to introduce 
covariates with different level effects (2 levels).
}
\details{
\tabular{ll}{
Package: \tab kmlcov\cr
Type: \tab Package\cr
Version: \tab 1.0.1\cr
Date: \tab 2013-08-21\cr
Authors@R: \tab c(person("Mamoun O", "Benghezal", role = c("aut", "cre"), email =
                "mobenghezal@gmail.com"), 
                person("Christophe", "Genolini", role = c("ctb"), email = "christophe.genolini@u-paris10.fr"),
                )\cr
License: \tab GPL-2\cr
Depends: \tab 
methods\cr
Collate: \tab 
'functions4glmClust.R'
'GlmCluster.R'
'glmclust-internal.R'
'glmClust.R'
'kmlcov-package.R'
'kmlCov.R'\cr
}



Index:
\preformatted{
glmClust                Clustering longitudinal data
kmlCov                  Clustering longitudinal data from different
                        starting conditions
which_best              Seek the best partitions

Converge-class          Class '"Converge"'
GlmCluster-class        Class '"GlmCluster"'
KmlCovList-class        Class '"KmlCovList"'
addIndic                Create the new formula with the indicator
                        covariates
affect_rand             Affect randomly the individuals to the clusters
getNomCoef              Get the name of the coefficients in the 'glm'
                        object according to the current cluster
log_lik                 Calculate the log-likelihood
lowcyclo                Measures of creatinine and time among cardiac
                        transplant patients.
majIndica               Calculate an indicator vector
observance              Measures of obsevance.
plot,GlmCluster-method
                        Plot the main trajectories
plot,KmlCovList-method
                        Plot the main trajectories
predict_clust           Creates a character string expression to
                        calculate the predicted values
rwFormula               Rewrite the formula with all the covariates
seperateFormula         Separate the covariates in a formula
show,Converge-method    Method for function 'show'

}
}
\section{Overview}{
To cluster longitudinal data, 'kmlcov' implement an ECM type algorithm
which assign the trajectories to the cluster which maximise the
likelihood.\cr
It is possible to introduce covariates via the generalised linear model
with different level effects (2 levels) all spedified in one
formula.\cr
The package implements the \code{plot} function to produce the diagrams
at the condition of not having more than 2 different effects (although
the program can deal with more than two effects) for e.g. \code{time} and
\code{treatment} or \code{time} and \code{sex} q.v. the help of
link{glmClust} or \link{kmlCov}. To plot the main trajectories with more
than two effects we recommand to use \code{ggplot} of the package \code{ggplot2}.\cr

To cluster longitudinal data, 2 functions have to be remembered
\link{glmClust} and \link{kmlCov}, the first run the algorithm for
clustering one time and the second run the same algorithm multiple times
with different starting conditions. The method is greatly sensitive to
the initial conditions, we therefore recommand to use \code{kmlCov}
although it takes much more time.
}
\seealso{
  \link{kmlCov}\cr
  \link{glmClust}\cr
  \link{which_best}
}