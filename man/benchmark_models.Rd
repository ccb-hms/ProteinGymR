% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/benchmark_models.R
\name{available_models}
\alias{available_models}
\alias{benchmark_models}
\title{Benchmark Variant Effect Prediction Models}
\usage{
available_models()

benchmark_models(
  metric = c("AUC", "MCC", "NDCG", "Spearman", "Top_recall"),
  models = available_models()
)
}
\arguments{
\item{metric}{\code{character()} a model performance metric to
benchmark ("AUC", "MCC", "NDCG", "Spearman", "Top_recall").}

\item{models}{\code{character()} a character vector of up to five variant effect
prediction models to compare. Valid models can be seen with
\code{available_models()}.}
}
\value{
\code{benchmark_models()} returns a \code{ggplot} object visualizing a chosen
model performance metric across several variant effect prediction models,
ordered by highest to lowest mean performance score.
}
\description{
\code{benchmark_models()} plots one of the five model performance
metrics ("AUC", "MCC", "NDCG", "Spearman", "Top_recall") for up to
5 user-specified variant effect prediction tools listed in
\code{available_models()}. See reference for more details about the metrics
and models.
}
\examples{
# Currently support models
available_models()

benchmark_models(metric = "Spearman", models = c("Site_Independent", 
"DeepSequence_single", "ESM2_15B", "GEMME", "CARP_640M"))

benchmark_models(models = "GEMME")

}
\references{
Notin, P., Kollasch, A., Ritter, D., van Niekerk, L., Paul, S.,
Spinner, H., Rollins, N., Shaw, A., Orenbuch, R., Weitzman, R., Frazer, J.,
Dias, M., Franceschi, D., Gal, Y., & Marks, D. (2023).
ProteinGym: Large-Scale Benchmarks for Protein Fitness Prediction and
Design. In A. Oh, T. Neumann, A. Globerson, K. Saenko, M. Hardt, &
S. Levine (Eds.), \emph{Advances in Neural Information Processing Systems}
(Vol. 36, pp. 64331-64379). Curran Associates, Inc.
}
