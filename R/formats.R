#' Output format for USYD letter
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in USYD style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Rob J Hyndman (modified to USYD by Emi Tanaka)
#'
#' @export
letter <- function(...) {
  template <- system.file("rmarkdown/templates/Letter/resources/usydletter.tex",
                          package="USYDTemplates")
   bookdown::pdf_document2(...,
     template = template
   )
}


#' @rdname letter
#' @export
report <- function(...) {
  template <- system.file("rmarkdown/templates/Report/resources/usydreport.tex",
                          package="USYDTemplates")
  bookdown::pdf_document2(...,
                          template = template
  )
}


