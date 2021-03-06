% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/envtoverlay.R
\name{envtoverlay}
\alias{envtoverlay}
\title{Environmental variable fitting to unconstrained ordination diagrams}
\usage{
envtoverlay(PS, covariates, ordmet = "PCA")
}
\arguments{
\item{PS}{(required) A phyloseq object.}

\item{covariates}{(required) A character vector of covariates present in the
phyloseq objects sample_data().}

\item{ordmet}{Ordination method. Options are Principal Component Analysis
("PCA") or Correspondence Analysis ("CA"). Defaults to "PCA".}
}
\value{
A ggplot object.
}
\description{
Fits environmental variables as vectors (via \code{\link[vegan]{envfit}}) and
smooth surfaces (via \code{\link[vegan]{ordisurf}}) to an ordination diagram.
The figure is faceted if multiple variables are specified.
}
\examples{
\dontrun{
library(theseus)
library(phyloseq)
library(ggplot2)
data('WWTP_Impact')
cv <- c('log_NO3N', 'log_PO4')
p.eo <- envtoverlay(WWTP_Impact, covariates=cv)
p.eo
}

}
\seealso{
\code{\link[vegan]{rda}} \code{\link[vegan]{cca}}
  \code{\link[vegan]{envfit}}
  \code{\link[vegan]{ordisurf}}
}
