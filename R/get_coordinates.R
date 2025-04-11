#' get centroids of administrative areas
#'
#' uses sf
#' @param  level administrative level of bangladeshPLUS. Should be one of: "division", "district", "upazila","union'
#' @returns A data frame containing latitudes and longitudes
#' @examples
#' get_coordinates(level = "division")
#' get_coordinates(level = "district")
#'
#' @import sf
#' @export

get_coordinates <-
  function(level = "division"){

    level = tolower(level)
    switch (level,

            division = {

              n <- with(map_division, data.frame(Division))

              c <- data.frame(st_coordinates(st_centroid(map_division$geometry)))

              return(data.frame(n, lat = c[[2]], lon = c[[1]]))
            },
            district = {
              n <- with(map_district, data.frame(Division, District))

              c <- data.frame(st_coordinates(st_centroid(map_district$geometry)))

              return(data.frame(n, lat = c[[2]], lon = c[[1]]))
            },
            upazila = {

              n <- with(map_upazila, data.frame(Division, District, Upazila))

              c <- data.frame(st_coordinates(st_centroid(map_upazila$geometry)))

              return(data.frame(n, lat = c[[2]], lon = c[[1]]))

            },
            union = {

              n <- with(map_union, data.frame(Division, District, Upazila, Union))

              c <- data.frame(st_coordinates(st_centroid(map_union$geometry)))

              return(data.frame(n, lat = c[[2]], lon = c[[1]]))

            },
            stop('incorrect level name. Should be one of: "division", "district", "upazila","union')
    )
  }

