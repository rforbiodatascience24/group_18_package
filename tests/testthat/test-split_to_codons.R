test_that("Split to codons works", {
  expect_equal(split_to_codons("ATGCGTACG"), c("ATG", "CGT", "ACG"))
})
