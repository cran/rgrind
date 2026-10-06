## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
options(rgrind.storage_dir = tempfile("vignette_"))
dir.create(getOption("rgrind.storage_dir"))

## -----------------------------------------------------------------------------
library(rgrind)

## -----------------------------------------------------------------------------
list_challenges()

## -----------------------------------------------------------------------------
my_solution <- function(x) {
  sum(x[x %% 2 == 0])
}

## -----------------------------------------------------------------------------
run_challenge("sum_evens", my_solution)

## -----------------------------------------------------------------------------
broken_solution <- function(x) {
  sum(x)  # forgot to filter for even numbers!
}

run_challenge("sum_evens", broken_solution)

## -----------------------------------------------------------------------------
run_challenge("count_na", function(x) sum(is.na(x)))

