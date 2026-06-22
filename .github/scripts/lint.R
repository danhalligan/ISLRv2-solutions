lints <- lintr::lint_dir(".", pattern = "\\.Rmd$")
if (length(lints) > 0) {
  for (l in lints) {
    cat(sprintf("%s:%d:%d: [%s] %s\n",
                l$filename, l$line_number, l$column_number,
                l$linter, l$message))
  }
  cat("\nLint failed:", length(lints), "issue(s)\n")
  quit(status = 1)
}
cat("Lint OK\n")
