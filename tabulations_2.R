library(knitr)
library(kableExtra)


n_rows <- 10
n_cols <- 28
empty_df <- data.frame(matrix("", nrow = n_rows, ncol = n_cols))
colnames(empty_df) <- c("Treatment","", "A", "B", rep(c("A", "B", ""), 8))

top_header <- c(" " = 2, "Two-Trial" = 2, "Platform Same Time" = 15, "Platform Different Times" = 9)

second_header <- c(" " = 2, "Unadjusted" = 2, 
                   "Unadjusted" = 3, "Strategy 2" = 3, "Strategy 3" = 3, "Strategy 4" = 3, "Strategy 5" = 3, 
                   "Unadjusted" = 3, "Bonferroni" = 3, "LOND" = 3)

third_header <- c(" " = 2, "Rejection Rate (%)" = 2, rep(c("Rejection Rate (%)" = 2,		"FDR (%)" = 1), 8))

table_html <- kable(empty_df, format = "html", caption = "Table of results 1: Powered to delta = 10%, with baseline response rate 10% (N_arm = 266).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  collapse_rows(columns = 1, valign = "middle") %>% 
  kable_styling(full_width = FALSE)
table_html

