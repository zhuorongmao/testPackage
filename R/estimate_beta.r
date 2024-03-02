#' estimate_beta
#'
#' @param y : a n by 1 vector
#' @param X : a n by k matrix.
#'
#' @return A ols estimate of beta 
#' @export
#'
#' @examples
#' estimate_beta(y,X)


estimate_beta <- function(y, X) {
  # Compute X'X
  XtX <- t(X) %*% X
  
  # Compute X'y
  Xty <- t(X) %*% y
  
  # Compute beta_hat
  beta_hat <- solve(XtX, Xty)
  
  return(beta_hat)
}