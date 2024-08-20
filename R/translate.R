#' translate an md file
#' 
#' `translate()` is best used in a map or apply statement
#' onto a parsed md file. the `lightparser` works seemlessly 
#' with this function
#' 
#' 
#' @param text Text from a md file
#' @examples
#' parsed <- lightparser::split_to_tbl("my.qmd")
#' parsed |>
#'   unnest(cols = text) |>
#'   mutate(text_es = map(text,translate))
#' @export

translate <- function(text){
  # if text is blank, translator outputs 'no, no, no...' for some reason
  if(gsub(" ", "", text, fixed = TRUE)=="" | is.na(text)) {  
    # translator(text)[[1]]$translation_text
    # print('skip line with missing text')
  } else {
    translator(text)[[1]]$translation_text
  }
}

