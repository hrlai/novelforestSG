## Resubmission
This is a resubmission. In this version I have:

* Removed \emph markup from DESCRIPTION
* Used \doi for DOIs (instead of <>) following R-Hub check suggestions
* Fixed invalid URL
* Reduced package size substantially by removing large object and make it downloadable using a new function instead

Test environments
* local: x86_64-pc-linux-gnu (64-bit), R 4.0.2
* Mac OS X 10.15.7 (on GitHub Actions R-CMD-check), R 4.0.3

## R CMD check results
0 errors v | 0 warnings v | 0 notes v
R CMD check succeeded

## R Hub check results

0 errors √ | 0 warnings √ | 1 note x

There was 1 NOTE:

  Possibly mis-spelled words in DESCRIPTION:
    Appl (2:35)
    Lai (2:17, 37:35)
    et (2:21, 37:39)
    al (2:24, 37:42)
    
* These are not mispelled, they are names and abbreviation.


## First submission

Test environments
* local: x86_64-pc-linux-gnu (64-bit), R 4.0.3
* Mac OS X 10.15.7 (on GitHub Actions R-CMD-check), R 4.0.3

## R CMD check results
There were no ERRORs or WARNINGs. 

There was 1 NOTE:

> checking installed package size ... NOTE
    installed size is 17.0Mb
    sub-directories of 1Mb or more:
      data  16.9Mb
      
* This is a data package. Users will be expecting large data.
