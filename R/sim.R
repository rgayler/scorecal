# Functions to simulate data for score calibration
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#' Make a function to generate observations from a continuous distribution of scores
#'
#' @param xi A number - location parameter.
#' @param omega A positive number - scale parameter.
#' @param alpha A number - slant parameter; negative is skewed to the left.
#' @param nu A positive number - degrees of freedom; nu=Inf corresponds to the skew normal distribution.
#' @return A function of one argument (n); integer > 0; number of observations to generate.
#' @examples
#' mk_cont_fun(0, 1)
#' mk_cont_fun(2.5, 1.5)
mk_cont_fun <- function(
  xi,
  omega,
  alpha = -3,
  nu = 9
) {
  function(
    n
  ) {
    tibble(x = rst(n, xi = xi, omega = omega, alpha = alpha, nu = nu))
  }
}


