% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sphere.R
\name{simSphereSystem}
\alias{simSphereSystem}
\title{Simulation of sphere system}
\usage{
simSphereSystem(theta, lam, rdist, box = list(c(0, 1)), perfect = TRUE,
  pl = 0, label = "N")
}
\arguments{
\item{theta}{simulation parameters}

\item{lam}{mean number of spheres per unit volume}

\item{rdist}{string, radii random generating function name}

\item{box}{simualtion box}

\item{perfect}{logical: \code{perfect=TRUE} (default) simulate perfect}

\item{pl}{print level}

\item{label}{some character as a label, 'N' (default)}
}
\value{
list of class \code{spheres} if \code{pl}>100 or empty list
}
\description{
The function simulates a Poisson sphere system of
intensity \code{lam} where each sphere center is uniformly
distributed in a box. The function returns a list of spheres with elements
\code{id}, \code{center} and radius \code{r}.
}
\details{
Any random generating function, passed as a name, for the radii distribution is accepted as long as
the formal function parameter names match the actual parameter names exactly as defined in
the parameter list \code{theta}.

The simulation box is of type list. The vector arguments correspond to the lower and upper points in x,y
and z direction. If \code{box} has only one element, i.e. \code{list(c(0,1)}, the same extent is used for
the other dimensions. The argument \code{pl} denotes the print level of information during simulation.
Currently, only \code{pl=0} for no output and \code{pl}>100 is implemented. Argument \code{cond$rdist} is of
type string naming the (user defined) radii random generating function.
Setting \code{size} equal to 'rlnorm' generates log normally distributed radii for a stationary Poisson
ball system according to a general approach of perfect simulation (see reference below). Other distributions
currently available are the beta, gamma and uniform distribution.
}
\examples{
 theta <- list("meanlog"=-2.5,"sdlog"=0.2)
 S <- simSphereSystem(theta,lam=1000,rdist="rlnorm",pl=101)
}
\references{
\itemize{
   \item{} {C. Lantu\eqn{\acute{\textrm{e}}}joul. Geostatistical simulation. Models and algorithms.
            Springer, Berlin, 2002. Zbl 0990.86007}
	 }
}
