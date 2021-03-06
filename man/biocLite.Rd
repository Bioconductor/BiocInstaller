\name{biocLite}
\alias{biocLite}
\alias{BIOCINSTALLER_ONLINE_DCF}
\title{

  Install or update Bioconductor and CRAN packages

}
\description{

  \code{biocLite} installs or updates Bioconductor and CRAN packages in
  a Bioconductor release.  Upgrading to a new Bioconductor release
  requires additional steps; see \url{https://bioconductor.org/install}.

  \env{BIOCINSTALLER_ONLINE_DCF} is an environment variable or global
  \code{options()} which, when set to \code{FALSE}, uses configuration
  information from a local archive rather than consulting the current
  online version.

}
\usage{
biocLite(pkgs=c("Biobase", "IRanges", "AnnotationDbi"),  
    suppressUpdates=FALSE,
    suppressAutoUpdate=FALSE,
    siteRepos=character(),
    ask=TRUE, ...)
}
\arguments{

  \item{pkgs}{\code{character()} of package names to install or update.
    A missing value and \code{suppressUpdates=FALSE} updates installed
    packages, perhaps also installing \code{Biobase}, \code{IRanges},
    and \code{AnnotationDbi} if they are not already installed. Package
    names containing a \sQuote{/} are treated as github repositories and
    installed using the \code{install_github()} function of the
    \code{remotes} package.}

  \item{suppressUpdates}{\code{logical(1)} or \code{character()}. When
    \code{FALSE}, biocLite asks the user whether old packages should be
    update. When \code{TRUE}, the user is not prompted to update old
    packages. When \code{character()} a vector specifying which packages
    to NOT update.}

  \item{suppressAutoUpdate}{\code{logical(1)} indicating whether the
    \code{BiocInstaller} package updates itself.}

  \item{siteRepos}{\code{character()} representing an additional
    repository in which to look for packages to install. This 
    repository will be prepended to the default repositories
    (which you can see with \code{\link{biocinstallRepos}}).}

  \item{ask}{\code{logical(1)} indicating whether to prompt user before
    installed packages are updated, or the character string 'graphics',
    which brings up a widget for choosing which packages to update.
    If TRUE, user can choose whether to update all outdated packages
    without further prompting, to pick and choose packages to update,
    or to cancel updating (in a non-interactive session, no packages
    will be updated). Otherwise, the value is passed to
    \code{\link{update.packages}}.} 

  \item{...}{Additional arguments.

    When installing CRAN or Bioconductor packages, typical arguments
    include: \code{lib.loc}, passed to \code{\link{old.packages}} and
    used to determine the library location of installed packages to be
    updated; and \code{lib}, passed to \code{\link{install.packages}} to
    determine the library location where \code{pkgs} are to be
    installed.

    When installing github packages, \code{...} is passed to the
    \pkg{remotes} package functions
    \code{\link[remotes]{install_github}} and
    \code{install} (internally). A typical use is to build vignettes,
    via \code{dependencies=TRUE, build_vignettes=TRUE}.

  }

}

\details{

  Installation of Bioconductor and CRAN packages use R's standard
  functions for library management -- \code{install.packages()},
  \code{available.packages()}, \code{update.packages()}. Installation of
  github packages uses the \code{install_github()} function from the
  \code{remotes} package. For this reason it usually makes sense, when
  complicated installation options are needed, to invoke
  \code{biocLite()} separately for Bioconductor / CRAN packages and for
  github packages.

  Setting \env{BIOCINSTALLER_ONLINE_DCF} to \code{FALSE} can speed
  package loading when internet access is slow or non-existent, but may
  result in out-of-date information about the current release and
  development versions of Bioconductor.

}

\value{
  \code{biocLite()} returns the \code{pkgs} argument, invisibly.
}
\seealso{

  \code{\link{biocinstallRepos}} returns the Bioconductor and CRAN
  repositories used by \code{biocLite}.

  \code{\link{install.packages}} installs the packages themselves.

  \code{\link{update.packages}} updates all installed packages.

  \code{\link{chooseBioCmirror}} lets you choose from a list of all
  public Bioconductor mirror URLs.

  \code{\link{chooseCRANmirror}} lets you choose from a list of all
  public CRAN mirror URLs.

  \code{\link{monograph_group}}, \code{\link{RBioinf_group}} and
  \code{\link{biocases_group}} return package names associated 
  with Bioconductor publications.
  
  \code{\link{all_group}} returns the names of all Bioconductor
  software packages.

}

\examples{
\dontrun{
## Change default Bioconductor and CRAN mirrors
chooseBioCmirror()
chooseCRANmirror()

## If you don't have the BiocInstaller package installed, you can 
## quickly install and load it as follows:
source("https://bioconductor.org/biocLite.R")  # 'http' if 'https' unavailable

## The most recent version of the BiocInstaller package is now loaded.
## No need to load it with library().

## installs default packages (if not already installed) and updates
## previously installed packages
biocLite()

## Now install a CRAN package:
biocLite("survival")

## install a Bioconductor package, but don't update all installed
## packages as well:
biocLite("GenomicRanges", suppressUpdates=TRUE)

## Install default packages, but do not update any package whose name
## starts with "org." or "BSgenome."
biocLite(suppressUpdates=c("^org\\.", "^BSgenome\\."))

## install a package from source:
biocLite("IRanges", type="source")

## install all Bioconductor software packages
biocLite(all_group())

}
## Show the Bioconductor and CRAN repositories that will be used to
## install/update packages.
biocinstallRepos()

## Use local archive rather than current online configuration
## information. Set this prior to loading the BiocInstaller package.
options(BIOCINSTALLER_ONLINE_DCF = FALSE)
}
\keyword{environment}
