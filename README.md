
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidykids

<!-- badges: start -->

<!-- badges: end -->

The Urban Institute created an incredible dataset on State-by-State
Spending on Kids (availalble from
<https://datacatalog.urban.org/dataset/state-state-spending-kids-dataset>).
This data package provides this dataset in a tidy format. The data was
made available by and is attributable to Julia Isaacs, Eleanor
Lauderback, and Erica Greenberg at the Urban Institute under the under
the ODC Attribution License
(<https://opendatacommons.org/licenses/by/1-0/>)

## Installation

You can install {tidykids} only from GitHub with:

``` r
remotes::install_github("jrosen48/tidykids)
```

## Example

First, load the {tidykids} package:

``` r
library(tidykids)
```

Then, type `tidykids` to load the data:

``` r
tidykids
#> # A tibble: 70,380 x 4
#>    state                variable year     value
#>    <chr>                <chr>    <chr>    <dbl>
#>  1 Alabama              PK12ed   1997   3271969
#>  2 Alaska               PK12ed   1997   1042311
#>  3 Arizona              PK12ed   1997   3388165
#>  4 Arkansas             PK12ed   1997   1960613
#>  5 California           PK12ed   1997  28708364
#>  6 Colorado             PK12ed   1997   3332994
#>  7 Connecticut          PK12ed   1997   4014870
#>  8 Delaware             PK12ed   1997    776825
#>  9 District of Columbia PK12ed   1997    544051
#> 10 Florida              PK12ed   1997  11498394
#> # … with 70,370 more rows
```

To see descriptions of the variables (also available
[here](https://datacatalog.urban.org/sites/default/files/data-dictionary-files/State-by-State%20Spending%20on%20Kids%20Data%20Dictionary%20File_0.xlsx)),
use the following function:

``` r
data_dictionary()
#> # A tibble: 69 x 5
#>    variable      variable_name  measurement_unit allowed_values description     
#>    <chr>         <chr>          <chr>            <chr>          <chr>           
#>  1 Elementary a… PK12ed         Numeric          0-             Public spending…
#>  2 Elementary a… PK12ed_real    Numeric          0-             Public spending…
#>  3 Elementary a… PK12ed_realpe… Numeric          0-             Public spending…
#>  4 Higher educa… highered       Numeric          0-             Public spending…
#>  5 Higher educa… highered_real  Numeric          0-             Public spending…
#>  6 Higher educa… highered_real… Numeric          0-             Public spending…
#>  7 Education su… edsubs         Numeric          0-             Public spending…
#>  8 Education su… edsubs_real    Numeric          0-             Public spending…
#>  9 Education su… edsubs_realpe… Numeric          0-             Public spending…
#> 10 Education se… edservs        Numeric          0-             Public spending…
#> # … with 59 more rows
```
