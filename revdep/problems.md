# affy

Version: 1.58.0

## Newly broken

*   checking whether package ‘affy’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'BiocInstaller' and 'biocLite()' are deprecated, use the 'BiocManager' CRAN
    See ‘/home/mramos/Bioconductor/BiocInstaller/revdep/checks/affy/new/affy.Rcheck/00install.out’ for details.
    ```

## In both

*   checking examples ... ERROR
    ```
    ...
    downloaded 909 KB
    
    trying URL 'https://cran.rstudio.com/src/contrib/RSQLite_2.1.1.tar.gz'
    Content type 'application/x-gzip' length 2192835 bytes (2.1 MB)
    ==================================================
    downloaded 2.1 MB
    
    trying URL 'https://bioconductor.org/packages/3.8/bioc/src/contrib/S4Vectors_0.19.20.tar.gz'
    Content type 'application/x-gzip' length 632834 bytes (618 KB)
    ==================================================
    downloaded 618 KB
    
    trying URL 'https://bioconductor.org/packages/3.8/bioc/src/contrib/AnnotationDbi_1.43.1.tar.gz'
    Content type 'application/x-gzip' length 4336038 bytes (4.1 MB)
    ==================================================
    downloaded 4.1 MB
    
    trying URL 'https://bioconductor.org/packages/3.8/data/annotation/src/contrib/hgu95av2cdf_2.18.0.tar.gz'
    Content type 'application/x-gzip' length 1331391 bytes (1.3 MB)
    ==================================================
    downloaded 1.3 MB
    ```

*   checking running R code from vignettes ...
    ```
       ‘affy.Rnw’ ... failed
       ‘builtinMethods.Rnw’ ... OK
       ‘customMethods.Rnw’ ... OK
       ‘vim.Rnw’ ... OK
     ERROR
    Errors in running code in vignettes:
    when running code in ‘affy.Rnw’
      ...
    
    The downloaded source packages are in
    	‘/tmp/RtmpbfXlCc/downloaded_packages’
    
      When sourcing ‘affy.R’:
    Error: Could not obtain CDF environment, problems encountered:
    Specified environment does not contain HG_U95Av2
    Library - package hgu95av2cdf not installed
    Library - package hgu95av2cdf not installed
    Execution halted
    ```

*   checking foreign function calls ... WARNING
    ```
    Foreign function calls to a base package:
      .C(stats:::C_loess_raw, ...)
      .Fortran(stats:::C_lowesp, ...)
      .Fortran(stats:::C_lowesw, ...)
    Packages should not make .C/.Call/.External/.Fortran calls to a base
    package. They are not part of the API, for use only by R itself and
    subject to change without notice.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘tkWidgets’ ‘widgetTools’
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘tkWidgets’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unexported objects imported by ':::' calls:
      ‘stats:::C_loess_raw’ ‘stats:::C_lowesp’ ‘stats:::C_lowesw’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘bg.correct’
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    expressoWidget : end: no visible global function definition for
      ‘tclvalue’
    expressoWidget: no visible global function definition for ‘tktoplevel’
    expressoWidget: no visible global function definition for ‘tkdestroy’
    expressoWidget: no visible global function definition for ‘tktitle<-’
    expressoWidget: no visible global function definition for ‘tkpack’
    expressoWidget: no visible global function definition for ‘tklabel’
    expressoWidget: no visible global function definition for ‘tkframe’
    expressoWidget: no visible global function definition for
      ‘dropdownList’
    expressoWidget: no visible global function definition for ‘tclvalue’
    expressoWidget: no visible global function definition for ‘tkgrid’
    expressoWidget: no visible global function definition for
      ‘tkgrid.configure’
    expressoWidget: no visible global function definition for ‘tkbutton’
    expressoWidget: no visible global function definition for
      ‘tkwait.window’
    Undefined global functions or variables:
      dropdownList fileBrowser hasSuffix tclVar tclvalue tkbutton tkdestroy
      tkframe tkgrid tkgrid.configure tklabel tkpack tktitle<- tktoplevel
      tkwait.window
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    
    ERROR: dependencies ‘BH’, ‘plogr’ are not available for package ‘RSQLite’
    ```

# affylmGUI

Version: 1.54.1

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘tkrplot’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# anyLib

Version: 1.0.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘httr’
      All declared Imports should be used.
    ```

# BiocCheck

Version: 1.16.0

## Newly broken

*   checking whether package ‘BiocCheck’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'BiocInstaller' and 'biocLite()' are deprecated, use the 'BiocManager' CRAN
    See ‘/home/mramos/Bioconductor/BiocInstaller/revdep/checks/BiocCheck/new/BiocCheck.Rcheck/00install.out’ for details.
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'BiocCheck.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘codetoolsBioC’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        unitTests   4.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘knitr:::detect_pattern’ ‘tools:::RdTags’
      See the note in ?`:::` about the use of this operator.
    ```

# gcrma

Version: 2.52.0

## Newly broken

*   checking whether package ‘gcrma’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: 'BiocInstaller' and 'biocLite()' are deprecated, use the 'BiocManager' CRAN
    See ‘/home/mramos/Bioconductor/BiocInstaller/revdep/checks/gcrma/new/gcrma.Rcheck/00install.out’ for details.
    ```

## In both

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Malformed Description field: should contain one or more complete sentences.
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘affy’ ‘splines’
    A package should be listed in only one of these fields.
    ```

*   checking foreign function calls ... NOTE
    ```
    Foreign function call to a different package:
      .Call("rma_c_complete", ..., PACKAGE = "affy")
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    compute.affinities: no visible binding for global variable
      ‘affinity.spline.coefs’
    compute.affinities.nomm: no visible binding for global variable
      ‘affinity.spline.coefs’
    compute.affinities2: no visible binding for global variable
      ‘affinity.spline.coefs’
    Undefined global functions or variables:
      affinity.spline.coefs
    ```

# NCmisc

Version: 1.1.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘reader’
    ```

# pkgDepTools

Version: 1.46.0

## In both

*   R CMD check timed out
    

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘graph’ ‘RBGL’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘RCurl’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Package in Depends field not imported from: ‘methods’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Unexported object imported by a ':::' call: ‘tools:::.split_dependencies’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
    File ‘pkgDepTools/R/zzz.R’:
      .First.lib calls:
        require("RCurl", quietly = TRUE)
    
    Package startup functions should not change the search path.
    See section ‘Good practice’ in '?.onAttach'.
    
    getInstallOrder: no visible global function definition for
      ‘installed.packages’
    makeDepGraph : <anonymous>: no visible global function definition for
      ‘available.packages’
    makeDepGraph : <anonymous>: no visible global function definition for
      ‘contrib.url’
    makeDepGraph: no visible global function definition for
      ‘installed.packages’
    Undefined global functions or variables:
      available.packages contrib.url installed.packages
    Consider adding
      importFrom("utils", "available.packages", "contrib.url",
                 "installed.packages")
    to your NAMESPACE file.
    ```

# RNAseqData.HNRNPC.bam.chr14

Version: 0.18.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 420.3Mb
      sub-directories of 1Mb or more:
        extdata  420.1Mb
    ```

