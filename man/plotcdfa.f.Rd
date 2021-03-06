% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proprecruit.R
\name{plotcdfa.f}
\alias{plotcdfa.f}
\title{The proportion of a cohort of at or above difference sizes cumulative distribution}
\usage{
plotcdfa.f(
  proj.object,
  lengths.of.interest,
  birth.year,
  final.year,
  k,
  Linf,
  t0,
  cv
)
}
\arguments{
\item{proj.object}{a projection object produced by vbgrowth.f}

\item{lengths.of.interest}{(often the length at recruitment to the fishery or a valuable size}

\item{birth.year}{four digit year of birth}

\item{final.year}{four digit final year of the growth projection (birth year + average max age is a good)}

\item{k}{VB k}

\item{Linf}{VB maximum length (cm)}

\item{t0}{VB t-zero}

\item{cv}{coefficient of variation on length for an age}
}
\description{
Using a Von Bertalanffy growth function and parameters you supply, this determines the proportion
of a cohort's numbers and biomass that are at or above different size classes each year and plots them. A helper
function not usually called directly. It is called by the overall vbrecruit function.
}
\examples{
vbrecruit.f(birth.year=2011, final.year = 2050, Linf = 42, k = 0.086, t0 = -1.57, cv = 0.089,
   lengths.of.interest=c(22,25,27,30))
cohort.props.f(birth.year=2011, final.year = 2030, Linf = 42, k = 0.086, t0 = -1.57, cv = 0.089)
vb.growth.f(age.vector=1:40,Linf=42,k=0.086,t0=-1.57,cv=0.089)
}
\keyword{VonBertalanffy}
\keyword{age}
\keyword{growth}
\keyword{recruit}
