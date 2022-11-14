
<!-- README.md is generated from README.Rmd. Please edit that file -->

# googleadsR

<!-- badges: start -->
<!-- badges: end -->

The goal of `googleadsR` is to help `R` users to access Google Ads data
via `Windsor.ai` `API` in a convenient way from `R`

[Windsor.ai](https://windsor.ai/) allows to get marketing data from
any platform. It beautifully simplifies the complexity of dealing with
multiple platforms, unlocking unified, valuable information in a format
that matters to you. For more details checkout
[onboard.windsor.ai](https://onboard.windsor.ai/).

## Installation

You can install the released version of `googleadsR` with:

``` r
# install.packages("remotes")
remotes::install_github("windsor-ai/googleadsR")
```

## Features

-   Easy access to Google Ads marketing data via windsor.ai APIs

-   Lightweight (single dependency - `jsonlite`)

## Supported marketing and platforms

-   Google Ads

## Usage

### Registration

You need to get a free API key to access windsor.ai’s APIs. Register
your account first and add a datasource like facebook ads and then get
the API key. For more details check out our official API documentation
and this article. Get the API key at <https://onboard.windsor.ai>

### Minimal Example

The package currently has only one function `fetch_googleads`
which will return a `data.frame` provided that all of the arguments are
supplied to it:

-   your API key,
-   date range,
-   and fields you require.

Running:

``` r
my_googleads_data <- fetch_googleads(api_key = "your api key")
            
```

Will return a `data.frame` with Google Ads marketing data.

``` r
glimpse(my_googleads_data)

Rows: 140
Columns: 6
$ data.campaign <chr> "Kampanja #1", "Myyntipäällikök…
$ data.clicks   <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ data.spend    <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ data.medium   <chr> "Unknown", "Unknown", "Unknown"…
$ data.source   <chr> "google", "google", "google", "…
$ googlesheets  <chr> "'spreadsheet_id'", "'spreadshe…
```

For more details see the API documentation at
<https://windsor.ai/api-fields/>.
