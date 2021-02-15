#' Download Model Fitted to the \code{novelforest} Data
#'
#' Download the \code{brms} model fitted to the \code{novelforest} data (Lai et al. 2021).
#' The model object is too large (16.5 MB) to be included with the package,
#' so the function downloads the model from the development GitHub website.
#' The generalised linear mixed-effect model was fitted via `brms::brm` so
#' this package is recommended to properly view the model object.
#'
#' @param save_to Path and name of the file where the R object is saved to.
#' Defaults to NULL, which does not save the model object locally.
#'
#' @return A \code{brms} model output of class \code{brmsfit},
#' which is a list containing the input \code{data} and other slots
#' that store the model components.
#'
#' @seealso brms::brmsfit, brms::brm
#'
#' @references Lai, H.R., Tan, G.S.Y., Neo, L., Kee, C.Y., Yee, A.T.K., Tan, H.T.W.
#' and Chong, K.Y. (2021) Decoupled responses of native and exotic tree
#' diversities to distance from old-growth forest and soil phosphorous in
#' novel secondary forests. *Applied Vegetation Science*, 24, e12548.
#' <https://doi.org/10.1111/avsc.12548>
#'
#' @export
#'
#' @examples
#' novelforest_model <- download_model()
#'
#' # library(brms)  # recommended
#' summary(novelforest_model)

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
