#' Get Filtered Map of Bandarban
#'
#' Returns a filtered shapefile of Bandarban's administrative regions based on specified upazilas or unions.
#'
#' @param upazila Optional character vector of upazilas to filter. Must be one or more of:
#'   \itemize{
#'     \item{"Alikadam"}
#'     \item{"Bandarban Sadar"}
#'     \item{"Naikkhyongchhari"}
#'     \item{"Rowangchhari"}
#'     \item{"Lama"}
#'   }
#' @param union Optional character vector of unions to filter. Must be from the predefined list of unions in Bandarban.
#'
#' @return A filtered `sf` object (shapefile) of Bandarban, based on the specified criteria.
#'
#' @examples
#' # All upazilas in Bandarban (default)
#' get_bandarban_map()
#'
#' # Specific upazilas
#' get_bandarban_map(upazila = c("Bandarban Sadar", "Lama"))
#'
#' # Specific unions (across any upazila)
#' get_bandarban_map(union = c("Bandarban Sadar", "Lama Sadar"))
#'
#' # Unions within specific upazilas
#' get_bandarban_map(
#'   upazila = "Bandarban Sadar",
#'   union = c("Bandarban Pourasabha", "Suwalok")
#' )
#'
#' @export


get_bandarban_map <- function(upazila = NULL, union = NULL) {
  # Valid upazilas and unions in Bandarban
  valid_upazilas <- c("Alikadam", "Bandarban Sadar", 
                      "Naikkhyongchhari", "Rowangchhari", "Lama")
  
  valid_unions <- c("Kurukpata", "Chwekhyong", "Nayapara", "Alikadam",
                    "Bandarban Pourasabha", "Bandarban Sadar", "Jamchhari", "Kuhalong",
                    "Suwalok", "Tankabati", "Rajbila", "Sonaichhari",
                    "Dochhari", "Ghumdhum", "Baishari", "Naikkhyongchhari Sadar",
                    "Nowapatang", "Rowangchhari Sadar", "Alekkhyong", "Taracha",
                    "Lama Pourasabha", "Fansiakhali", "Aziznagar", "Rupasipara",
                    "Sarai", "Lama Sadar", "Gajalia", "Faitang")
  
  bandarban_upazilas <- bandarban_upazilas
  
  # Case 1: Only upazila specified -> return those upazilas
  if (!is.null(upazila) && is.null(union)) {
    if (!all(upazila %in% valid_upazilas)) {
      stop('Invalid upazila. Must be: "Alikadam", "Bandarban Sadar", "Naikkhyongchhari", "Rowangchhari", "Lama"')
    }
    return(bandarban_upazilas[bandarban_upazilas$UPA_N_E %in% upazila, ])
  }
  
  # Case 2: Only union specified -> return those unions (regardless of upazila)
  if (is.null(upazila) && !is.null(union)) {
    if (!all(union %in% valid_unions)) {
      stop("Invalid union name. Check documentation for valid unions.")
    }
    union_data <- bandarban_upazilas[bandarban_upazilas$UNI_MUN_N_ %in% union, ]
    if (nrow(union_data) == 0) {
      stop("No matching unions found in Bandarban.")
    }
    return(union_data)
  }
  
  # Case 3: Both upazila and union specified -> return unions within those upazilas
  if (!is.null(upazila) && !is.null(union)) {
    if (!all(upazila %in% valid_upazilas) || !all(union %in% valid_unions)) {
      stop("Invalid upazila or union name.")
    }
    
    both_data <- bandarban_upazilas[
      bandarban_upazilas$UPA_N_E %in% upazila & 
        bandarban_upazilas$UNI_MUN_N_ %in% union, 
    ]
    
    if (nrow(both_data) == 0) {
      stop("No unions found matching the criteria.")
    }
    
    return(both_data)
  }
  
  
 
  return(bandarban_upazilas)
}



# library(sf)
# bandarban_upazilas <- st_read("new_data/ALL_PAR_MAH_CAMP_ASSOCIATED_DATA_2108_08032025.shp")
# usethis::use_data(bandarban_upazilas, overwrite = TRUE)













