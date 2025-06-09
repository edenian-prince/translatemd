#' Install transformers
#' 
#' install the python library for transformers
#' @importFrom reticulate py_install
#' @export

install_transformers <- function(..., envname="r-translatemd"){

  reticulate::py_install(c("torch", "sentencepiece","transformers"), envname = envname, pip=TRUE, ...)

}

#' Require transformers
#' 
#' install python libraries
#' @importFrom reticulate py_require
#' @export
require_transformers <- function(...){
  reticulate::py_require(packages = c("torch", "sentencepiece","transformers"))
}