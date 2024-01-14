# novelforestSG v2.1.0

* Added data for Neo et al. (2017)
* Re-named the data objects and updated the help file

# novelforestSG v2.0.0

This major update releases more data, corrects errors in older data version, and is thus incompatible with v1.x.x.

## Major change:

* Stem-level raw data (e.g., diameter) from the novel forest study is now available as `novelforest_data`, and replaces the older data which is summarised to the plot level. This will be part of our continual effort to make data open and results reproducible. Come back later for more staged releases!
* Removed an unused plot that was irrelevant to the original study design.

## Minor change:

* As a result, `backtransform()` no longer depends on `novelforest_data`. Instead, `download_model()` needs to be run at least once to use `backtransform()`.

# novelforestSG v1.2.1

* Removed unintentional attributes in the `novelforest_data` data.frame

# novelforestSG v1.2.0

* CRAN release on 18 Feb 2021
* CRAN revision: took large model object out and make it downloadable with the new `download_model()` function instead.

# novelforestSG v1.1.1

* Checks and first submission to CRAN.

# novelforestSG v1.1.0

* Add `backtransform()` function to backtransform the predictors in the dataset to their original scales.

# novelforestSG v1.0.0

* Minor revision to release with accepted manuscript https://doi.org/10.1111/avsc.12548

# novelforestSG v0.9.0

* Initial pre-release with the final draft of the manuscript (DOI pending).
