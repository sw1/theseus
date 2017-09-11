#' @import phyloseq
NULL

#' converts the sam_data slot of a phyloseq object to a vegan-compatible dataframe
#'
#' physeq2veg_sd is a helper function intended to convert the metadata-containing sam_data slot of a phyloseq object to a vegan-friendly dataframe. 
#'
#' @param PS (required) a phyloseq object
#'
#' @return A dataframe containing a phyloseq object's sam_data slot. 
#'
#' @seealso \code{\link[phyloseq]{phyloseq-class}} \code{\link[phyloseq]{sample_data-class}} \code{\link[phyloseq]{sample_data}}
#'
#' @examples
#' \dontrun{
#' library(phyloseq)
#' data("GlobalPatterns")
#' # inspect sample_data()
#' names(sample_data(GlobalPatterns))
#' rownames(sample_data(GlobalPatterns))
#' dim(sample_data(GlobalPatterns))
#' gp.sd <- physeq2veg_sd(GlobalPatterns)
#' names(gp.sd)
#' rownames(gp.sd)
#' dim(gp.sd)
#' }
#'
#' @export

physeq2veg_sd <- function(PS) {
  sd <- sample_data(PS)
  return(as(sd,"data.frame"))
}