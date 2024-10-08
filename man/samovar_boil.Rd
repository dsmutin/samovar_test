% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/samovar_boil.R
\name{samovar_boil}
\alias{samovar_boil}
\title{Generate artificial data}
\usage{
samovar_boil(samovar_base, n = 1, init_sp, init_value)
}
\arguments{
\item{samovar_base}{samovar data after preprocessing and building stages}

\item{n}{number of artificial samples to generate}

\item{init_sp}{species vector for initializing data generation, or FALSE for automatic usage}

\item{init_value}{species amount vector (values from 0 to 1) for initializing data generation, or FALSE for automatic usage}
}
\description{
Use pre-built samovar_data with its parameters
}
\examples{
# download and prepare data
samovar <- GMrepo_type2data(number_to_process = 2000) \%>\%
  teatree_trim(treshhold_species = 3, treshhold_samples = 3, treshhold_amount = 10^(-3)) \%>\%
  tealeaves_pack(normalization_function = function(x) log10(x+1)) \%>\%
  teabag_brew(min_cluster_size = 4, max_cluster_size = 6) \%>\%
  concotion_pour()

# generate
new_data <- samovar \%>\%
  samovar_boil(n = 100)


}
