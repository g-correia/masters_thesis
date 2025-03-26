source("./extension/platform/results_scenario_a.R")
source("./extension/platform/results_scenario_b.R")
source("./extension/two_trial/results.R")


{
  # 1/9 Treat A: 0; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a3.3 <- two_trial_1_2[[3]][1]) # A
  (a3.4 <- two_trial_1_2[[4]][1]) # B
  
  
  ##############
  # Scenario A #
  ##############
  
  (a3.5 <- rejection_1_2[[1]][1]) # A
  (a3.6 <- rejection_1_2[[1]][2]) # B
  (a3.7 <- discovery_1_2[[1]][1])
  (a3.8 <- rejection_1_2[[2]][1]) # A 10%/10%
  (a3.9 <- rejection_1_2[[2]][2]) # B
  (a3.10 <- discovery_1_2[[2]][1])
  (a3.11 <- rejection_1_2[[3]][1]) # A 10%/10%
  (a3.12 <- rejection_1_2[[3]][2]) # B
  (a3.13 <- discovery_1_2[[3]][1])
  (a3.14 <- rejection_1_2[[4]][1]) # A 10%/10%
  (a3.15 <- rejection_1_2[[4]][2]) # B
  (a3.16 <- discovery_1_2[[4]][1])
  (a3.17 <- rejection_1_2[[5]][1])
  (a3.18 <- rejection_1_2[[5]][2])
  (a3.19 <- discovery_1_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a3.20 <- rejection_1_2_B[[1]][1]) # A
  (a3.21 <- rejection_1_2_B[[1]][2]) # B 
  (a3.22 <- discovery_1_2_B[[1]][1])
  (a3.23 <- rejection_1_2_B[[2]][1]) # A 10%/10%
  (a3.24 <- rejection_1_2_B[[2]][2]) # B
  (a3.25 <- discovery_1_2_B[[2]][1])
  (a3.26 <- rejection_1_2_B[[3]][1]) # A 10%/10%
  (a3.27 <- rejection_1_2_B[[3]][2]) # B
  (a3.28 <- discovery_1_2_B[[3]][1])
  
  # 2/9 Treat A: 0; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a4.3 <- two_trial_2_2[[3]][1]) # A
  (a4.4 <- two_trial_2_2[[4]][1]) # B
  
  
  ##############
  # Scenario A #
  ##############
  
  (a4.5 <- rejection_2_2[[1]][1]) # A
  (a4.6 <- rejection_2_2[[1]][2]) # B
  (a4.7 <- discovery_2_2[[1]][1])
  (a4.8 <- rejection_2_2[[2]][1]) # A 10%/10%
  (a4.9 <- rejection_2_2[[2]][2]) # B
  (a4.10 <- discovery_2_2[[2]][1])
  (a4.11 <- rejection_2_2[[3]][1]) # A 10%/10%
  (a4.12 <- rejection_2_2[[3]][2]) # B
  (a4.13 <- discovery_2_2[[3]][1])
  (a4.14 <- rejection_2_2[[4]][1]) # A 10%/10%
  (a4.15 <- rejection_2_2[[4]][2]) # B
  (a4.16 <- discovery_2_2[[4]][1])
  (a4.17 <- rejection_2_2[[5]][1])
  (a4.18 <- rejection_2_2[[5]][2])
  (a4.19 <- discovery_2_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a4.20 <- rejection_2_2_B[[1]][1]) # A
  (a4.21 <- rejection_2_2_B[[1]][2]) # B 
  (a4.22 <- discovery_2_2_B[[1]][1])
  (a4.23 <- rejection_2_2_B[[2]][1]) # A 10%/10%
  (a4.24 <- rejection_2_2_B[[2]][2]) # B
  (a4.25 <- discovery_2_2_B[[2]][1])
  (a4.26 <- rejection_2_2_B[[3]][1]) # A 10%/10%
  (a4.27 <- rejection_2_2_B[[3]][2]) # B
  (a4.28 <- discovery_2_2_B[[3]][1])
  
  # 3/9 Treat A: 0; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a5.3 <- two_trial_3_2[[3]][1]) # A
  (a5.4 <- two_trial_3_2[[4]][1]) # B
  
  ##############
  # Scenario A #
  ##############
  
  (a5.5 <- rejection_3_2[[1]][1]) # A
  (a5.6 <- rejection_3_2[[1]][2]) # B
  (a5.7 <- discovery_3_2[[1]][1])
  (a5.8 <- rejection_3_2[[2]][1]) # A 10%/10%
  (a5.9 <- rejection_3_2[[2]][2]) # B
  (a5.10 <- discovery_3_2[[2]][1])
  (a5.11 <- rejection_3_2[[3]][1]) # A 10%/10%
  (a5.12 <- rejection_3_2[[3]][2]) # B
  (a5.13 <- discovery_3_2[[3]][1])
  (a5.14 <- rejection_3_2[[4]][1]) # A 10%/10%
  (a5.15 <- rejection_3_2[[4]][2]) # B
  (a5.16 <- discovery_3_2[[4]][1])
  (a5.17 <- rejection_3_2[[5]][1])
  (a5.18 <- rejection_3_2[[5]][2])
  (a5.19 <- discovery_3_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a5.20 <- rejection_3_2_B[[1]][1]) # A
  (a5.21 <- rejection_3_2_B[[1]][2]) # B 
  (a5.22 <- discovery_3_2_B[[1]][1])
  (a5.23 <- rejection_3_2_B[[2]][1]) # A 10%/10%
  (a5.24 <- rejection_3_2_B[[2]][2]) # B
  (a5.25 <- discovery_3_2_B[[2]][1])
  (a5.26 <- rejection_3_2_B[[3]][1]) # A 10%/10%
  (a5.27 <- rejection_3_2_B[[3]][2]) # B
  (a5.28 <- discovery_3_2_B[[3]][1])
  
  # 4/9 Treat A: 10%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a6.3 <- two_trial_4_2[[3]][1]) # A
  (a6.4 <- two_trial_4_2[[4]][1]) # B
  
  
  ##############
  # Scenario A #
  ##############
  
  (a6.5 <- rejection_4_2[[1]][1]) # A
  (a6.6 <- rejection_4_2[[1]][2]) # B
  (a6.7 <- discovery_4_2[[1]][1])
  (a6.8 <- rejection_4_2[[2]][1]) # A 10%/10%
  (a6.9 <- rejection_4_2[[2]][2]) # B
  (a6.10 <- discovery_4_2[[2]][1])
  (a6.11 <- rejection_4_2[[3]][1]) # A 10%/10%
  (a6.12 <- rejection_4_2[[3]][2]) # B
  (a6.13 <- discovery_4_2[[3]][1])
  (a6.14 <- rejection_4_2[[4]][1]) # A 10%/10%
  (a6.15 <- rejection_4_2[[4]][2]) # B
  (a6.16 <- discovery_4_2[[4]][1])
  (a6.17 <- rejection_4_2[[5]][1])
  (a6.18 <- rejection_4_2[[5]][2])
  (a6.19 <- discovery_4_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a6.20 <- rejection_4_2_B[[1]][1]) # A
  (a6.21 <- rejection_4_2_B[[1]][2]) # B 
  (a6.22 <- discovery_4_2_B[[1]][1])
  (a6.23 <- rejection_4_2_B[[2]][1]) # A 10%/10%
  (a6.24 <- rejection_4_2_B[[2]][2]) # B
  (a6.25 <- discovery_4_2_B[[2]][1])
  (a6.26 <- rejection_4_2_B[[3]][1]) # A 10%/10%
  (a6.27 <- rejection_4_2_B[[3]][2]) # B
  (a6.28 <- discovery_4_2_B[[3]][1])
  
  # 5/9 Treat A: 10%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a7.3 <- two_trial_5_2[[3]][1]) # A
  (a7.4 <- two_trial_5_2[[4]][1]) # B
  
  ##############
  # Scenario A #
  ##############
  
  (a7.5 <- rejection_5_2[[1]][1]) # A
  (a7.6 <- rejection_5_2[[1]][2]) # B
  (a7.7 <- discovery_5_2[[1]][1])
  (a7.8 <- rejection_5_2[[2]][1]) # A 10%/10%
  (a7.9 <- rejection_5_2[[2]][2]) # B
  (a7.10 <- discovery_5_2[[2]][1])
  (a7.11 <- rejection_5_2[[3]][1]) # A 10%/10%
  (a7.12 <- rejection_5_2[[3]][2]) # B
  (a7.13 <- discovery_5_2[[3]][1])
  (a7.14 <- rejection_5_2[[4]][1]) # A 10%/10%
  (a7.15 <- rejection_5_2[[4]][2]) # B
  (a7.16 <- discovery_5_2[[4]][1])
  (a7.17 <- rejection_5_2[[5]][1])
  (a7.18 <- rejection_5_2[[5]][2])
  (a7.19 <- discovery_5_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a7.20 <- rejection_5_2_B[[1]][1]) # A
  (a7.21 <- rejection_5_2_B[[1]][2]) # B 
  (a7.22 <- discovery_5_2_B[[1]][1])
  (a7.23 <- rejection_5_2_B[[2]][1]) # A 10%/10%
  (a7.24 <- rejection_5_2_B[[2]][2]) # B
  (a7.25 <- discovery_5_2_B[[2]][1])
  (a7.26 <- rejection_5_2_B[[3]][1]) # A 10%/10%
  (a7.27 <- rejection_5_2_B[[3]][2]) # B
  (a7.28 <- discovery_5_2_B[[3]][1])
  
  # 6/9 Treat A: 10%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a8.3 <- two_trial_6_2[[3]][1]) # A
  (a8.4 <- two_trial_6_2[[4]][1]) # B
  
  
  ##############
  # Scenario A #
  ##############
  
  (a8.5 <- rejection_6_2[[1]][1]) # A
  (a8.6 <- rejection_6_2[[1]][2]) # B
  (a8.7 <- discovery_6_2[[1]][1])
  (a8.8 <- rejection_6_2[[2]][1]) # A 10%/10%
  (a8.9 <- rejection_6_2[[2]][2]) # B
  (a8.10 <- discovery_6_2[[2]][1])
  (a8.11 <- rejection_6_2[[3]][1]) # A 10%/10%
  (a8.12 <- rejection_6_2[[3]][2]) # B
  (a8.13 <- discovery_6_2[[3]][1])
  (a8.14 <- rejection_6_2[[4]][1]) # A 10%/10%
  (a8.15 <- rejection_6_2[[4]][2]) # B
  (a8.16 <- discovery_6_2[[4]][1])
  (a8.17 <- rejection_6_2[[5]][1])
  (a8.18 <- rejection_6_2[[5]][2])
  (a8.19 <- discovery_6_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a8.20 <- rejection_6_2_B[[1]][1]) # A
  (a8.21 <- rejection_6_2_B[[1]][2]) # B 
  (a8.22 <- discovery_6_2_B[[1]][1])
  (a8.23 <- rejection_6_2_B[[2]][1]) # A 10%/10%
  (a8.24 <- rejection_6_2_B[[2]][2]) # B
  (a8.25 <- discovery_6_2_B[[2]][1])
  (a8.26 <- rejection_6_2_B[[3]][1]) # A 10%/10%
  (a8.27 <- rejection_6_2_B[[3]][2]) # B
  (a8.28 <- discovery_6_2_B[[3]][1])
  
  # 7/9 Treat A: 20%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a9.3 <- two_trial_7_2[[3]][1]) # A
  (a9.4 <- two_trial_7_2[[4]][1]) # B
  
  
  ##############
  # Scenario A #
  ##############
  
  (a9.5 <- rejection_7_2[[1]][1]) # A
  (a9.6 <- rejection_7_2[[1]][2]) # B
  (a9.7 <- discovery_7_2[[1]][1])
  (a9.8 <- rejection_7_2[[2]][1]) # A 10%/10%
  (a9.9 <- rejection_7_2[[2]][2]) # B
  (a9.10 <- discovery_7_2[[2]][1])
  (a9.11 <- rejection_7_2[[3]][1]) # A 10%/10%
  (a9.12 <- rejection_7_2[[3]][2]) # B
  (a9.13 <- discovery_7_2[[3]][1])
  (a9.14 <- rejection_7_2[[4]][1]) # A 10%/10%
  (a9.15 <- rejection_7_2[[4]][2]) # B
  (a9.16 <- discovery_7_2[[4]][1])
  (a9.17 <- rejection_7_2[[5]][1])
  (a9.18 <- rejection_7_2[[5]][2])
  (a9.19 <- discovery_7_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a9.20 <- rejection_7_2_B[[1]][1]) # A
  (a9.21 <- rejection_7_2_B[[1]][2]) # B 
  (a9.22 <- discovery_7_2_B[[1]][1])
  (a9.23 <- rejection_7_2_B[[2]][1]) # A 10%/10%
  (a9.24 <- rejection_7_2_B[[2]][2]) # B
  (a9.25 <- discovery_7_2_B[[2]][1])
  (a9.26 <- rejection_7_2_B[[3]][1]) # A 10%/10%
  (a9.27 <- rejection_7_2_B[[3]][2]) # B
  (a9.28 <- discovery_7_2_B[[3]][1])
  
  # 8/9 Treat A: 20%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a10.3 <- two_trial_8_2[[3]][1]) # A
  (a10.4 <- two_trial_8_2[[4]][1]) # B
  
  ##############
  # Scenario A #
  ##############
  
  (a10.5 <- rejection_8_2[[1]][1]) # A
  (a10.6 <- rejection_8_2[[1]][2]) # B
  (a10.7 <- discovery_8_2[[1]][1])
  (a10.8 <- rejection_8_2[[2]][1]) # A 10%/10%
  (a10.9 <- rejection_8_2[[2]][2]) # B
  (a10.10 <- discovery_8_2[[2]][1])
  (a10.11 <- rejection_8_2[[3]][1]) # A 10%/10%
  (a10.12 <- rejection_8_2[[3]][2]) # B
  (a10.13 <- discovery_8_2[[3]][1])
  (a10.14 <- rejection_8_2[[4]][1]) # A 10%/10%
  (a10.15 <- rejection_8_2[[4]][2]) # B
  (a10.16 <- discovery_8_2[[4]][1])
  (a10.17 <- rejection_8_2[[5]][1])
  (a10.18 <- rejection_8_2[[5]][2])
  (a10.19 <- discovery_8_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a10.20 <- rejection_8_2_B[[1]][1]) # A
  (a10.21 <- rejection_8_2_B[[1]][2]) # B 
  (a10.22 <- discovery_8_2_B[[1]][1])
  (a10.23 <- rejection_8_2_B[[2]][1]) # A 10%/10%
  (a10.24 <- rejection_8_2_B[[2]][2]) # B
  (a10.25 <- discovery_8_2_B[[2]][1])
  (a10.26 <- rejection_8_2_B[[3]][1]) # A 10%/10%
  (a10.27 <- rejection_8_2_B[[3]][2]) # B
  (a10.28 <- discovery_8_2_B[[3]][1])
  
  # 9/9 Treat A: 20%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (a11.3 <- two_trial_9_2[[3]][1]) # A
  (a11.4 <- two_trial_9_2[[4]][1]) # B
  
  ##############
  # Scenario A #
  ##############
  
  (a11.5 <- rejection_9_2[[1]][1]) # A
  (a11.6 <- rejection_9_2[[1]][2]) # B
  (a11.7 <- discovery_9_2[[1]][1])
  (a11.8 <- rejection_9_2[[2]][1]) # A 10%/10%
  (a11.9 <- rejection_9_2[[2]][2]) # B
  (a11.10 <- discovery_9_2[[2]][1])
  (a11.11 <- rejection_9_2[[3]][1]) # A 10%/10%
  (a11.12 <- rejection_9_2[[3]][2]) # B
  (a11.13 <- discovery_9_2[[3]][1])
  (a11.14 <- rejection_9_2[[4]][1]) # A 10%/10%
  (a11.15 <- rejection_9_2[[4]][2]) # B
  (a11.16 <- discovery_9_2[[4]][1])
  (a11.17 <- rejection_9_2[[5]][1])
  (a11.18 <- rejection_9_2[[5]][2])
  (a11.19 <- discovery_9_2[[5]][2])
  
  ##############
  # Scenario B #
  ##############
  
  (a11.20 <- rejection_9_2_B[[1]][1]) # A
  (a11.21 <- rejection_9_2_B[[1]][2]) # B 
  (a11.22 <- discovery_9_2_B[[1]][1])
  (a11.23 <- rejection_9_2_B[[2]][1]) # A 10%/10%
  (a11.24 <- rejection_9_2_B[[2]][2]) # B
  (a11.25 <- discovery_9_2_B[[2]][1])
  (a11.26 <- rejection_9_2_B[[3]][1]) # A 10%/10%
  (a11.27 <- rejection_9_2_B[[3]][2]) # B
  (a11.28 <- discovery_9_2_B[[3]][1])
  
}
# Table:

n_rows <- 10
n_cols <- 28

df <- data.frame(matrix("", nrow = n_rows, ncol = n_cols))

colnames(df) <- c("Treatment","", "A", "B", rep(c("A", "B", ""), 8))

top_header <- c(" " = 2, "Two-Trial" = 2, "Platform Same Time" = 15, "Platform Different Times" = 9)

second_header <- c(" " = 2, "Unadjusted" = 2, 
                   "Unadjusted" = 3, "Strategy 2" = 3, "Strategy 3" = 3, "Strategy 4" = 3, "Strategy 5" = 3, 
                   "Unadjusted" = 3, "Bonferroni" = 3, "LOND" = 3)

third_header <- c(" " = 2, "Rejection Rate (%)" = 2, rep(c("Rejection Rate (%)" = 2,		"FDR (%)" = 1), 8))


df[,1] <- c("$\\Delta_A (\\%)$",
            "0",
            "0",
            "0",
            "10",
            "10",
            "10",
            "20",
            "20",
            "20")

df[,2] <- c("$\\Delta_B (\\%)$",
            "0",
            "10",
            "20",
            "0",
            "10",
            "20",
            "0",
            "10",
            "20")

df[2, 3:n_cols] <- round(unname(c(a3.3, a3.4, a3.5, a3.6, a3.7, a3.8, a3.9, a3.10, a3.11, a3.12, a3.13, a3.14, a3.15, a3.16, a3.17, a3.18, a3.19, a3.20, a3.21, a3.22, a3.23, a3.24, a3.25, a3.26, a3.27, a3.28)), 4) * 100
df[3, 3:n_cols] <- round(unname(c(a4.3, a4.4, a4.5, a4.6, a4.7, a4.8, a4.9, a4.10, a4.11, a4.12, a4.13, a4.14, a4.15, a4.16, a4.17, a4.18, a4.19, a4.20, a4.21, a4.22, a4.23, a4.24, a4.25, a4.26, a4.27, a4.28)), 4) * 100
df[4, 3:n_cols] <- round(unname(c(a5.3, a5.4, a5.5, a5.6, a5.7, a5.8, a5.9, a5.10, a5.11, a5.12, a5.13, a5.14, a5.15, a5.16, a5.17, a5.18, a5.19, a5.20, a5.21, a5.22, a5.23, a5.24, a5.25, a5.26, a5.27, a5.28)), 4) * 100
df[5, 3:n_cols] <- round(unname(c(a6.3, a6.4, a6.5, a6.6, a6.7, a6.8, a6.9, a6.10, a6.11, a6.12, a6.13, a6.14, a6.15, a6.16, a6.17, a6.18, a6.19, a6.20, a6.21, a6.22, a6.23, a6.24, a6.25, a6.26, a6.27, a6.28)), 4) * 100
df[6, 3:n_cols] <- round(unname(c(a7.3, a7.4, a7.5, a7.6, a7.7, a7.8, a7.9, a7.10, a7.11, a7.12, a7.13, a7.14, a7.15, a7.16, a7.17, a7.18, a7.19, a7.20, a7.21, a7.22, a7.23, a7.24, a7.25, a7.26, a7.27, a7.28)), 4) * 100
df[7, 3:n_cols] <- round(unname(c(a8.3, a8.4, a8.5, a8.6, a8.7, a8.8, a8.9, a8.10, a8.11, a8.12, a8.13, a8.14, a8.15, a8.16, a8.17, a8.18, a8.19, a8.20, a8.21, a8.22, a8.23, a8.24, a8.25, a8.26, a8.27, a8.28)), 4) * 100
df[8, 3:n_cols] <- round(unname(c(a9.3, a9.4, a9.5, a9.6, a9.7, a9.8, a9.9, a9.10, a9.11, a9.12, a9.13, a9.14, a9.15, a9.16, a9.17, a9.18, a9.19, a9.20, a9.21, a9.22, a9.23, a9.24, a9.25, a9.26, a9.27, a9.28)), 4) * 100
df[9, 3:n_cols] <- round(unname(c(a10.3, a10.4, a10.5, a10.6, a10.7, a10.8, a10.9, a10.10, a10.11, a10.12, a10.13, a10.14, a10.15, a10.16, a10.17, a10.18, a10.19, a10.20, a10.21, a10.22, a10.23, a10.24, a10.25, a10.26, a10.27, a10.28)), 4) * 100
df[10, 3:n_cols] <- round(unname(c(a11.3, a11.4, a11.5, a11.6, a11.7, a11.8, a11.9, a11.10, a11.11, a11.12, a11.13, a11.14, a11.15, a11.16, a11.17, a11.18, a11.19, a11.20, a11.21, a11.22, a11.23, a11.24, a11.25, a11.26, a11.27, a11.28)), 4) * 100

table_html <- kable(df, format = "html", caption = "Table of results 2: Powered to delta = 10%, with baseline response rate 30% (N_arm = 477).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_html

table_latex <- kable(df, format = "latex", caption = "Table of results 2: Powered to delta = 10%, with baseline response rate 30% (N_arm = 477).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_latex


