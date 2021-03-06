#' A lazy source.
#'
#' A lazy source is evaluated when the plot is created. It will be evaluated in
#' the global environment, so it is not suitable to use when creating plot
#' components inside a function, but since it only needs to store the name of
#' the object, not its conents, it makes a much lighter weight gigvis object.
#'
#' @param name the name of the data frame
#' @export
#' @examples
#' 
#' p <- pipeline(source_lazy("mtcars"))
#' props <- props(x ~ wt, y ~ mpg)
#'
#' sluice(p, props)
source_lazy <- function(name, env = parent.frame()) {
  stopifnot(is.character(name), length(name) == 1)

  pipe("source_lazy", name = name, env = env)
}

#' @S3method connect source_lazy
connect.source_lazy <- function(x, data, props) {
  reactive(find_df(x$name, x$env))
}

find_df <- function(name, env = globalenv()) {
  if (!exists(name, env)) {
    stop("Can't find object ", name, " in ", env, call. = FALSE)
  }
  df <- get(name, env)

  if (!is.data.frame(df)) {
    stop(name, " in the global environment is not a data frame",
         call. = FALSE)
  }
  
  df
}

#' @S3method format source_lazy
format.source_lazy <- function(x, ...) {
  paste0("|-> ", x$name, " [lazy]")
}

#' @S3method is_source source_lazy
is_source.source_lazy <- function(x) TRUE

#' @S3method pipe_id source_lazy
pipe_id.source_lazy <- function(x, props) x$name
