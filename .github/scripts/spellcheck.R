files <- list.files(pattern = "\\.Rmd$")
ignore <- readLines("inst/WORDLIST")
res <- spelling::spell_check_files(files, ignore = ignore)
if (nrow(res) > 0) {
  print(res, n = Inf)
  cat("\nSpell check failed:", nrow(res), "unknown word(s)\n")
  cat("To accept a word, add it to inst/WORDLIST\n")
  quit(status = 1)
}
cat("Spell check OK\n")
