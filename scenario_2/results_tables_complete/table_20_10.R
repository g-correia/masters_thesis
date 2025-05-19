
{
  
  n_rows <- 10
  n_cols <- 31
  
  settings_a <- 6
  settings_b <- 5
  start_a <- 5
  start_b <- settings_a*2 + start_a
  
  df3 <- matrix(NA, nrow = n_rows, ncol = n_cols, dimnames = NULL)
  
  ################
  # Single Trial #
  ################
  # Treatment A has no true effect (treatment effect, Δ = 0%)
  df3[2,3] <- one_trial_1_3[[2]]
  
  # Treatment A has effect of 10%
  df3[5,3] <- one_trial_2_3[[2]]
  
  # Treatment A has effect of 20%
  df3[8,3] <- one_trial_3_3[[2]]
  
  
  # 1/9 Treat A: 0; Treat B: 0
  
  #############
  # Two-Trial #
  #############
  (df3[2,4] <- two_trial_1_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[2,start_a + j*2 -2] <- unname(rejection_1_3[[j]][1]) # A
    df3[2,start_a + j*2 -1] <- unname(discovery_1_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  
  for(j in 1:settings_b){
    df3[2,start_b + j*3 -3] <- unname(rejection_1_3_B[[j]][1]) # A
    df3[2,start_b + j*3 -2] <- unname(rejection_1_3_B[[j]][2]) # B
    df3[2,start_b + j*3 -1] <- unname(discovery_1_3_B[[j]][1]) # FDR
  }
  
  # 2/9 Treat A: 0; Treat B: 10%
  
  #############
  # Two-Trial #
  #############
  (df3[3,4] <- two_trial_2_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[3,start_a + j*2 -2] <- unname(rejection_2_3[[j]][1]) # A
    df3[3,start_a + j*2 -1] <- unname(discovery_2_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[3,start_b + j*3 -3] <- unname(rejection_2_3_B[[j]][1]) # A
    df3[3,start_b + j*3 -2] <- unname(rejection_2_3_B[[j]][2]) # B
    df3[3,start_b + j*3 -1] <- unname(discovery_2_3_B[[j]][1]) # FDR
  }
  
  
  # 3/9 Treat A: 0; Treat B: 20%
  
  #############
  # Two-Trial #
  #############
  (df3[4,4] <- two_trial_3_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[4,start_a + j*2 -2] <- unname(rejection_3_3[[j]][1]) # A
    df3[4,start_a + j*2 -1] <- unname(discovery_3_3[[j]][1]) # FDR
  }
  
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[4,start_b + j*3 -3] <- unname(rejection_3_3_B[[j]][1]) # A
    df3[4,start_b + j*3 -2] <- unname(rejection_3_3_B[[j]][2]) # B
    df3[4,start_b + j*3 -1] <- unname(discovery_3_3_B[[j]][1]) # FDR
  }
  
  # 4/9 Treat A: 10%; Treat B: 0
  
  #############
  # Two-Trial #
  #############
  (df3[5,4] <- two_trial_4_3[[3]][1]) # A
  
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[5,start_a + j*2 -2] <- unname(rejection_4_3[[j]][1]) # A
    df3[5,start_a + j*2 -1] <- unname(discovery_4_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[5,start_b + j*3 -3] <- unname(rejection_4_3_B[[j]][1]) # A
    df3[5,start_b + j*3 -2] <- unname(rejection_4_3_B[[j]][2]) # B
    df3[5,start_b + j*3 -1] <- unname(discovery_4_3_B[[j]][1]) # FDR
  }
  
  # 5/9 Treat A: 10%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df3[6,4] <- two_trial_5_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[6,start_a + j*2 -2] <- unname(rejection_5_3[[j]][1]) # A
    df3[6,start_a + j*2 -1] <- unname(discovery_5_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[6,start_b + j*3 -3] <- unname(rejection_5_3_B[[j]][1]) # A
    df3[6,start_b + j*3 -2] <- unname(rejection_5_3_B[[j]][2]) # B
    df3[6,start_b + j*3 -1] <- unname(discovery_5_3_B[[j]][1]) # FDR
  }
  
  # 6/9 Treat A: 10%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df3[7,4] <- two_trial_6_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[7,start_a + j*2 -2] <- unname(rejection_6_3[[j]][1]) # A
    df3[7,start_a + j*2 -1] <- unname(discovery_6_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[7,start_b + j*3 -3] <- unname(rejection_6_3_B[[j]][1]) # A
    df3[7,start_b + j*3 -2] <- unname(rejection_6_3_B[[j]][2]) # B
    df3[7,start_b + j*3 -1] <- unname(discovery_6_3_B[[j]][1]) # FDR
  }
  
  # 7/9 Treat A: 20%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df3[8,4] <- two_trial_7_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[8,start_a + j*2 -2] <- unname(rejection_7_3[[j]][1]) # A
    df3[8,start_a + j*2 -1] <- unname(discovery_7_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[8,start_b + j*3 -3] <- unname(rejection_7_3_B[[j]][1]) # A
    df3[8,start_b + j*3 -2] <- unname(rejection_7_3_B[[j]][2]) # B
    df3[8,start_b + j*3 -1] <- unname(discovery_7_3_B[[j]][1]) # FDR
  }
  
  # 8/9 Treat A: 20%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df3[9,4] <- two_trial_8_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[9,start_a + j*2 -2] <- unname(rejection_8_3[[j]][1]) # A
    df3[9,start_a + j*2 -1] <- unname(discovery_8_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[9,start_b + j*3 -3] <- unname(rejection_8_3_B[[j]][1]) # A
    df3[9,start_b + j*3 -2] <- unname(rejection_8_3_B[[j]][2]) # B
    df3[9,start_b + j*3 -1] <- unname(discovery_8_3_B[[j]][1]) # FDR
  }
  
  
  # 9/9 Treat A: 20%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df3[10,4] <- two_trial_9_3[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df3[10,start_a + j*2 -2] <- unname(rejection_9_3[[j]][1]) # A
    df3[10,start_a + j*2 -1] <- unname(discovery_9_3[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df3[10,start_b + j*3 -3] <- unname(rejection_9_3_B[[j]][1]) # A
    df3[10,start_b + j*3 -2] <- unname(rejection_9_3_B[[j]][2]) # B
    df3[10,start_b + j*3 -1] <- unname(discovery_9_3_B[[j]][1]) # FDR
  }
  
  df3<-round(df3, 4)*100
}


# Table:
df3[1,]<-""
df3<-data.frame(df3)

df3[,1] <- c("$\\Delta_A (\\%)$",
            "0",
            "0",
            "0",
            "10",
            "10",
            "10",
            "20",
            "20",
            "20")

df3[,2] <- c("$\\Delta_B (\\%)$",
            "0",
            "10",
            "20",
            "0",
            "10",
            "20",
            "0",
            "10",
            "20")


colnames(df3) <- c("Treatment","", "A", rep(c("A"," "), 6), rep(c("A", "B", ""), 5))

top_header <- c(" " = 2, "Single Trial*" = 1, "Two-Trial" = 1, "Platform Same Time" = 12, "Platform Different Times" = 15)

second_header <- c(" " = 2, 
                   "Unadjusted" = 1, 
                   "Unadjusted" = 1, 
                   "Unadjusted" = 2, "Strategy 2" = 2, "Strategy 3" = 2, "Strategy 4" = 2, "Strategy 5" = 2, "Strategy 6" = 2,
                   "Unadjusted" = 3, "Pivotal" = 3, "Bonferroni" = 3, "Bonf + Pivotal" = 3, "LOND" = 3)

third_header <- c(" " = 2, 
                  "RR (%)" = 1, 
                  "RR (%)" = 1, 
                  rep(c("RR (%)" = 1, "FDR (%)" = 1), 6), 
                  rep(c("RR (%)" = 2, "FDR (%)" = 1), 5))



table_html <- kable(df3, format = "html", caption = "Table of results 3: Powered to delta = 20%, with baseline response rate 10% (N_arm = 93).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_html

table_latex <- kable(df3, format = "latex", caption = "Table of results 3: Powered to delta = 20%, with baseline response rate 10% (N_arm = 93).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_latex


