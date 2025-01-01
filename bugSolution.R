```R
# Improved code that checks for the existence of columns before subsetting

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
columns_to_select <- c("A", "D", "E")

# Check if all columns exist
if (all(columns_to_select %in% colnames(df))) {
  subset_df <- df[, columns_to_select]
  print(subset_df)
} else {
  missing_cols <- setdiff(columns_to_select, colnames(df))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}

# Example with only existing columns
columns_to_select <- c("A", "B")
if (all(columns_to_select %in% colnames(df))) {
  subset_df <- df[, columns_to_select]
  print(subset_df)
} else {
  missing_cols <- setdiff(columns_to_select, colnames(df))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}
```