# Avoid global variable check NOTE
utils::globalVariables(c(
  "map_country", "map_division", "map_district", "map_upazila", "map_union", "area_names"
))

#' Plot maps of administrative levels in Bangladesh
#'
#' Uses `tmap` to visualize different levels of Bangladesh's administrative maps.
#'
#' @param level Administrative level: one of "country", "division", "district", "upazila", "union".
#' @param type Plot type: "static" or "interactive".
#'
#' @return A tmap object (static or interactive map).
#' @examples
#' bd_plot("district", "static")
#'
#' @import tmap
#' @export
bd_plot <- function(level = "country", type = "static") {
  level <- tolower(level)
  
  # Set tmap mode
  if (type == "static") {
    tmap_mode("plot")
  } else if (type == "interactive") {
    tmap_mode("view")
  } else {
    stop('Invalid plotting type. Use either "static" or "interactive".')
  }
  
  # Load data based on level
  map_data <- switch(level,
                     country  = get("map_country", envir = asNamespace("bangladeshPLUS")),
                     division = get("map_division", envir = asNamespace("bangladeshPLUS")),
                     district = get("map_district", envir = asNamespace("bangladeshPLUS")),
                     upazila  = get("map_upazila", envir = asNamespace("bangladeshPLUS")),
                     union    = get("map_union", envir = asNamespace("bangladeshPLUS")),
                     stop('Invalid level. Choose from: "country", "division", "district", "upazila", "union".')
  )
  
  # Plot the map
  tm_shape(map_data) + tm_polygons(col = "Division", id = tools::toTitleCase(level))
}
