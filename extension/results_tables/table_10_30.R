source("./extension/platform/results_scenario_a.R")
source("./extension/platform/results_scenario_b.R")
source("./extension/two_trial/results.R")

{
  
  n_rows <- 10
  n_cols <- 30
  
  settings_a <- 6
  settings_b <- 5
  start_b <- settings_a*2 + 4
  
  df <- matrix(NA, nrow = n_rows, ncol = n_cols, dimnames = NULL)
  
  # 1/9 Treat A: 0; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[2,3] <- two_trial_1_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[2,4 + j*2 -2] <- unname(rejection_1_2[[j]][1]) # A
    df[2,4 + j*2 -1] <- unname(discovery_1_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  
  for(j in 1:settings_b){
    df[2,start_b + j*3 -3] <- unname(rejection_1_2_B[[j]][1]) # A
    df[2,start_b + j*3 -2] <- unname(rejection_1_2_B[[j]][2]) # B
    df[2,start_b + j*3 -1] <- unname(discovery_1_2_B[[j]][1]) # FDR
  }
  
  # 2/9 Treat A: 0; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[3,3] <- two_trial_2_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[3,4 + j*2 -2] <- unname(rejection_2_2[[j]][1]) # A
    df[3,4 + j*2 -1] <- unname(discovery_2_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[3,start_b + j*3 -3] <- unname(rejection_2_2_B[[j]][1]) # A
    df[3,start_b + j*3 -2] <- unname(rejection_2_2_B[[j]][2]) # B
    df[3,start_b + j*3 -1] <- unname(discovery_2_2_B[[j]][1]) # FDR
  }
  
  
  # 3/9 Treat A: 0; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[4,3] <- two_trial_3_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[4,4 + j*2 -2] <- unname(rejection_3_2[[j]][1]) # A
    df[4,4 + j*2 -1] <- unname(discovery_3_2[[j]][1]) # FDR
  }
  
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[4,start_b + j*3 -3] <- unname(rejection_3_2_B[[j]][1]) # A
    df[4,start_b + j*3 -2] <- unname(rejection_3_2_B[[j]][2]) # B
    df[4,start_b + j*3 -1] <- unname(discovery_3_2_B[[j]][1]) # FDR
  }
  
  # 4/9 Treat A: 10%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[5,3] <- two_trial_4_1[[3]][1]) # A
  
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[5,4 + j*2 -2] <- unname(rejection_4_2[[j]][1]) # A
    df[5,4 + j*2 -1] <- unname(discovery_4_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[5,start_b + j*3 -3] <- unname(rejection_4_2_B[[j]][1]) # A
    df[5,start_b + j*3 -2] <- unname(rejection_4_2_B[[j]][2]) # B
    df[5,start_b + j*3 -1] <- unname(discovery_4_2_B[[j]][1]) # FDR
  }
  
  # 5/9 Treat A: 10%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[6,3] <- two_trial_5_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[6,4 + j*2 -2] <- unname(rejection_5_2[[j]][1]) # A
    df[6,4 + j*2 -1] <- unname(discovery_5_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[6,start_b + j*3 -3] <- unname(rejection_5_2_B[[j]][1]) # A
    df[6,start_b + j*3 -2] <- unname(rejection_5_2_B[[j]][2]) # B
    df[6,start_b + j*3 -1] <- unname(discovery_5_2_B[[j]][1]) # FDR
  }
  
  # 6/9 Treat A: 10%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[7,3] <- two_trial_6_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[7,4 + j*2 -2] <- unname(rejection_6_2[[j]][1]) # A
    df[7,4 + j*2 -1] <- unname(discovery_6_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[7,start_b + j*3 -3] <- unname(rejection_6_2_B[[j]][1]) # A
    df[7,start_b + j*3 -2] <- unname(rejection_6_2_B[[j]][2]) # B
    df[7,start_b + j*3 -1] <- unname(discovery_6_2_B[[j]][1]) # FDR
  }
  
  # 7/9 Treat A: 20%; Treat B: 0
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[8,3] <- two_trial_7_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[8,4 + j*2 -2] <- unname(rejection_7_2[[j]][1]) # A
    df[8,4 + j*2 -1] <- unname(discovery_7_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[8,start_b + j*3 -3] <- unname(rejection_7_2_B[[j]][1]) # A
    df[8,start_b + j*3 -2] <- unname(rejection_7_2_B[[j]][2]) # B
    df[8,start_b + j*3 -1] <- unname(discovery_7_2_B[[j]][1]) # FDR
  }
  
  # 8/9 Treat A: 20%; Treat B: 10%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[9,3] <- two_trial_8_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[9,4 + j*2 -2] <- unname(rejection_8_2[[j]][1]) # A
    df[9,4 + j*2 -1] <- unname(discovery_8_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[9,start_b + j*3 -3] <- unname(rejection_8_2_B[[j]][1]) # A
    df[9,start_b + j*3 -2] <- unname(rejection_8_2_B[[j]][2]) # B
    df[9,start_b + j*3 -1] <- unname(discovery_8_2_B[[j]][1]) # FDR
  }
  
  
  # 9/9 Treat A: 20%; Treat B: 20%
  # Powered to: Treatment effect 10%, baseline response rate 10%
  
  #############
  # Two-Trial #
  #############
  (df[10,3] <- two_trial_9_2[[3]][1]) # A
  
  ##############
  # Scenario A #
  ##############
  for(j in 1:settings_a){
    df[10,4 + j*2 -2] <- unname(rejection_9_2[[j]][1]) # A
    df[10,4 + j*2 -1] <- unname(discovery_9_2[[j]][1]) # FDR
  }
  
  ##############
  # Scenario B #
  ##############
  for(j in 1:settings_b){
    df[10,start_b + j*3 -3] <- unname(rejection_9_2_B[[j]][1]) # A
    df[10,start_b + j*3 -2] <- unname(rejection_9_2_B[[j]][2]) # B
    df[10,start_b + j*3 -1] <- unname(discovery_9_2_B[[j]][1]) # FDR
  }
  
  df<-round(df, 4)*100
}


# Table:
df[1,]<-""
df<-data.frame(df)

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


colnames(df) <- c("Treatment","", "A", rep(c("A"," "), 6), rep(c("A", "B", ""), 5))

top_header <- c(" " = 2, "Two-Trial" = 1, "Platform Same Time" = 12, "Platform Different Times" = 15)

second_header <- c(" " = 2, "Unadjusted" = 1, 
                   "Unadjusted" = 2, "Strategy 2" = 2, "Strategy 3" = 2, "Strategy 4" = 2, "Strategy 5" = 2, "Strategy 6" = 2,
                   "Unadjusted" = 3, "Pivotal" = 3, "Bonferroni" = 3, "Bonf + Pivotal" = 3, "LOND" = 3)

third_header <- c(" " = 2, "RR (%)" = 1, 
                  rep(c("RR (%)" = 1, "FDR (%)" = 1), 6), 
                  rep(c("RR (%)" = 2, "FDR (%)" = 1), 5))



table_html <- kable(df, format = "html", caption = "Table of results 2: Powered to delta = 10%, with baseline response rate 30% (N_arm = 498).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_html

table_latex <- kable(df, format = "latex", caption = "Table of results 2: Powered to delta = 10%, with baseline response rate 30% (N_arm = 498).", align = "c", escape = FALSE) %>%
  add_header_above(third_header) %>%
  add_header_above(second_header) %>%
  add_header_above(top_header) %>% 
  kable_styling(full_width = FALSE)
table_latex


