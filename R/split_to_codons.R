
#' Split a String into Codons
#'
#' This function takes a character string and splits it into triplets of characters (codons).
#' By default, it starts from the first character, but a custom starting position can be provided.
#'
#' @param sequence A sequence (string) to be split into codons.
#' @param start An integer indicating the starting position to begin forming codons. Default is 1.
#'
#' @return A character vector of codons (3-character substrings).
#'
#' @examples
#' split_to_codons("ATGCGTACG", start = 1)
#' # Returns: "ATG" "CGT" "ACG"
#'
#' split_to_codons("GTCAGTCTTAG", start = 2)
#' # Returns: "TCA" "GTC" "TAG"
#'
#' @export
split_to_codons <- function(sequence, start = 1)
  {
  sequence_str <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_str-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_str, by = 3))
  return(codons)
}


