\description{
tests whether the difference between two or more regression lines
is significant
}
\usage{
slope.test(\dots)
}
\arguments{
\item{...}{
this function takes any number of two column matrices.
The first column is the y-data (in the case of locus equations, this
is the vowel onset) and the second column is the x-data (in the case of
locus equations, vowel target). 
}}
\value{
The return value consists of the following componenets:

\item{separate}{
slope, intercept, r-squared, F-ratio, "d(egrees of) f(reedom)"
and "prob(ability that) line fits data" for the separate data matrices entered.
}
\item{combined}{
F-ratio, "d(egrees of) f(reedom)", and "Probability of 
them being DIFFERENT" for the slope and for the intercept of the combined
data. 
}
\item{x}{
the combined x-data for all the matrices. 
}
\item{y}{
the combined y-data for all the matrices. 
}
\item{mat}{
the category vectors for the combined data 
(consists of 1, 0 and -1). 
}
\item{numrows}{
the number of rows in each matrix. 
}
\item{numcats}{
the sum number of matrices entered. 


}}
\references{
see E. Pedhazur, Multiple Regression in Behavioral Research
p.436-450, 496-507. 
}
\seealso{
lm(), summary.lm(), pf()
}
\keyword{~keyword}
% Converted by Sd2Rd version 0.3-3.


