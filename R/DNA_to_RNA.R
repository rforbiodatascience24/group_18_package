#' Primitive function to translate a DNA sequence into a RNA sequence
#'
#' @param dna_seq DNA sequence
#'
#' @return RNA sequence
#' @export
#'
#' @examples DNA_to_RNA("ATCGTTG")
DNA_to_RNA <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
