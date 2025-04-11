#' Banlgadesh population census-2011 data for district level
#'
#' A dataset containing total population, population by age groups and gender
#' for each districts (administrative level 2) in bangladesh
#'
#' @format A data frame with 64 rows and 25 variables:
#'
#' \describe{
#'    \item{district}{district (admin level 2) names}
#'    \item{admin2Pcode}{district codes}
#'    \item{division}{division (admin level 1) names}
#'    \item{admin1Pcode}{division codes}
#'    \item{population}{population in 2011}
#'    \item{P00_04}{population in age group 0-4}
#'    \item{P05_09}{population in age group 5-9}
#'    \item{P10_14}{population in age group 10-14}
#'    \item{P15_19}{population in age group 15-19}
#'    \item{P20_24}{population in age group 20-24}
#'    \item{P25_29}{population in age group 25-29}
#'    \item{P30_34}{population in age group 30-34}
#'    \item{P35_39}{population in age group 35-39}
#'    \item{P40_44}{population in age group 40-44}
#'    \item{P45_49}{population in age group 45-49}
#'    \item{P50_54}{population in age group 50-54}
#'    \item{P55_59}{population in age group 55-59}
#'    \item{P60_64}{population in age group 60-64}
#'    \item{P65_69}{population in age group 65-69}
#'    \item{P70_74}{population in age group 70-74}
#'    \item{P75_80}{population in age group 75-80}
#'    \item{P80plus}{population in age group 80+}
#'    \item{Child}{child population}
#'    \item{Male}{male population}
#'    \item{Female}{female population}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(pop_district_2011)
"pop_district_2011"

#' Banlgadesh population census-2011 data for division level
#'
#' A dataset containing total population, population by age groups and gender
#' for each divisions (administrative level 1) in bangladesh
#'
#' @format A data frame with 64 rows and 23 variables:
#'
#' \describe{
#'    \item{division}{division (admin level 1) names}
#'    \item{admin1Pcode}{division codes}
#'    \item{population}{population in 2011}
#'    \item{P00_04}{population in age group 0-4}
#'    \item{P05_09}{population in age group 5-9}
#'    \item{P10_14}{population in age group 10-14}
#'    \item{P15_19}{population in age group 15-19}
#'    \item{P20_24}{population in age group 20-24}
#'    \item{P25_29}{population in age group 25-29}
#'    \item{P30_34}{population in age group 30-34}
#'    \item{P35_39}{population in age group 35-39}
#'    \item{P40_44}{population in age group 40-44}
#'    \item{P45_49}{population in age group 45-49}
#'    \item{P50_54}{population in age group 50-54}
#'    \item{P55_59}{population in age group 55-59}
#'    \item{P60_64}{population in age group 60-64}
#'    \item{P65_69}{population in age group 65-69}
#'    \item{P70_74}{population in age group 70-74}
#'    \item{P75_80}{population in age group 75-80}
#'    \item{P80plus}{population in age group 80+}
#'    \item{Child}{child population}
#'    \item{Male}{male population}
#'    \item{Female}{female population}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(pop_division_2011)
"pop_division_2011"

#' Banlgadesh population census-2011 data for upazila level
#'
#' A dataset containing total population, population by age groups and gender
#' for each upazilas (administrative level 3) in bangladesh
#'
#' @format A data frame with 64 rows and 29 variables:
#'
#' \describe{
#'    \item{upazila}{upazila (admin level 3) names}
#'    \item{admin3Pcode}{upazila codes}
#'    \item{district}{district (admin level 2) names}
#'    \item{ADM2_PCODE}{district codes}
#'    \item{division}{division (admin level 1) names}
#'    \item{ADM1_PCODE}{division codes}
#'    \item{population}{population in 2011}
#'    \item{P00_04}{population in age group 0-4}
#'    \item{P05_09}{population in age group 5-9}
#'    \item{P10_14}{population in age group 10-14}
#'    \item{P15_19}{population in age group 15-19}
#'    \item{P20_24}{population in age group 20-24}
#'    \item{P25_29}{population in age group 25-29}
#'    \item{P30_34}{population in age group 30-34}
#'    \item{P35_39}{population in age group 35-39}
#'    \item{P40_44}{population in age group 40-44}
#'    \item{P45_49}{population in age group 45-49}
#'    \item{P50_54}{population in age group 50-54}
#'    \item{P55_59}{population in age group 55-59}
#'    \item{P60_64}{population in age group 60-64}
#'    \item{P65_69}{population in age group 65-69}
#'    \item{P70_74}{population in age group 70-74}
#'    \item{P75_80}{population in age group 75-80}
#'    \item{P80plus}{population in age group 80+}
#'    \item{Child}{child population}
#'    \item{Male}{male population}
#'    \item{Female}{female population}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(pop_upazila_2011)
"pop_upazila_2011"

#' Banlgadesh administrative levels names in English
#'
#' A dataset containing Division, District, Upazila, and Union names
#'
#' @format A data frame with 5160 rows and 4 variables:
#'
#' \describe{
#'    \item{District}{district (admin level 2) names}
#'    \item{Division}{division (admin level 1) names}
#'    \item{Upazila}{upazila (admin level 3) names}
#'    \item{Union}{upazila (admin level 3) names}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(area_names)
"area_names"


#' Banlgadesh administrative level 0 shapefile
#'
#' A shapefile containing level 0 administrative boundaries
#'
#' @format A shapefile with 3 variables:
#'
#' \describe{
#'    \item{Country}{country (admin level 0) name}
#'    \item{ADM0_PCODE}{admin level 0 codes}
#'    \item{geometry}{MULTIPOLYGON for administrative areas}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(map_country)
"map_country"

#' Banlgadesh administrative level 1 shapefile
#'
#' A shapefile containing level 1 administrative boundaries
#'
#' @format A shapefile with 5 variables:
#'
#' \describe{
#'    \item{Division}{division (admin level 1) names}
#'    \item{ADM1_PCODE}{admin level 1 codes}
#'    \item{Country}{country (admin level 0) name}
#'    \item{ADM0_PCODE}{admin level 0 codes}
#'    \item{geometry}{MULTIPOLYGON for administrative areas}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(map_division)
"map_division"

#' Bangladesh Administrative Level 2 Shapefile
#'
#' A spatial dataset containing administrative level 2 boundaries (districts) of Bangladesh.
#'
#' @format An `sf` object with 7 variables:
#' \describe{
#'   \item{District}{Name of the district (admin level 2)}
#'   \item{ADM2_PCODE}{Administrative level 2 code}
#'   \item{Division}{Name of the division (admin level 1)}
#'   \item{ADM1_PCODE}{Administrative level 1 code}
#'   \item{Country}{Country name (admin level 0)}
#'   \item{ADM0_PCODE}{Administrative level 0 code}
#'   \item{geometry}{MULTIPOLYGON geometry for administrative areas}
#' }
#' @source Bangladesh Bureau of Statistics
#'
#' @usage data(map_district)
#' @keywords datasets
#' @examples
#' data(map_district)
#' plot(map_district["District"])
"map_district"

#' Banlgadesh administrative level 3 shapefile
#'
#' A shapefile containing level 3 administrative boundaries
#'
#' @format A shapefile with 9 variables:
#'
#' \describe{
#'    \item{Upazila}{upazilla (admin level 3) names}
#'    \item{ADM3_PCODE}{admin level 3 codes}
#'    \item{District}{district (admin level 2) names}
#'    \item{ADM2_PCODE}{admin level 2 codes}
#'    \item{Division}{division (admin level 1) names}
#'    \item{ADM1_PCODE}{admin level 1 codes}
#'    \item{Country}{country (admin level 0) name}
#'    \item{ADM0_PCODE}{admin level 0 codes}
#'    \item{geometry}{MULTIPOLYGON for administrative areas}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(map_upazila)
"map_upazila"

#' Banlgadesh administrative level 4 shapefile
#'
#' A shapefile containing level 4 administrative boundaries
#'
#' @format A shapefile with 11 variables:
#'
#' \describe{
#'    \item{Union}{upazilla (admin level 4) names}
#'    \item{ADM4_PCODE}{admin level 4 codes}
#'    \item{Upazila}{upazilla (admin level 3) names}
#'    \item{ADM3_PCODE}{admin level 3 codes}
#'    \item{District}{district (admin level 2) names}
#'    \item{ADM2_PCODE}{admin level 2 codes}
#'    \item{Division}{division (admin level 1) names}
#'    \item{ADM1_PCODE}{admin level 1 codes}
#'    \item{Country}{country (admin level 0) name}
#'    \item{ADM0_PCODE}{admin level 0 codes}
#'    \item{geometry}{MULTIPOLYGON for administrative areas}
#' }
#' @source Bangladesh Bureau of Statistics
#' @usage data(map_union)
"map_union"




#' Spatial Data: Bandarban Upazilas
#'
#' A simple features (`sf`) object containing polygon data for the upazilas (sub-districts) of Bandarban district, Bangladesh.
#'
#' This dataset is used for mapping and analysis of administrative regions in the Bandarban district. It includes the following upazilas:
#' \itemize{
#'   \item Alikadam
#'   \item Bandarban Sadar
#'   \item Naikkhyongchhari
#'   \item Rowangchhari
#'   \item Lama
#' }
#'
#' @format An `sf` object with multiple polygons and the following variables:
#' \describe{
#'   \item{name}{Name of the upazila}
#'   \item{geometry}{Spatial polygon data}
#'   \item{...}{Other optional attributes if present}
#' }
#'
#' @source Custom geospatial data curated for the `bangladeshPLUS` package.
#' @usage data(bandarban_upazilas)
"bandarban_upazilas"



