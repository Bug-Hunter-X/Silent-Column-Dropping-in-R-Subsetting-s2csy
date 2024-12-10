```r
# This code attempts to subset a data frame using a character vector that contains a column name that doesn't exist.

df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C")
subset_df <- df[, cols_to_select]
```