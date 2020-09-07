#' Data Dictionary for State-by-State Spending on Kids Dataset
#'
#' Data dictionary for the tidykids dataset, a dataset containing state-by-year data on spending on kids in the United States, 1997-2016. The data was made available by and is attributable to Julia Isaacs, Eleanor Lauderback, and Erica Greenberg at the Urban Institute under the under the ODC Attribution License (https://opendatacommons.org/licenses/by/1-0/).
#'
#' @format A tibble with 69 rows and 5 variables:
#' \describe{
#'   \item{variable_category}{Category for the variable, a string}
#'   \item{variable}{Variable as it appears in the tidykids data; a string}
#'   \item{measurement_unit}{type of variable, string}
#'   \item{allowed_values}{the possible values of the variable, a string}
#'   \item{description}{descriotion of the variable, a string}
#' }
#' @source \url{https://datacatalog.urban.org/dataset/state-state-spending-kids-dataset}
#' @import tibble
"tidykids_data_dictionary"
