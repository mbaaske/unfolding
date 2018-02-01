# Description
Stereological unfolding the joint size-shape-orientation distribution of spheroidal shaped particles

# Abstract
Stereological unfolding as implemented in this package consists in the estimation of the joint size-
shape-orientation distribution of spheroidal shaped particles based on the same measured quantities
of corresponding planar section profiles. A single trivariate discretized version of the (stereological)
integral equation in the case of prolate and oblate spheroids is solved numerically by the EM algo-
rithm. The estimation of diameter distribution of spheres from planar sections (Wicksell’s corpuscle
problem) is also implemented. Further, the package provides routines for the simulation of a Pois-
son germ- grain process with either spheroids, spherocylinders or spheres as grains together with
functions for planar sections. For the purpose of exact simulation a bivariate size-shape distribution
is implemented.

# Installation: 
devtools::install_github("mbaaske/unfolding")

# Spheres as particles
## beta distributed radii
lam <-3000 <br />
theta <- list("shape1"=2,"shape2"=4) <br />
S <- simSphereSystem(theta,lam, rdist="rbeta", box=list(c(0,5)),pl=101) <br />
 
sp <- planarSection(S,d=2.5) <br />
ret <- unfold(sp,nclass=20) <br />
 
## Point process intensity
cat("Intensities: ", sum(ret$N_V)/25, "vs.",lam,"\n") <br />
 
## original diameters
r3d <- unlist(lapply(S,function(x) 2.0*x$r))<br />
rest3d <- unlist(lapply(2:(length(ret$breaks)),function(i) rep(ret$breaks[i],sum(ret$N_V[i-1]))))<br />
 
op <- par(mfrow = c(1, 2))<br />
hist(r3d[r3d<=max(ret$breaks)], breaks=ret$breaks, main="Radius 3d",freq=FALSE, col="gray",xlab="r")<br />     
hist(rest3d, breaks=ret$breaks,main="Radius estimated", freq=FALSE, col="gray", xlab="r")<br />
par(op)
