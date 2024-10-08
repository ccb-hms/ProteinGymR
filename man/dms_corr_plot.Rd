% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dms_corr_plot.R
\name{dms_corr_plot}
\alias{dms_corr_plot}
\title{Integrate ProteinGym DMS and AlphaMissense Pathogenicity Scores}
\usage{
dms_corr_plot(uniprotId, alphamissense_table, dms_table)
}
\arguments{
\item{uniprotId}{\code{character()} a valid UniProt accession identifier.}

\item{alphamissense_table}{a table containing AlphaMissense predictions
for variants matching ProteinGym substitution mutants. The default is
the supplemental table from the AlphaMissense paper.
Alternatively, a user-defined \code{\link[tibble:tbl_df-class]{tibble::tbl_df}} or \code{\link{data.frame}}
can be supplied.}

\item{dms_table}{a table containing deep mutational scanning (DMS)
assay scores for mutations. The default table loads substitutions from
\href{https://proteingym.org/download}{ProteinGym}.
Alternatively, a user-defined \code{\link[tibble:tbl_df-class]{tibble::tbl_df}} or \code{\link{data.frame}}
can be supplied.}
}
\value{
\code{dms_corr_plot()} returns a \code{ggplot} object visualizing
the Spearman correlation between experimental DMS scores and AlphaMissense
predicted scores and prints the r and p-value of the analysis to console.
Generally, a stronger negative correlation corresponds to a tighter
relationship between the two measures.
}
\description{
\code{dms_corr_plot()} runs a Spearman correlation
between ProteinGym deep mutational scanning (DMS) assay scores and
AlphaMissense predicted pathogenicity scores.
Returns a ggplot object for visualization.
}
\details{
For \code{dms_corr_plot()},
\code{alphamissense_table} columns must include:
\itemize{
\item \code{UniProt_id}: UniProt accession identifier.
\item \code{mutant}: Mutant identifier string matching the dms_table format.
Protein position in the middle, and the reference and mutant
amino acid residues to the left and right of the position, respectively.
\item \code{AlphaMissense}: AlphaMissense pathogenicity score.
}

\code{dms_table} columns must include:
\itemize{
\item \code{UniProt_id}: UniProt accession identifier.
\item \code{mutant}: Mutant identifier string matching AlphaMissense variants.
Specifically, the set of substitutions to apply on the reference sequence
to obtain the mutated sequence (e.g., A1P:D2N implies the amino acid 'A'
at position 1 should be replaced by 'P', and 'D' at position 2 should be
replaced by 'N').
\item \code{DMS_score}: Experimental measurement in the DMS assay.
Higher values indicate higher fitness of the mutated protein.
}
}
\examples{

dms_corr_plot(uniprotId = "Q9NV35")


}
\references{
Cheng et al.,
Accurate proteome-wide missense variant effect prediction with AlphaMissense.
\emph{Science} 381, eadg7492. DOI:10.1126/science.adg7492.

Notin, P., Kollasch, A., Ritter, D., van Niekerk, L., Paul, S.,
Spinner, H., Rollins, N., Shaw, A., Orenbuch, R., Weitzman, R., Frazer, J.,
Dias, M., Franceschi, D., Gal, Y., & Marks, D. (2023).
ProteinGym: Large-Scale
Benchmarks for Protein Fitness Prediction and Design. In A. Oh, T. Neumann,
A. Globerson, K. Saenko, M. Hardt, & S. Levine (Eds.), \emph{Advances in
Neural Information Processing Systems} (Vol. 36, pp. 64331-64379).
Curran Associates, Inc.
}
