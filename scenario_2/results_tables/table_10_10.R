

{
  
  n_rows <- 10
  n_cols <- 31
  
  settings_a <- 6
  settings_b <- 5
  start_a <- 5
  start_b <- settings_a*2 + start_a
  
  df1 <- matrix(NA, nrow = n_rows, ncol = n_cols, dimnames = NULL)
  
  ################
  # Single Trial #
  ################
  # Treatment A has no true effect (treatment effect, Δ = 0%)
  df1[2,3] <- one_trial_1_1[[2]]
  
  # Treatment A has effect of 10%
  df1[5,3] <- one_trial_2_1[[2]]
  
  # Treatment A has effect of 20%
  df1[8,3] <- one_trial_3_1[[2]]
  
  
  # 1/9 Treat A: 0; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[2,4] <- two_trial_1_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[2,start_a + j*2 -2] <- unname(rejection_1_1[[j]][1]) # A
    df1[2,start_a + j*2 -1] <- unname(discovery_1_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  
  for(j in 1:settings_b){
    df1[2,start_b + j*3 -3] <- unname(rejection_1_1_B[[j]][1]) # A
    df1[2,start_b + j*3 -2] <- unname(rejection_1_1_B[[j]][2]) # B
    df1[2,start_b + j*3 -1] <- unname(discovery_1_1_B[[j]][1]) # FDR
  }
  
  # 2/9 Treat A: 0; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[3,4] <- two_trial_2_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[3,start_a + j*2 -2] <- unname(rejection_2_1[[j]][1]) # A
    df1[3,start_a + j*2 -1] <- unname(discovery_2_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[3,start_b + j*3 -3] <- unname(rejection_2_1_B[[j]][1]) # A
    df1[3,start_b + j*3 -2] <- unname(rejection_2_1_B[[j]][2]) # B
    df1[3,start_b + j*3 -1] <- unname(discovery_2_1_B[[j]][1]) # FDR
  }
  
  
  # 3/9 Treat A: 0; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[4,4] <- two_trial_3_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[4,start_a + j*2 -2] <- unname(rejection_3_1[[j]][1]) # A
    df1[4,start_a + j*2 -1] <- unname(discovery_3_1[[j]][1]) # FDR
  }
  
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[4,start_b + j*3 -3] <- unname(rejection_3_1_B[[j]][1]) # A
    df1[4,start_b + j*3 -2] <- unname(rejection_3_1_B[[j]][2]) # B
    df1[4,start_b + j*3 -1] <- unname(discovery_3_1_B[[j]][1]) # FDR
  }
  
  # 4/9 Treat A: 10%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[5,4] <- two_trial_4_1[[3]][1]) # A
  
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[5,start_a + j*2 -2] <- unname(rejection_4_1[[j]][1]) # A
    df1[5,start_a + j*2 -1] <- unname(discovery_4_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[5,start_b + j*3 -3] <- unname(rejection_4_1_B[[j]][1]) # A
    df1[5,start_b + j*3 -2] <- unname(rejection_4_1_B[[j]][2]) # B
    df1[5,start_b + j*3 -1] <- unname(discovery_4_1_B[[j]][1]) # FDR
  }
  
  # 5/9 Treat A: 10%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[6,4] <- two_trial_5_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[6,start_a + j*2 -2] <- unname(rejection_5_1[[j]][1]) # A
    df1[6,start_a + j*2 -1] <- unname(discovery_5_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[6,start_b + j*3 -3] <- unname(rejection_5_1_B[[j]][1]) # A
    df1[6,start_b + j*3 -2] <- unname(rejection_5_1_B[[j]][2]) # B
    df1[6,start_b + j*3 -1] <- unname(discovery_5_1_B[[j]][1]) # FDR
  }
  
  # 6/9 Treat A: 10%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[7,4] <- two_trial_6_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[7,start_a + j*2 -2] <- unname(rejection_6_1[[j]][1]) # A
    df1[7,start_a + j*2 -1] <- unname(discovery_6_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[7,start_b + j*3 -3] <- unname(rejection_6_1_B[[j]][1]) # A
    df1[7,start_b + j*3 -2] <- unname(rejection_6_1_B[[j]][2]) # B
    df1[7,start_b + j*3 -1] <- unname(discovery_6_1_B[[j]][1]) # FDR
  }
  
  # 7/9 Treat A: 20%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[8,4] <- two_trial_7_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[8,start_a + j*2 -2] <- unname(rejection_7_1[[j]][1]) # A
    df1[8,start_a + j*2 -1] <- unname(discovery_7_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[8,start_b + j*3 -3] <- unname(rejection_7_1_B[[j]][1]) # A
    df1[8,start_b + j*3 -2] <- unname(rejection_7_1_B[[j]][2]) # B
    df1[8,start_b + j*3 -1] <- unname(discovery_7_1_B[[j]][1]) # FDR
  }
  
  # 8/9 Treat A: 20%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[9,4] <- two_trial_8_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[9,start_a + j*2 -2] <- unname(rejection_8_1[[j]][1]) # A
    df1[9,start_a + j*2 -1] <- unname(discovery_8_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[9,start_b + j*3 -3] <- unname(rejection_8_1_B[[j]][1]) # A
    df1[9,start_b + j*3 -2] <- unname(rejection_8_1_B[[j]][2]) # B
    df1[9,start_b + j*3 -1] <- unname(discovery_8_1_B[[j]][1]) # FDR
  }
  
  
  # 9/9 Treat A: 20%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df1[10,4] <- two_trial_9_1[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df1[10,start_a + j*2 -2] <- unname(rejection_9_1[[j]][1]) # A
    df1[10,start_a + j*2 -1] <- unname(discovery_9_1[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df1[10,start_b + j*3 -3] <- unname(rejection_9_1_B[[j]][1]) # A
    df1[10,start_b + j*3 -2] <- unname(rejection_9_1_B[[j]][2]) # B
    df1[10,start_b + j*3 -1] <- unname(discovery_9_1_B[[j]][1]) # FDR
  }
  
  df1<-round(df1, 4)*100
}


# Table:
df1[1,]<-""
df1<-data.frame(df1)

df1_res<-df1[,-c(6,7,10,11,14,15,19:21,25:27)] # filtering settings 2, 4 and 6 for plat same times, and 2 and 4 for diff times

df1_res[,1] <- c("$\\Delta_A (\\%)$",
            "0",
            "0",
            "0",
            "10",
            "10",
            "10",
            "20",
            "20",
            "20")

df1_res[,2] <- c("$\\Delta_B (\\%)$",
            "0",
            "10",
            "20",
            "0",
            "10",
            "20",
            "0",
            "10",
            "20")


colnames(df1_res) <- c("Treatment","", "A", "A", rep(c("A"," "), 3), rep(c("A", "B", ""), 3))

top_header <- c(" " = 2, "Single Trial*" = 1, "Two-Trial" = 1, "Platform Same Time" = 6, "Platform Different Times" = 9)

second_header <- c(" " = 2, 
                   "Unadjusted" = 1, 
                   "Unadjusted" = 1, 
                   "Unadjusted" = 2, "Strategy 3" = 2,  "Strategy 5" = 2,
                   "Unadjusted" = 3, "Bonferroni" = 3, "LOND" = 3)

third_header <- c(" " = 2, 
                  "RR (%)" = 1, 
                  "RR (%)" = 1, 
                  rep(c("RR (%)" = 1, "FDR (%)" = 1), 3), 
                  rep(c("RR (%)" = 2, "FDR (%)" = 1), 3))

save(df1_res,file="./output/table_10_10.Rda")

table_html <- kable(df1_res, format = "html", caption = "Table of results 1: Powered to delta = 10%, with baseline response rate 10% (N_arm = 285).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_html

table_latex <- kable(df1_res, format = "latex", caption = "Table of results 1: Powered to delta = 10%, with baseline response rate 10% (N_arm = 285).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_latex


