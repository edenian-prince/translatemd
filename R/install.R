#' Install transformers
#' 
#' install the python library for transformers
#' @export

install_transformers <- function(..., envname="r-translatemd"){

  reticulate::py_install(c("torch", "sentencepiece","transformers"), envname = envname, ...)

}