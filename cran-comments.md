## Resubmission

This is a resubmission. In this version I have:

* Manually replaced `@docType` with `@aliases novelforestSG-package` to 
  accommodate breaking changes in roxygen2
* Added \dontrun to the examples of `download_model` so it won't be tested on 
  CRAN regularly. We expect this to be a one-off use by most users to download
  a large model file only

In addition, we included a minor update on the dataset `novelforest_data`. 
As a result, we removed the function `backtransform` since it is no longer 
applicable to the new dataset.

## R CMD check results

0 errors | 0 warnings | 0 notes

