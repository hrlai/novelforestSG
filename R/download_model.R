#' Download Model Fitted to \code{novelforest_data}
#'
#' Download the \code{brms} model fitted to \code{novelforest_data} (Lai et al. 2021).
#' The model object is too large (16.5 MB) to be included with the package,
#' so this function downloads the model from the developmental GitHub website.
#' The generalised linear mixed-effect model was fitted via `brms::brm` so
#' this package is recommended to make full use of the model object.
#'
#' @param save_to Path and name of the file where the R object is saved to.
#' Defaults to NULL, which does not save the model object locally.
#'
#' @return A \code{brms} model output of class \code{brmsfit},
#' which is a list containing the input \code{data} and other slots
#' that store the model components.
#'
#' Notably, the \code{data} slot contains a \code{data.frame} with the following
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
#' and the following explanatory variables (and measurement units if you backtransform
#' them using \code{backtransform}):
#' \describe{
#'   \item{dist}{Distance to old-growth forests (m)}
#'   \item{size}{Patch area (km^2)}
#'   \item{nitrogen}{Total soil nitrogen (mg/kg)}
#'   \item{phosphorous}{Total extractable soil phosphorous (mg/kg)}
#'   \item{potassium}{Total extractable soil potassium (mg/kg)}
#'   \item{patch}{Forest patch ID}
#' }
#'
#' #' Note that all explanatory variables were log-transformed and standardised to zero mean and
#' unit standard deviations. Use \code{backtransform} to obtain the variables in
#' their original scales. See Lai et al. (2021) for more details on model building and
#' data collection.
#'
#' @seealso backtransform, brms::brmsfit, brms::brm
#'
#' @references Lai, H.R., Tan, G.S.Y., Neo, L., Kee, C.Y., Yee, A.T.K., Tan, H.T.W.
#' and Chong, K.Y. (2021) Decoupled responses of native and exotic tree
#' diversities to distance from old-growth forest and soil phosphorous in
#' novel secondary forests. *Applied Vegetation Science*, 24, e12548.
#' \doi{10.1111/avsc.12548}
#'
#' @export
#'
#' @examples
#' novelforest_model <- download_model()
#'
#' # library(brms)  # recommended
#' summary(novelforest_model)
#'
#' # to obtain input data
#' novelforest_model$data

download_model <- function(save_to = NULL) {
    if (is.null(save_to)) {
        message("To save the model locally, use argument save_to = 'path/filename.rds'")
    } else {
        stopifnot("Directory doesn't exist." = dir.exists(dirname(save_to)))
    }
    message("Downloading model (size: 16.5 Mb)")
    mod <- readRDS(file = url("https://github.com/hrlai/novelforestSG/blob/master/data/novelforest_model.rds?raw=true"))
    if (!is.null(save_to)) {
        saveRDS(mod, file = save_to)
        message(paste("Model saved to", save_to))
    }
    return(mod)
}
