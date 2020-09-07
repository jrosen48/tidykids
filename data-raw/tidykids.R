d <- purrr::map_df(1:69,  readxl::read_excel, path = here::here("State-by-State Spending on Kids_0.xlsx"))

dict <- readxl::read_excel(path = here::here("State-by-State Spending on Kids Data Dictionary File_0.xlsx"))

d$worksheet <- rep(dict$`Variable name`, each = 51)

tidykids <- tidyr::gather(d, key, val, -state, -worksheet)

tidykids <- dplyr::rename(tidykids, variable = worksheet, year = key, value = val)

usethis::use_data(tidykids, overwrite = TRUE)
