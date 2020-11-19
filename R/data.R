#' Novel Forest Dataset and Model
#'
#' The dataset and model used in Lai et al. (2021), who examined the diversity--environment
#' relationships of native and exotic species in two types of post-cultivation novel secondary
#' forests in Singapore. The generalised linear mixed-effect model was fitted via `brms::brm` so this package is
#' required to properly view the model object.
#'
#' @docType data
#'
#' @usage novelforest
#'
#' @format A \code{brms} model output of class \code{brmsfit},
#' which is a list containing the input \code{data} and other slots
#' that store the model components. Here, we will only briefly describe
#' \itemize{
#' \item how the \code{data} can be extracted and inspected
#' \item the model summary
#' }
#' Please refer to \code{?brms::brmsfit} or \code{?brms::brm} for more information on the
#' model object.
#'
#' To access the dataset, use \code{novelforest$data}. The dataset contains the following
#' response variables:
#' \describe{
#'   \item{SD_N_0}{first-order native taxonomic diversity, i.e., species richness}
#'   \item{SD_N_2}{second-order native taxonomic diversity, i.e., inverse Simpson index}
#'   \item{SD_E_0}{first-order exotic taxonomic diversity}
#'   \item{SD_E_2}{second-order exotic taxonomic diversity}
#'   \item{FD_N_0}{first-order native functional diversity}
#'   \item{FD_N_2}{second-order native functional diversity}
#'   \item{FD_E_0}{first-order exotic functional diversity}
#'   \item{FD_E_2}{second-order exotic functional diversity,}
#' }
#' and the following explanatory variables:
#' \describe{
#'   \item{dist}{Distance to old-growth forests}
#'   \item{size}{Patch area}
#'   \item{nitrogen}{total soil nitrogen}
#'   \item{phosphorous}{total extractable soil phosphorous}
#'   \item{potassium}{total extractable soil potassium}
#'   \item{patch}{Forest patch ID}
#' }
#'
#' Note that all explanatory variables were log-transformed and standardised to zero mean and
#' unit standard deviations. See Lai et al. (2020) for more details on model building and
#' data collection.
#'
#' @seealso brms::brmsfit, brms::brm
#'
#' @references Lai, H.R., Tan, G.S.Y., Neo, L., Kee, C.Y., Yee, A.T.K., Tan, H.T.W.
#' and Chong, K.Y. (2021) Decoupled responses of native and exotic tree
#' diversities to distance from old-growth forest and soil phosphorous in
#' novel secondary forests. *Applied Vegetation Science*.
#' doi: 10.1111/avsc.12548
#'
#' @examples
#' # To access the dataset
#' dat <- novelforest$data
#' summary(dat)
#'
#' # To summarise the model parameters
#' summary(novelforest)
"novelforest"
