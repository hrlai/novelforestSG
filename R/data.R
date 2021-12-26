#' Novel Forest Dataset
#'
#' The dataset used in Lai et al. (2021), also comprised part of the data in
#' Neo et al. (2017).
#'
#' @docType data
#'
#' @usage novelforest_data
#'
#' @format A \code{data.frame} containing the following variables:
#' \describe{
#'   \item{patch}{Name of forest patch}
#'   \item{plot}{Name of forest plot within patch}
#'   \item{UID}{Unique stem identifier}
#'   \item{species}{Species name following Chong et al. (2011)}
#'   \item{stem}{Indicator column denoting whether a stem is the main trunk (=1)
#'   of an individual tree, or otherwise (=0)}
#'   \item{dbh_2011}{Diameter-at-breast-height (cm) measured in year 2011.}
#' }
#' See Lai et al. (2021) for more details on data collection.
#'
#' @references
#' Chong, K. Y., Tan, H. T. W. and Corlett, R. T. (2011). A summary of the total
#' vascular plant flora of Singapore. *Gardens' Bulletin Singapore*,
#' 63, 197-204.
#'
#' Lai, H.R., Tan, G.S.Y., Neo, L., Kee, C.Y., Yee, A.T.K., Tan, H.T.W.
#' and Chong, K.Y. (2021) Decoupled responses of native and exotic tree
#' diversities to distance from old-growth forest and soil phosphorous in
#' novel secondary forests. *Applied Vegetation Science*, 24, e12548.
#' \doi{10.1111/avsc.12548}
#'
#' Neo, L., Yee, A. T. K., Chong, K. Y., Kee, C. Y. and Tan, H. T. W. (2017).
#' Vascular plant species richness and composition in two types of
#' post-cultivation tropical secondary forest. *Applied Vegetation Science*,
#' 20, 692-701. \doi{10.1111/avsc.12322}
#'
#' @examples
#' # To access the dataset
#' head(novelforest_data)
#'
"novelforest_data"
