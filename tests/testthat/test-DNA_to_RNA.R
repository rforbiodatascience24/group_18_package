test_that("DNA_to_RNA works", {
  dna_seq = "ATCG"
  expect_equal(DNA_to_RNA((dna_seq)), "AUCG")
})
