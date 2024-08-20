#' Install transformers
#' 
#' install the python library for transformers
#' @importFrom reticulate py_install
#' @export

install_transformers <- function(..., envname="r-translatemd"){

  reticulate::py_install(c("torch", "sentencepiece","transformers"), envname = envname, ...)

}