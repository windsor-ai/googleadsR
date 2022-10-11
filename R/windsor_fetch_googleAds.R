
#' Windsor fetch Google Ads
#' Fetch data from google Ads via windsor.ai API
#'
#' @param api_key Your api key to access Windsor.ai API
#' @param date_preset the period for which data is fetched from the API.
#' See https://www.windsor.ai/api-fields/ for details
#' @param fields The fields fetched from the API for a given connector
#' See https://www.windsor.ai/api-fields/ for details.
#'
#' @return A data frame containing the desired data.
#' @export
#'
#' @examples
#' \dontrun{
#' # api_key needs to be provided by the user.
#' my_googleads_data <- windsor_fetch_googleAds(api_key = "your api key",
#' date_preset = "last_7d",
#' fields = c("source", "campaign", "clicks",
#'            "medium", "sessions", "spend"))
#' }
windsor_fetch_googleAds <-
  function(api_key,
           date_preset = "last_7d",
           fields = c("source", "campaign", "clicks",
                      "medium", "sessions", "spend")) {
    json_data <- jsonlite::fromJSON(
      paste0(
        "https://connectors.windsor.ai/google_ads?api_key=",
        api_key,
        "&date_preset=",
        date_preset,
        "&fields=",
        paste(fields, collapse = ",")
      )
    )

    if (typeof(json_data) == "list" && "data" %in% names(json_data)) {
      return(as.data.frame(json_data$data))
    }

    stop(paste("Invalid response from the API:", json_data))

  }
