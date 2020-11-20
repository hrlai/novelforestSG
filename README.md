Data and model for Lai, Chong et al. (2021) *Appl. Veg. Sci.*
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![](https://img.shields.io/badge/doi-10.1111/avsc.12548-orange.svg)](https://doi.org/10.1111/avsc.12548)
[![License: CC
BY 4.0](https://img.shields.io/badge/license-CC%20BY%204.0-blue.svg)](https://github.com/hrlai/novelforestSG/blob/master/LICENSE)
[![](https://img.shields.io/badge/devel%20version-1.0.0-orange.svg)](https://github.com/hrlai/novelforestSG)
[![R build
status](https://github.com/hrlai/novelforestSG/workflows/R-CMD-check/badge.svg)](https://github.com/hrlai/novelforestSG/actions)
[![Travis build
status](https://travis-ci.com/hrlai/novelforestSG.svg?branch=master)](https://travis-ci.com/hrlai/novelforestSG)
<!-- badges: end -->

# About

Welcome to the `R` package `novelforestSG`\! It contains the data input
and the `brms` model output described in

> Lai, H.R., Tan, G.S.Y., Neo, L., Kee, C.Y., Yee, A.T.K., Tan, H.T.W.
> and Chong, K.Y. (2021) Decoupled responses of native and exotic tree
> diversities to distance from old-growth forest and soil phosphorous in
> novel secondary forests. *Applied Vegetation Science*. doi:
> 10.1111/avsc.12548

# Usage

Before we begin, because we analysed the data using the `brms` v2.10.0
package in `R`, it is highly recommended that you [install
`brms`](https://github.com/paul-buerkner/brms) to squeeze the most out
of the model output:

    install.packages("brms")

You also need `RTools`, see [the `brms`
homepage](https://github.com/paul-buerkner/brms). This will take a few
minutes so have a cup of hot beverage handy.

Next, install the `novelforestSG` package:

    install.packages("devtools")  # install prerequisite packages
    devtools::install_github("hrlai/novelforestSG")

We plan to make this package available in CRAN soon, so please check
back later for installation using `install.packages("novelforestSG")`.

Finally, you may access our dataset:

    library(novelforestSG)
    novelforest$data

For more information, see `?novelforest`.

# Issues

Please feel free to report any issues to [our GitHub Issue
page](https://github.com/hrlai/novelforestSG/issues).

# Citation

We believe that the sharing of datasets is important for advancing
ecology. At the same time, for data sharing to be successful and
sustainable, it is important that those individuals whose time and
efforts generated the data are acknowledged. Therefore, when you use the
data or model output in your original research or meta-analysis, we
appreciate if the following paper is cited:

> Lai, H.R., Tan, G.S.Y., Neo, L., Kee, C.Y., Yee, A.T.K., Tan, H.T.W.
> and Chong, K.Y. (2021) Decoupled responses of native and exotic tree
> diversities to distance from old-growth forest and soil phosphorous in
> novel secondary forests. *Applied Vegetation Science*. doi:
> 10.1111/avsc.12548

If this dataset forms the entirety or \>50% of your own dataset used for
a publication, we suggest that you might raise the possibility of
coauthorship with the corresponding authors of the papers above
(depending on the circumstances coauthorship may or may not be
appropriate, but let’s have a conversation at least).

See the
[LICENSE](https://github.com/hrlai/novelforestSG/blob/master/LICENSE)
file for license rights.

You may also be interested in a companion not-just-trees paper:

> Neo, L., Yee, A. T. K., Chong, K. Y., Kee, C. Y., & Tan, H. T. W.
> (2017). Vascular plant species richness and composition in two types
> of post-cultivation tropical secondary forest. *Applied Vegetation
> Science*, 20(4), 692–701. doi: 10.1111/avsc.12322

# Contacts

Hao Ran Lai <hrlai.ecology@gmail.com>  
Kwek Yan Chong <kwek@nus.edu.sg>
