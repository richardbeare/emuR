\" -*-nroff-*-
\name{uttplot}
\alias{uttplot}
\title{
Plot a parameter for an utterance
}
\usage{
function(segs, param, data, labtype, colour = T, linetype = F, xlim = NULL, 
	ylim = NULL, xlab = "time (ms)", ylab = "", main = "", zeros = F, pdat
	 = 0.5, boundplot = T, labels = NULL, labeltimes = NULL, labcentre
	 = F, differ = NULL, smoothing = F, flipped = F, axes = T, talk = F, 
	label = F, ispk = T, \dots)
}
\arguments{
\item{segs}{
A mu+ segment list.
}
\item{param}{
One of the valid track parameters for the current segment list (see
\code{tracks}). 
}
\item{data}{
If this is provided it should be a matrix of data corresponding to
\code{param} for the segment list \code{segs}.  This data is plotted rather than
the data extracted from the database. 
}
\item{labtype}{
The type of labels to use in the utterance plot. For example if
\code{labtype = "Syllable"} then the syllable boundaries will be drawn on
the graph and labelled accordingly. 
}
\item{colour}{
If \code{TRUE} then different colours will be used for different parts of
the plot. If \code{FALSE} the plot will use only one colour (useful for prining).
}
\item{linetype}{
If \code{TRUE} then different line types will be used for the plot (useful
for printing). 
}
\item{xlim}{
The range of the x-axis (time).
}
\item{ylim}{
The range of the y-axis. 
}
\item{xlab}{
A label for the x-axis.
}
\item{ylab}{
A label for  the y-axis.
}
\item{main}{
A main title for the plot. 
}
\item{zeros}{
If TRUE, then the parts of the utterance where the probability of
voicing is less than \code{pdat} will not be plotted. This is only reliable
for the parameter track "F0".
}
\item{pdat}{
The threshold for probability of voicing used with \code{zeros}.
}
\item{boundplot}{
If TRUE, label boundaries will be drawn (for either the original
segments or the labels specified by \code{labtype}).
}
\item{labels}{
A vector of labels to be plotted instead of those corresponding to the
segment list or the labels specified by \code{labtype}. You must also
specify \code{labeltimes}. 
}
\item{labeltimes}{
A vector of times at which to plot the labels in \code{labels}. 
}
\item{labcentre}{
If TRUE, the labels in \code{labels} are drawn between the time values in
\code{labeltimes}, rather than at these times. In this case \code{labels} must
contain one less element than \code{labeltimes}.
}
\item{differ}{
An integer greater than 1. If \code{differ} is 1 the first difference (first
derivitive, or gradient) is plotted and so on. 
}
\item{smoothing}{
If TRUE, the data is smoothed before being plotted. 
}
\item{flipped}{
If TRUE, the data is inverted. 
}
\item{axes}{
If FALSE no axes are drawn on the plot. 
}
\item{talk}{
If TRUE the sample data for the utterance will be retrieved and can be
played back interactively from the plot.  
}
\item{label}{
If TRUE, labels can be added to the plot interactively. 
}
\item{ispk}{
If TRUE, the internal speaker will be used for playback of speech (in
combination with the \code{talk} argument. If FALSE, the external speaker or
headphones will be used. 


This function will also accept any of the standard graphical parameters
which can be passed to \code{par()}, for example \code{cex} which specifies the
size of characters to be used.  
}}
\section{Side Effects}{
A plot of the requested parameter track is generated.  Segment
boundaries are drawn and labelled according to the options specified.
If \code{talk} is TRUE, parts of the utterance can be played back using the
left mouse button to define the boundaries of the section to be played.
The middle mouse button quits this interaction. 
}
\seealso{
track, phon
}
\keyword{mu}
\keyword{plot}
% Converted by Sd2Rd version 0.3-3.
