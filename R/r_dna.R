
#' Title: Random DNA sequence
#'
#' @param length Length of desired random DNA sequence
#'
#' @return The function allows the user to create random DNA sequences with desired length
#' @export
#'
#' @examples random_dna_seq(20)
random_dna_seq <- function(length){
  str_sequence <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  full_sequence <- paste0(str_sequence, collapse = "")
  return(full_sequence)
  }
