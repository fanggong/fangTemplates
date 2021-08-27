
#' @export
cv <- function(..., latex_engine = "xelatex") {
  template <- system.file(
    "rmarkdown", "templates", "cv", "resources", "template.tex",
    package = "fangTemplates"
  )
  fmt <- rmarkdown::pdf_document(
    ..., latex_engine = latex_engine, template = template
  )
  fmt$inherits <- "pdf_document"
  fmt
}


#' @export
educations_output <- function(education) {
  cat("\\begin{twenty}\n")
  for (each in education) {
    cat(sprintf(
      "\\twentyitem{%s}{%s}{%s}{%s}\n",
      each$duration, each$speciality, each$address, each$description
    ))
  }
  cat("\\end{twenty}")
}


#' @export
certification_output <- function(certification) {
  cat("\\begin{twenty}\n")
  for (each in certification) {
    cat(sprintf(
      "\\twentyitem{%s}{%s}{%s}{}\n", each$date, each$name, each$point
    ))
  }
  cat("\\end{twenty}")
}


#' @export
work_xp_output <- function(work_xp) {
  cat("\\begin{twenty}\n")
  for (each in work_xp) {
    cat(sprintf(
      "\\twentyitem{%s}{%s}{%s}{%s}\n",
      each$duration, each$company, each$title, paste0(each$description, collapse = "\\\\")
    ))
  }
  cat("\\end{twenty}")
}


#' @export
project_xp_output <- function(project_xp) {
  cat("\\begin{twenty}\n")
  for (each in project_xp) {
    cat(sprintf(
      "\\twentyitem{%s}{%s}{}{%s}\n",
      each$duration, each$project_name, paste0(each$description, collapse = "\\\\")
    ))
  }
  cat("\\end{twenty}")
}

