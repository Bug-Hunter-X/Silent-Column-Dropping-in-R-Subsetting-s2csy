```r
#Improved code that explicitly handles the case where a column is not found
df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C")

#Check if all columns exist before subsetting
if(all(cols_to_select %in% names(df))){ 
  subset_df <- df[, cols_to_select] 
} else {
  missing_cols <- setdiff(cols_to_select, names(df))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}
```