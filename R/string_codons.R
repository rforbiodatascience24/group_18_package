#' Vector of codons  into a single string
#'
#' @param codons A vector of codon identifiers to be combined into a single sequence.
#'
#' @return A single string representing the combined sequence of codon names.
#' @export
#'
#' @examples
#' #' # Example 1: Basic usage with a few codons
#' NAME_OF_YOUR_OBJECT <- c("AUG" = "M", "UUU" = "F", "GGA" = "G")
#' string_codons(c("AUG", "UUU", "GGA"))
#' # Returns: "MFG"
#'
#' # Example 2: Combining different codons into a sequence
#' NAME_OF_YOUR_OBJECT <- c("AUG" = "M", "UUU" = "F", "GGA" = "G", "CCC" = "P")
#' string_codons(c("AUG", "GGA", "CCC"))
#' # Returns: "MGP"
string_codons <- function(codons){
  combined_codons_stirng <- paste0(codon_table[codons], collapse = "")
  return(combined_codons_stirng)
}
