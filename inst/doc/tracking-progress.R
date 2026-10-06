## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
options(rgrind.storage_dir = tempfile("vignette_"))
dir.create(getOption("rgrind.storage_dir"))

## -----------------------------------------------------------------------------
library(rgrind)

run_challenge("sum_evens", function(x) sum(x[x %% 2 == 0], na.rm = TRUE))

## -----------------------------------------------------------------------------
rg_stats()

## -----------------------------------------------------------------------------
rg_heatmap()

## -----------------------------------------------------------------------------
rg_get_history()

