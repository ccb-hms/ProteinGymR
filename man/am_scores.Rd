% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/am_scores.R
\name{am_scores}
\alias{am_scores}
\title{AlphaMissense scores for ProteinGym variants}
\usage{
am_scores(metadata = FALSE)
}
\arguments{
\item{metadata}{Logical, whether only experiment metadata should be returned.
Default behavior is to return processed data with metadata included.}
}
\value{
Returns a \code{\link[=data.frame]{data.frame()}}.
}
\description{
AlphaMissense scores for ProteinGym variants
}
\details{
\code{am_scores()} loads in the AlphaMissense pathogencity scores for
substitutions matching those in the ProteinGym DMS assays. The table is taken
from the AlphaMissense Supplementary Data by Cheng et al. 2023.
See reference for details.

The columns contain:
\describe{
\item{\code{DMS_id}:}{Character, ProteinGym assay identifier.}
\item{\code{Uniprot_ID}:}{Character, UniProt accession identifier.}
\item{\code{variant_id}:}{Character, variant identifier string matching
ProteinGym. Protein position in the middle, and the reference and mutant
amino acid residues to the left and right of the position, respectively.}
\item{\code{AlphaMissense}:}{Numeric, AlphaMissense pathogenicity score.}
}
}
\examples{
data <- am_scores()
data_meta <- am_scores(metadata = TRUE)

}
\references{
Cheng et al. (2023)
Accurate proteome-wide missense variant effect prediction with AlphaMissense.
\emph{Science} 391, eadg7492. DOI:10.1126/science.adg7492.
}
