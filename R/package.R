#'
#' @importFrom reticulate import use_virtualenv configure_environment
.onLoad <- function(libname, pkgname){
  
  # transformers <<- reticulate::import('transformers', delay_load = TRUE)
  reticulate::use_virtualenv("r-translatemd",required = FALSE)
  reticulate::configure_environment(pkgname)

}