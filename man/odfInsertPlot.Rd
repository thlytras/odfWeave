\name{odfInsertPlot}
\alias{odfInsertPlot}
\title{Write XML for image inseration}
\description{
Writes ODF markup to allow images in documents. Also can copy
the image file to the Picture directory.
}
\usage{
odfInsertPlot(file, height, width, units = "in", anchor =
              c("<text:p>", "</text:p>"), name = paste("graphics",
              floor(runif(1) * 1000), sep = ""), externalFile =
              FALSE, dest = paste(getwd(), "/Pictures", sep = ""),
              caption = NULL)
}
\arguments{
  \item{file}{a string for the image file location}
  \item{height}{the dispay height of the image}
  \item{width}{the dispay width of the image}
  \item{units}{the units for the display dimensions}
  \item{anchor}{a character vector of length 2. The image markup will be 
  sandwiched between these two elements}
  \item{name}{a name for the figure}
  \item{dest}{the locaiton of the pciture directory}
  \item{externalFile}{a logical; was the plot automatically generated by
    R during Sweaving? If \code{TRUE}, then the file is copied to the
    \code{Pictures} directory.}
  \item{caption}{either \code{NULL} (for no caption) or the output of \code{odfFigureCaption}. Note that specifying a caption results in the iamge being placed within a frame}
}
\value{
a character string
}
\author{Max Kuhn}

\examples{
odfInsertPlot("plot.png", 4, 4)
}
\keyword{utilities}
