## Patch

This a patch to fix CRAN Package Check Results:

    * Version: 1.2.0
      Check: whether package can be installed
      Result: WARN
      Found the following significant warnings:
      Warning: namespace 'brms' is not available and has been replaced
      Flavors: r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-patched-linux-x86_64, r-release-linux-x86_64

I have done the following:

- removed unintentional attributes (associated with the `brms` package) in the `novelforest_data` data.frame
