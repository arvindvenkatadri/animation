##' Simulation of QQ plots for the Normal distribution.
##' This demo shows the possible QQ plots created by random numbers generated
##' from a Normal distribution so that users can get a rough idea about how QQ
##' plots really look like.
##'
##' When the sample size is small, it is hard to get a correct inference about
##' the distribution of data from a QQ plot. Even if the sample size is large,
##' usually there are outliers far away from the straight line. Therefore,
##' don't overinterpret the QQ plots.
##'
##' @param n integer: sample size
##' @param \dots other arguments passed to \code{\link[stats]{qqnorm}}
##' @return \code{NULL}
##' @author Yihui Xie <\url{http://yihui.name}>
##' @seealso \code{\link[stats]{qqnorm}}
##' @keywords dynamic distribution dplot
##' @examples
##' oopt = ani.options(interval = 0.1, nmax = 100)
##' op = par(mar = c(3, 3, 2, 0.5), mgp = c(1.5, 0.5, 0), tcl = -0.3)
##' sim.qqnorm()
##' par(op)
##'
##' \dontrun{
##'
##' # HTML animation page
##' ani.options(ani.height = 500, ani.width = 500, nmax = 100,
##'     interval = 0.1, title = "Demonstration of Simulated QQ Plots",
##'     description = "This animation shows the QQ plots of random numbers
##'     from a Normal distribution. Does them really look like normally
##'     distributed?")
##' ani.start()
##' par(mar = c(3, 3, 1, 0.5), mgp = c(1.5, 0.5, 0), tcl = -0.3)
##' sim.qqnorm(n = 15, pch = 20, main = "")
##' ani.stop()
##' }
##' ani.options(oopt)
##'
sim.qqnorm = function(n = 20, ...) {
    for(i in 1:ani.options("nmax")) {
        qqnorm(rnorm(n),...)
        ani.pause()
    }
}
