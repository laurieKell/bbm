% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BBMctrl.R
\docType{class}
\name{BBM.control}
\alias{BBM.control}
\alias{BBM.control-methods}
\alias{BBM.control-class}
\alias{BBM.control,missing-method}
\alias{BBM.control,FLQuant-method}
\alias{BBM.controlcpp-class}
\title{BBM.control class for setting the control parameters for the BBM function.}
\usage{
\S4method{BBM.control}{missing}(object, ...)
}
\description{
BBM.control class for setting the control parameters for the BBM function.
}
\section{Slots}{

\itemize{
\item{g        }{: \code{c(rec=numeric(1), adult=numeric(1))} - instantaneous rate of biomass decrease, g = M - G, for recruits (rec) and adults (adult).}
\item{param.fix}{: \code{BBMpar}                              - with value 1 if the parameter is fixed and 0 otherwise.}
}
}

\section{Validity}{

\describe{
\item{Dimensions}{: slot g must be a vector of length 2 and with the names 'rec' and 'adult'.}
\item{Class     }{: slot param.fix must be of class \code{BBMpar}.}
}
You can inspect the class validity function by using
\code{getValidity(getClassDef('BBM.control'))}
}

\section{Constructor}{

A construction method exists for this class that can take named arguments for
any of its slots. All slots are then created to match the requirements of the
class validity. If \code{nyears} or \code{nyears} object is provided, this is used
for sizing but not stored in any slot.
}

\section{Methods}{

Methods exist for various calculations based on values stored in the class:

\describe{
\item{xxx}{: XXX.}
}
}

\examples{

# Load required libraries
library(bbm)

# Load data
data(ane)

# Generate an object of BBMpar class (different alternatives)
BBM.control()                # empty object
slotNames(BBM.control())          # slots

BBM.control( g=c(rec=0.68, adult=0.68), param.fix=BBMpar(nyear=20, nindex=3)) # setting values for the slots
# BBM.control( g=c(adult=0.68))                                                 # but with some restrictions
BBM.control( g=c(rec=0.68, adult=0.68))

# Run assessment (control must be of class BBM.control)
class(control.ane)
run <- BBM(catch.ane, indices=indices.ane, control=control.ane, inits=inits.ane)
run


}
\seealso{
\link{BBM}
}
\author{
Leire Ibaibarriaga & Sonia Sanchez
}
\keyword{classes}
