#' my_theme returns a set theme of ggplot 
#' @name my_theme
#' @return A theme in ggplot
#' @export
#'
#' @examples
#' library(ggplot2)
#' p <-
#'   iris |>
#'  ggplot(aes(
#'    x = Sepal.Length,
#'    y = Sepal.Width
#'   )) +
#'   geom_point()
#' p
#' p+my_theme()
#' 
# Add ggplot2 as a dependency
usethis::use_package("ggplot2")


my_theme <- function() {
  # Load ggplot2
  library(ggplot2)
  
  # Customize the default theme
  theme_custom <- 
    theme(
      # Increase base font size
      text = element_text(size = 12),
      # Change background color 
      panel.background = element_rect(fill = "lightblue",
                                colour = "lightblue",
                                size = 0.5, linetype = "solid"),
  panel.grid.major = element_line(size = 0.5, linetype = 'solid',
                                colour = "white"), 
  panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                colour = "white")
    )
  
  return(theme_custom)
}




