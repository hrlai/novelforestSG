#' Novel Forest Raw Dataset
#'
#' The raw data used in Lai et al. (2021) and Neo et al. (2017).
#'
#' @docType data
#'
#' @usage
#'
#' novelforest_data
#'
#' @format
#'
#' A list of four \code{data.frame}:
#'
#' \describe{
#'  \item{trees}{a table of woody stems measured, with \code{treeID} as the
#'  unique identifier}
#'  \item{pres}{a table of presences of vascular plant species in each plot}
#'  \item{plots}{a table of the environmental measurements or landscape
#'  characteristics for each plot, with \code{plotID} as the unique identifier}
#'  \item{patches}{a table of the patches and their characteristics, with \code{patchID} as the unique identifier}
#' }
#'
#'
#' With the following variables:
#'
#' \describe{
#'   \item{patch}{Forest patch identifier}
#'   \item{plot}{Plot identifier}
#'   \item{UID}{Stem identifier}
#'   \item{species}{Species name following Chong et al. (2011)}
#'   \item{stem}{Indicator column denoting whether a stem is the main trunk (=1)
#'   of an individual tree, or otherwise (=0)}
#'   \item{dbh_2011}{Diameter-at-breast-height (cm) measured in year 2011.}
#'   \item{canopy}{% Canopy cover}
#'   \item{litter}{Leaf litter depth / cm}
#'   \item{nitrogen}{Soil total Nitrogen /g^-1 kg^-1}
#'   \item{phosphorous}{Soil extractable Phosphorous /mg^-1 kg^-1}
#'   \item{potassium}{Soil extractable Potassium /mg^-1 kg^-1}
#'   \item{dist}{Distance to nearest old-growth forest /km}
#'   \item{type}{Type of forest; \code{ABA}: abandoned-land forest type,
#'   \code{WAS}: waste-woodland forest type}
#'   \item{size}{Size (i.e., area) of forest patch /ha}
#' }
#' See Lai et al. (2021) or Neo et al. (2017) for more detail on data collection.
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
#' # Tree community matrix (by stem counts)
#' comm_stem <- xtabs(~ plot + species, data = novelforest_data$trees)
#' comm_stem[1:10, 1:4]
#'
#' # Species occurrence matrix (of all vascular plants)
#' comm_all <- xtabs(~ plot + species, data = novelforest_data$pres)
#' comm_all[1:10, 1:4]
#'
#' # Reproduce (part of) the summary table (Appendix S2) in the supplementary
#' # material of Neo et al. (2017)
#' with(novelforest_data,
#'     apply(plots[3:8], 2,
#'         function(x) tapply(x, plots$patch, mean, na.rm = TRUE))
#'     )
#'
"novelforest_data"
