#' my_theme returns a set theme of ggplot 
#' @name my_theme
#' @return A theme in ggplot
#' @export
#'
#' @examples
#' my_theme
#' 
# Add ggplot2 as a dependency
usethis::use_package("ggplot2")

# Define my_theme function
my_theme <- function() {
  # Load ggplot2
  library(ggplot2)
  
  # Customize the default theme
  theme_custom <- theme_minimal() +
    theme(
      # Increase base font size
      text = element_text(size = 12),
      # Change background color 
      panel.background = element_rect(fill = "darkseagreen3"),
      # Add a solid line to the major grid lines
      panel.grid.major = element_line(color = "lightgrey")
    )
  
  return(theme_custom)
}



