\name{dextract}
\alias{dextract}
\alias{dextract.sub}
\title{Extract a subset of data from a trackdata object}

\description{ A function that cuts up trackdata either at a proportional
 time or proportionally between two times. It is a subsidiary function
 of dplot() }

\usage{
dextract(dataset, start, end)
}

\arguments{
 \item{dataset}{A trackdata object}

 \item{start}{ A single valued numeric vector corresponding to a
 proportional time between zero (the onset of the trackdata) and one
 (the offset of the trackdata).}

 \item{end}{ As start, but optional}
}
\value{
  If both start and end are specified, a trackdata object
is returned, otherwise a vector if the original trackdata
is one-dimensional and the end argument
is not used, or a matrix if the original trackdata
has more than one dimension and the end argument is not used
}

\author{ Jonathan Harrington}

\seealso{\code{dcut}}

\examples{
data(demo.vowels.f0)
data(demo.vowels.fm)

form = demo.vowels.fm
# get the formants at the midpoint: f50 is a matrix
# same as dcut(form, .5, prop=TRUE)
f50 = dextract(form, 0.5)
# get the formants between the 25% and 75% time points
# fcut is a trackdata object
# same as dcut(form, .25, .75, prop=TRUE)
fcut = dextract(form, 0.25, 0.75)
# get  F0 at the midpoint. fzero50 is a vector
# same as dcut(fzero, .5, prop=TRUE)
fzero = demo.vowels.f0
fzero50 = dextract(fzero, 0.5)

}
\keyword{datagen}
