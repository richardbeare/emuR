\name{expand_labels}
\alias{expand_labels}
\title{
Label each data sample
}
\description{
Labels each data sample
}
\usage{
 expand_labels(indvals, labs)
}
\arguments{
\item{indvals}{
Index component of a trackdata object as returned by \code{frames}, or \code{track}.
}
\item{labs}{
A label vector parallel to \code{indvals}.
}}
\value{
Returns a vector of labels, one for each row in the data matrix that 
corresponds to \code{indvals}.
}
\seealso{
frames, track
}
\keyword{misc}
% Converted by Sd2Rd version 0.3-3.
