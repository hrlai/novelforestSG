#' novelforestSG
#'
#' Forest community data used in Lai et al. (2021); also comprised part of the
#' raw data used in Neo et al. (2017).
#'
#' The main component of \code{novelforestSG} is the dataset,
#' which can be accessed with \code{novelforest_data}.
#' See \code{?novelforest_data} for more details.
#'
#' @author
#' Hao Ran Lai, \email{hrlai.ecology@gmail.com} \cr
#' Kwek Yan Chong, \email{kwek@u.nus.edu} \cr
#' Alex Thiam Koon Yee \cr
#' Maintainer: Hao Ran Lai, \email{hrlai.ecology@gmail.com}
#'
#' @references
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
#' @docType package
#' @aliases novelforestSG-package
#' @name novelforestSG
NULL

globalVariables(c("novelforest_data", "scales_centers"))
