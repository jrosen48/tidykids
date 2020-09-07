#' State-by-State Spending on Kids Dataset
#'
#' A dataset containing state-by-year data on spending on kids in the United States, 1997-2016. The data was made available by and is attributable to Julia Isaacs, Eleanor Lauderback, and Erica Greenberg at the Urban Institute under the under the ODC Attribution License (https://opendatacommons.org/licenses/by/1-0/).
#'
#' @format A data frame with 70380 rows and 4 variables:
#' \describe{
#'   \item{state}{United States state (and the District of Columbia), a string}
#'   \item{variable}{Variable, see tidykids_data_dictionary for more information, a string}
#'   \item{year}{year, an integer}
#'   \item{value}{the value of the variable; a numeric value}
#' }
#' @source \url{https://datacatalog.urban.org/dataset/state-state-spending-kids-dataset}
#' @import tibble
"tidykids"
