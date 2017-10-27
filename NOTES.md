# Update procedure

## Changes to code

1. Create a new temporary branch

2. Update `inst/scripts/BiocInstaller.dcf`

    - Add a new entry for new 'devel'

         - `R_VERSION_MAX` (projected) last _R_ version to support
           this release.
         - `IS_USER: FALSE`
         - `IS_END_OF_LIFE: FALSE`
         - `IS_UPGRADEABLE:` `TRUE` if next release will use same _R_
           major version.
         - `UPGRADE_IS_DEVEL: FALSE`
         - `UPGRADE_VERSION:` next (hypothetical) Bioconductor version
         - `DOWNGRADE_VERSION:` current release version

    - Update current devel to be release

        - `IS_USER: TRUE`
        - `UPGRADE_IS_DEVEL: TRUE`

    - Update current release to end-of-life

        - `IS_END_OF_LIFE: TRUE`
        - `UPGRADE_IS_DEVEL: FALSE`

    - Update all records for `NEXT_R_DEVEL_VERSION`

3. Update `BIOC_VERSION` in `R/zzz.R` to new 'devel' version

4. Update `inst/scripts/biocLite.R` conditional for Bioc releases
   occuring within a major R release.

## Testing

- For current release and devel and future devel configurations.

- Install temporary branch, adjusting `BIOC_VERSION` in `R/zzz.R` to
  testing environment.

- Use `BIOCINSTALLER_ONLINE_DCF=FALSE` to test

        export BIOCINSTALLER_ONLINE_DCF=FALSE

- Use a temporary library for each version tested, e.g.,

        mkdir /tmp/next-devel-tmpdir
        export R_LIBS_USER=/tmp/next-devel-tmpdir
        R --vanilla -e ".libPaths()"  # only default and temp library

- Future devel:

    - `biocVersion()`
    - `isDevel()` TRUE

- Current devel

    - `biocVersion()`
    - `isDevel()` FALSE
    - `biocLite("BiocUpgrade")` (prompt for upgrade if upgrade is on
      same version of _R_)

- Current release

    - `library(BiocInstaller)`: prompt to upgrade
    - `isDevel() # FALSE`
    - `biocLite("BiocUpgrade")` prompt to update packages if possible,
      or indicate new version of _R_ required
    - In a new session, no BiocInstaller installed
      `source("inst/scripts/biocLite.R")` should install the current
      devel (i.e., to-be-release) version of BiocInstaller.

## Release process

- Current release and current devel versions of BiocInstaller do _not_
  need to be changed. (query web version of BiocInstaller.dcf)

- (Release day - 1) Update _R_ source (`R/zzz.R`) immediately after
  version bump, and before builds.

- (Release day) `inst/scripts/BiocInstaller.dcf` and
  `inst/scripts/biocLite.R` to signal the release.
