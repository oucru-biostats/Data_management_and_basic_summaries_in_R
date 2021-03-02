# OUCRU internal swirl course of Basic Biostatistics

## Overview

An internal course for new-comer to develop fundamental skills in Data management and descriptive analyses.

## How to build

- Prerequisites: Swirl, Swirlify
```r
install.packages(c('swirl', 'swirlify'))
```

- Install from github

```r
swirl::install_course_github("oucru-biostats", "Data_management_and_basic_summaries_in_R", branch = "main")
```

- **Or** Build course from source

```r
swirlify::pack_course()
```

