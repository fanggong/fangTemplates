
#' @export
yabai_pdf <- function(
  ..., toc = TRUE, toc_depth = 3, number_sections = TRUE, latex_engine = "xelatex"
) {
  template <- system.file(
    "rmarkdown", "templates", "yabai_pdf", "resources", "template.tex",
    package = "fangTemplates"
  )
  fmt <- rmarkdown::pdf_document(
    ..., toc = toc, toc_depth = toc_depth, number_sections = number_sections,
    latex_engine = latex_engine, template = template
  )
  fmt$inherits <- "pdf_document"
  fmt
}

