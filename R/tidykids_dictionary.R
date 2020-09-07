##' Data dictionary for the tidykids dataset
##' @return A tibble with the variable descriptions
##' @export

data_dictionary <- function() {

    dict <- readxl::read_excel(path = here::here("data-raw", "State-by-State Spending on Kids Data Dictionary File_0.xlsx"))

    dict <- janitor::clean_names(dict)

    dict

}
