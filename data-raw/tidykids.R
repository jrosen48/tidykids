d <- purrr::map_df(1:69,  readxl::read_excel, path = here::here("data-raw", "State-by-State Spending on Kids.xlsx"))

dict <- readxl::read_excel(path = here::here("data-raw", "State-by-State Spending on Kids Data Dictionary File_2.xlsx"))

d$worksheet <- rep(dict$`Variable name`, each = 51)
d$type_of_var <- rep(c(rep("raw", 51), rep("inf_adj", 51), rep("inf_adj_perchild", 51)), 23)

tidykids <- tidyr::gather(d, key, val, -state, -worksheet, -type_of_var)

generic_name <- stringr::str_split(tidykids$worksheet, "_real")

tidykids$worksheet <- purrr::map_chr(generic_name, ~.[[1]])

tidykids <- tidyr::pivot_wider(tidykids, names_from = type_of_var, values_from = val)

tidykids <- dplyr::rename(tidykids, variable = worksheet, year = key)

readr::write_csv(dict, "data-raw/tidykids_data_dictionary.csv")

usethis::use_data(tidykids, overwrite = TRUE)
