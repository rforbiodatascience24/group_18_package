#' Count Unique Characters and Plot Frequency
#'
#' This function counts the frequency of unique nucleotide in a string and generates a bar plot
#' showing the counts of each unique character.
#'
#' @param sequence_str A sequence string to be analyzed for unique nucleotide frequencies.
#'
#' @return A ggplot2 bar plot showing the frequency of each unique nucleotide in the input string.
#'
#' @examples
#' plot_frequencies("AGTCAGTC")
#' # Returns: A ggplot bar plot with counts for each unique nucleotide
#'
#' @export
plot_frequencies <- function(sequence_str) {

  # Split the string into individual characters, convert to unique values
  split_sequence <- sequence_str |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each unique character in the original string
  counts <- sapply(split_sequence, function(amino_acid) stringr::str_count(string = sequence_str, pattern = amino_acid)) |>
    as.data.frame()

  # Name the count column and add a column for character labels
  colnames(counts) <- c("Counts")
  counts[["Nucleotide"]] <- rownames(counts)

  # Generate a bar plot of character frequencies
  freq_plots<- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Nucleotide, y = Counts, fill = Nucleotide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the ggplot object
  return(freq_plots)
}

