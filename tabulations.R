source("./extension/platform/results_scenario_a.R")
source("./extension/platform/results_scenario_b.R")

library(knitr)
library(kableExtra)

##############
# Scenario A #
##############

# Type 1 error

# Strategy 1: Unadjusted
(a1.5 <- type_1_powered_1[[2]][1]) # A 10%/10%
#(a52 <- type_1_powered_1[[2]][2]) # B                              
(a1.6 <- type_1_powered_2[[2]][1]) # A 10%/30%
#(a52 <- type_1_powered_2[[2]][2]) # B                              
(a2.5 <- type_1_powered_3[[2]][1]) # A 20%/10%
#(a52 <- type_1_powered_3[[2]][2]) # B                         
(a2.6 <- type_1_powered_4[[2]][1]) # A 20%/30%
#(a52 <- type_1_powered_4[[2]][2]) # B                      

# Strategy 2: Adjusted to account for single pivotal study
(a1.7 <- type_1_powered_1_st2[[2]][1]) # A 10%/10%
#(a32 <- type_1_powered_1_st2[[2]][2]) # B
(a1.8 <- type_1_powered_2_st2[[2]][1]) # A 10%/30%
#(a42 <- type_1_powered_2_st2[[2]][2]) # B
(a2.7 <- type_1_powered_3_st2[[2]][1]) # A 20%/10%
#(a <- type_1_powered_3_st2[[2]][2]) # B
(a2.8 <- type_1_powered_4_st2[[2]][1]) # A 20%/30%
#(a <- type_1_powered_4_st2[[2]][2]) # B

# Strategy 3: Bonferroni correction
(a1.9 <- type_1_powered_1_st3[[2]][1]) # A 10%/10%
#(a32 <- type_1_powered_1_st3[[2]][2]) # B
(a1.10 <- type_1_powered_2_st3[[2]][1]) # A 10%/30%
#(a42 <- type_1_powered_2_st3[[2]][2]) # B
(a2.9 <- type_1_powered_3_st3[[2]][1]) # A 20%/10%
#(a <- type_1_powered_3_st3[[2]][2]) # B
(a2.10 <- type_1_powered_4_st3[[2]][1]) # A 20%/30%
#(a <- type_1_powered_4_st3[[2]][2]) # B

# Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
(a1.11 <- type_1_powered_1_st4[[2]][1]) # A 10%/10%
#(a32 <- type_1_powered_1_st4[[2]][2]) # B
(a1.12 <- type_1_powered_2_st4[[2]][1]) # A 10%/30%
#(a42 <- type_1_powered_2_st4[[2]][2]) # B
(a2.11 <- type_1_powered_3_st4[[2]][1]) # A 20%/10%
#(a <- type_1_powered_3_st4[[2]][2]) # B
(a2.12 <- type_1_powered_4_st4[[2]][1]) # A 20%/30%
#(a <- type_1_powered_4_st4[[2]][2]) # B

# power

# Strategy 1: Unadjusted
(a3.5 <- power_1[[2]][1]) # A 10%/10%
#(a62 <- power_1[[2]][2]) # B               
(a3.6 <- power_2[[2]][1]) # A 10%/30%
#(a62 <- power_2[[2]][2]) # B               
(a4.5 <- power_3[[2]][1]) # A 20%/10%
#(a82 <- power_3[[2]][2]) # B               
(a4.6 <- power_4[[2]][1]) # A 20%/30%
#(a82 <- power_4[[2]][2]) # B               

# Strategy 2: Adjusted to account for single pivotal study
(a3.7 <- power_1_st2[[2]][1]) # A 10%/10%
#(a52 <- power_1_st2[[2]][2]) # B               
(a3.8 <- power_2_st2[[2]][1]) # A 10%/30%
#(a62 <- power_2_st2[[2]][2]) # B               
(a4.7 <- power_3_st2[[2]][1]) # A 20%/10%
#(a72 <- power_3_st2[[2]][2]) # B               
(a4.8 <- power_4_st2[[2]][1]) # A 20%/30%
#(a82 <- power_4_st2[[2]][2]) # B               

# Strategy 3: Bonferoni correction
(a3.9 <- power_1_st3[[2]][1]) # A 10%/10%
#(a92 <- power_1_st3[[2]][2]) # B               
(a3.10 <- power_2_st3[[2]][1]) # A 10%/30%
#(a10 <- power_2_st3[[2]][2]) # B               
(a4.9 <- power_3_st3[[2]][1]) # A 20%/10%
#(a11 <- power_3_st3[[2]][2]) # B               
(a4.10 <- power_4_st3[[2]][1]) # A 20%/30%
#(a12 <- power_4_st3[[2]][2]) # B               

# Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
(a3.11 <- power_1_st4[[2]][1]) # A 10%/10%
#(a92 <- power_1_st4[[2]][2]) # B               
(a3.12 <- power_2_st4[[2]][1]) # A 10%/30%
#(a10 <- power_2_st4[[2]][2]) # B               
(a4.11 <- power_3_st4[[2]][1]) # A 20%/10%
#(a11 <- power_3_st4[[2]][2]) # B               
(a4.12 <- power_4_st4[[2]][1]) # A 20%/30%
#(a12 <- power_4_st4[[2]][2]) # B               

# FDR TDR

# Strategy 1: Unadjusted
#(a<-discovery_1_1[[2]][1]) # FDR A=0/B=0 10%/10%
#(a<-discovery_1_1[[2]][2]) # TDR
#(a<-discovery_1_2[[2]][1]) # FDR A=0/B=0 10%/30%
#(a<-discovery_1_2[[2]][2]) # TDR

(a5.5<-discovery_2_1[[2]][1]) # FDR A=0/B=10 10%/10%
(a6.5<-discovery_2_1[[2]][2]) # TDR
(a5.6<-discovery_2_2[[2]][1]) # FDR A=0/B=10 10%/30%
(a6.6<-discovery_2_2[[2]][2]) # TDR     

(a7.5<-discovery_3_1[[2]][1]) # FDR A=0/B=20 10%/10%
(a8.5<-discovery_3_1[[2]][2]) # TDR                                
(a7.6<-discovery_3_2[[2]][1]) # FDR A=0/B=20 10%/30%
(a8.6<-discovery_3_2[[2]][2]) # TDR  

# omitted: 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)

(a9.5<-discovery_5_1[[2]][1]) # FDR A=10/B=10 10%/10%
(a10.5<-discovery_5_1[[2]][2]) # TDR                                           
(a9.6<-discovery_5_2[[2]][1]) # FDR A=10/B=10 10%/30%
(a10.6<-discovery_5_2[[2]][2]) # TDR

(a11.5<-discovery_6_1[[2]][1]) # FDR A=10/B=20 10%/10%
(a12.5<-discovery_6_1[[2]][2]) # TDR                                        
(a11.6<-discovery_6_2[[2]][1]) # FDR A=10/B=20 10%/30%
(a12.6<-discovery_6_2[[2]][2]) # TDR   

(a13.5<-discovery_6_3[[2]][1]) # FDR A=10/B=20 20%/10%
(a14.5<-discovery_6_3[[2]][2]) # TDR                                    
(a13.6<-discovery_6_4[[2]][1]) # FDR A=10/B=20 20%/30%
(a14.6<-discovery_6_4[[2]][2]) # TDR     

# omitted: 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 0%
# omitted: 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%

#(a5.19<-discovery_9_1[[2]][1]) # FDR A=20/B=20 20%/10%
#(a5.20<-discovery_9_1[[2]][2]) # TDR
#(a6.19<-discovery_9_2[[2]][1]) # FDR A=20/B=20 20%/30%
#(a6.20<-discovery_9_2[[2]][2]) # TDR


##########################
### Continue from here ###
##########################


# Strategy 2: Adjusted to account for single pivotal study
(discovery_1_1_st2[[2]][1]) # FDR A=0/B=0 10%/10%
(discovery_1_1_st2[[2]][2]) # TDR
(discovery_1_2_st2[[2]][1]) # FDR A=0/B=0 10%/30%
(discovery_1_2_st2[[2]][2]) # TDR
(discovery_2_1_st2[[2]][1]) # FDR A=0/B=10 10%/10%
(discovery_2_1_st2[[2]][2]) # TDR
(discovery_2_2_st2[[2]][1]) # FDR A=0/B=10 10%/30%
(discovery_2_2_st2[[2]][2]) # TDR                                
(discovery_3_1_st2[[2]][1]) # FDR A=0/B=10 10%/10%
(discovery_3_1_st2[[2]][2]) # TDR                                
(discovery_3_2_st2[[2]][1]) # FDR A=0/B=10 10%/30%
(discovery_3_2_st2[[2]][2]) # TDR  

# omitted: 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)

(discovery_5_1_st2[[2]][1]) # FDR A=10/B=10 10%/10%
(discovery_5_1_st2[[2]][2]) # TDR                                           
(discovery_5_2_st2[[2]][1]) # FDR A=10/B=10 10%/30%
(discovery_5_2_st2[[2]][2]) # TDR
(discovery_6_1_st2[[2]][1]) # FDR A=10/B=20 10%/10%
(discovery_6_1_st2[[2]][2]) # TDR                                        
(discovery_6_2_st2[[2]][1]) # FDR A=10/B=20 10%/30%
(discovery_6_2_st2[[2]][2]) # TDR                                    
(discovery_6_3_st2[[2]][1]) # FDR A=10/B=20 20%/10%
(discovery_6_3_st2[[2]][2]) # TDR                                    
(discovery_6_4_st2[[2]][1]) # FDR A=10/B=20 20%/30%
(discovery_6_4_st2[[2]][2]) # TDR     
(discovery_7_1_st2[[2]][1]) # FDR A=20/B=0 20%/10%
(discovery_7_1_st2[[2]][2]) # TDR
(discovery_7_2_st2[[2]][1]) # FDR A=20/B=0 20%/30%
(discovery_7_2_st2[[2]][2]) # TDR

# omitted: 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%

(discovery_9_1_st3[[2]][1]) # FDR A=20/B=20 20%/10%
(discovery_9_1_st3[[2]][2]) # TDR
(discovery_9_2_st3[[2]][1]) # FDR A=20/B=20 20%/30%
(discovery_9_2_st3[[2]][2]) # TDR

# Strategy 3: Bonferoni correction
(discovery_1_1_st3[[2]][1]) # FDR A=0/B=0 10%/10%
(discovery_1_1_st3[[2]][2]) # TDR
(discovery_1_2_st3[[2]][1]) # FDR A=0/B=0 10%/30%
(discovery_1_2_st3[[2]][2]) # TDR
(discovery_2_1_st3[[2]][1]) # FDR A=0/B=10 10%/10%
(discovery_2_1_st3[[2]][2]) # TDR
(discovery_2_2_st3[[2]][1]) # FDR A=0/B=10 10%/30%
(discovery_2_2_st3[[2]][2]) # TDR                                
(discovery_3_1_st3[[2]][1]) # FDR A=0/B=10 10%/10%
(discovery_3_1_st3[[2]][2]) # TDR                                
(discovery_3_2_st3[[2]][1]) # FDR A=0/B=10 10%/30%
(discovery_3_2_st3[[2]][2]) # TDR  

# omitted: 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)

(discovery_5_1_st3[[2]][1]) # FDR A=10/B=10 10%/10%
(discovery_5_1_st3[[2]][2]) # TDR                                           
(discovery_5_2_st3[[2]][1]) # FDR A=10/B=10 10%/30%
(discovery_5_2_st3[[2]][2]) # TDR
(discovery_6_1_st3[[2]][1]) # FDR A=10/B=20 10%/10%
(discovery_6_1_st3[[2]][2]) # TDR                                        
(discovery_6_2_st3[[2]][1]) # FDR A=10/B=20 10%/30%
(discovery_6_2_st3[[2]][2]) # TDR                                    
(discovery_6_3_st3[[2]][1]) # FDR A=10/B=20 20%/10%
(discovery_6_3_st3[[2]][2]) # TDR                                    
(discovery_6_4_st3[[2]][1]) # FDR A=10/B=20 20%/30%
(discovery_6_4_st3[[2]][2]) # TDR     
(discovery_7_1_st3[[2]][1]) # FDR A=20/B=0 20%/10%
(discovery_7_1_st3[[2]][2]) # TDR
(discovery_7_2_st3[[2]][1]) # FDR A=20/B=0 20%/30%
(discovery_7_2_st3[[2]][2]) # TDR

# omitted: 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%

(discovery_9_1_st3[[2]][1]) # FDR A=20/B=20 20%/10%
(discovery_9_1_st3[[2]][2]) # TDR
(discovery_9_2_st3[[2]][1]) # FDR A=20/B=20 20%/30%
(discovery_9_2_st3[[2]][2]) # TDR

# Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
(discovery_1_1_st4[[2]][1]) # FDR A=0/B=0 10%/10%
(discovery_1_1_st4[[2]][2]) # TDR
(discovery_1_2_st4[[2]][1]) # FDR A=0/B=0 10%/30%
(discovery_1_2_st4[[2]][2]) # TDR
(discovery_2_1_st4[[2]][1]) # FDR A=0/B=10 10%/10%
(discovery_2_1_st4[[2]][2]) # TDR
(discovery_2_2_st4[[2]][1]) # FDR A=0/B=10 10%/30%
(discovery_2_2_st4[[2]][2]) # TDR                                
(discovery_3_1_st4[[2]][1]) # FDR A=0/B=10 10%/10%
(discovery_3_1_st4[[2]][2]) # TDR                                
(discovery_3_2_st4[[2]][1]) # FDR A=0/B=10 10%/30%
(discovery_3_2_st4[[2]][2]) # TDR  

# omitted: 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)

(discovery_5_1_st4[[2]][1]) # FDR A=10/B=10 10%/10%
(discovery_5_1_st4[[2]][2]) # TDR                                           
(discovery_5_2_st4[[2]][1]) # FDR A=10/B=10 10%/30%
(discovery_5_2_st4[[2]][2]) # TDR
(discovery_6_1_st4[[2]][1]) # FDR A=10/B=20 10%/10%
(discovery_6_1_st4[[2]][2]) # TDR                                        
(discovery_6_2_st4[[2]][1]) # FDR A=10/B=20 10%/30%
(discovery_6_2_st4[[2]][2]) # TDR                                    
(discovery_6_3_st4[[2]][1]) # FDR A=10/B=20 20%/10%
(discovery_6_3_st4[[2]][2]) # TDR                                    
(discovery_6_4_st4[[2]][1]) # FDR A=10/B=20 20%/30%
(discovery_6_4_st4[[2]][2]) # TDR     
(discovery_7_1_st4[[2]][1]) # FDR A=20/B=0 20%/10%
(discovery_7_1_st4[[2]][2]) # TDR
(discovery_7_2_st4[[2]][1]) # FDR A=20/B=0 20%/30%
(discovery_7_2_st4[[2]][2]) # TDR

# omitted: 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%

(discovery_9_1_st4[[2]][1]) # FDR A=20/B=20 20%/10%
(discovery_9_1_st4[[2]][2]) # TDR
(discovery_9_2_st4[[2]][1]) # FDR A=20/B=20 20%/30%
(discovery_9_2_st4[[2]][2]) # TDR

##############
# Scenario B #
##############

# Type 1 error

# Unadjusted
(a1.14 <- type_1_powered_1_B[[2]][1]) # A 10%/10%
#(a52 <- type_1_powered_1_B[[2]][2]) # B                              
(a1.15 <- type_1_powered_2_B[[2]][1]) # A 10%/30%
#(a52 <- type_1_powered_2_B[[2]][2]) # B                              
(a2.14 <- type_1_powered_3_B[[2]][1]) # A 20%/10%
#(a52 <- type_1_powered_3_B[[2]][2]) # B                         
(a2.15 <- type_1_powered_4_B[[2]][1]) # A 20%/30%
#(a52 <- type_1_powered_4_B[[2]][2]) # B                      

# Bonferoni correction
(a1.16 <- type_1_powered_1_bonf_B[[2]][1]) # A 10%/10%
#(a52 <- type_1_powered_1_bonf_B[[2]][2]) # B
(a1.17 <- type_1_powered_2_bonf_B[[2]][1]) # A 10%/30%
#(a52 <- type_1_powered_2_bonf_B[[2]][2]) # B
(a2.16 <- type_1_powered_3_bonf_B[[2]][1]) # A 20%/10%
#(a52<- type_1_powered_3_bonf_B[[2]][2]) # B
(a2.17 <- type_1_powered_4_bonf_B[[2]][1]) # A 20%/30%
#(a52<- type_1_powered_4_bonf_B[[2]][2]) # B

# LOND
(a1.18 <- type_1_powered_1_lond_B[[2]][1]) # A 10%/10%
#(a52<- type_1_powered_1_lond_B[[2]][2]) # B
(a1.19 <- type_1_powered_2_lond_B[[2]][1]) # A 10%/30%
#(a52<- type_1_powered_2_lond_B[[2]][2]) # B
(a2.18 <- type_1_powered_3_lond_B[[2]][1]) # A 20%/10%
#(a52<- type_1_powered_3_lond_B[[2]][2]) # B
(a2.19 <- type_1_powered_4_lond_B[[2]][1]) # A 20%/30%
#(a52<- type_1_powered_4_lond_B[[2]][2]) # B

# power

# Unadjusted
(a3.14 <- power_1_B[[2]][1]) # A 10%/10%
#(a62 <- power_1_B[[2]][2]) # B               
(a3.15 <- power_2_B[[2]][1]) # A 10%/30%
#(a62 <- power_2_B[[2]][2]) # B               
(a4.14 <- power_3_B[[2]][1]) # A 20%/10%
#(a82 <- power_3_B[[2]][2]) # B               
(a4.15 <- power_4_B[[2]][1]) # A 20%/30%
#(a82 <- power_4_B[[2]][2]) # B               

# Bonferroni correction
(a3.16 <- power_1_bonf_B[[2]][1]) # A 10%/10%
#(a62 <- power_1_bonf_B[[2]][2]) # B               
(a3.17 <- power_2_bonf_B[[2]][1]) # A 10%/30%
#(a62 <- power_2_bonf_B[[2]][2]) # B               
(a4.16 <- power_3_bonf_B[[2]][1]) # A 20%/10%
#(a82 <- power_3_bonf_B[[2]][2]) # B               
(a4.17 <- power_4_bonf_B[[2]][1]) # A 20%/30%
#(a82 <- power_4_bonf_B[[2]][2]) # B               

# LOND
(a3.18 <- power_1_lond_B[[2]][1]) # A 10%/10%
#(a62 <- power_1_lond_B[[2]][2]) # B               
(a3.19 <- power_2_lond_B[[2]][1]) # A 10%/30%
#(a62 <- power_2_lond_B[[2]][2]) # B               
(a4.18 <- power_3_lond_B[[2]][1]) # A 20%/10%
#(a82 <- power_3_lond_B[[2]][2]) # B               
(a4.19 <- power_4_lond_B[[2]][1]) # A 20%/30%
#(a82 <- power_4_lond_B[[2]][2]) # B               

# FDR TDR
# [include]


{
  # Scenario A
  column5 = round(c(a1.5, a2.5, a3.5, a4.5, NA, NA, a5.5, a6.5, a7.5, a8.5, a9.5, a10.5, a11.5, a12.5, a13.5, a14.5, NA, NA),4)
  column6 = round(c(a1.6, a2.6, a3.6, a4.6, NA, NA, a5.6, a6.6, a7.6, a8.6, a9.6, a10.6, a11.6, a12.6, a13.6, a14.6, NA, NA),4)
  column7 = round(c(a1.7, a2.7, a3.7, a4.7, rep(NA,14)),4)
  column8 = round(c(a1.8, a2.8, a3.8, a4.8, rep(NA,14)),4)
  column9 = round(c(a1.9, a2.9, a3.9, a4.9, rep(NA,14)),4)
  column10 = round(c(a1.10, a2.10, a3.10, a4.10, rep(NA,14)),4)
  column11 = round(c(a1.11, a2.11, a3.11, a4.11, rep(NA,14)),4)
  column12 = round(c(a1.12, a2.12, a3.12, a4.12, rep(NA,14)),4)
  
  # Scenario B
  column13 = round(c(a1.14, a2.14, a3.14, a4.14, rep(NA,14)),4)
  column14 = round(c(a1.15, a2.15, a3.15, a4.15, rep(NA,14)),4)
  column15 = round(c(a1.16, a2.16, a3.16, a4.16, rep(NA,14)),4)
  column16 = round(c(a1.17, a2.17, a3.17, a4.17, rep(NA,14)),4)
  column17 = round(c(a1.18, a2.18, a3.18, a4.18, rep(NA,14)),4)
  column18 = round(c(a1.19, a2.19, a3.19, a4.19, rep(NA,14)),4)
  
  n_rows <- 18
  n_cols <- 20 # 2 first columns are row names
  
  df <- as.data.frame(matrix("", nrow = n_rows, ncol = n_cols), stringsAsFactors = FALSE)
  
  # Define column names (this will be our third header row)
  # First column for row names and then columns 2-19
  colnames(df) <- c("Response Rate (%)", "",rep(c("10","30"), 9))
  
  df[, 7] <- column5*100
  df[, 8] <- column6*100
  df[, 9] <- column7*100
  df[, 10] <- column8*100
  df[, 11] <- column9*100
  df[, 12] <- column10*100
  df[, 13] <- column11*100
  df[, 14] <- column12*100
  
  df[, 15] <- column13*100
  df[, 16] <- column14*100
  df[, 17] <- column15*100
  df[, 18] <- column16*100
  df[, 19] <- column17*100
  df[, 20] <- column18*100
  
  # Define row names:
  df[,1] <- c(
    "Type I Error (%) (Powered to $\\Delta = 10%$)", 
    "Type I Error (%) (Powered to $\\Delta = 20%$)",
    "Power (%) ($\\Delta = 10%$)",
    "Power (%) ($\\Delta = 20%$)",
    "Treatment no effect \\
  Treatment no effect ",
    "Treatment no effect \\
  Treatment no effect ",
    "Treatment no effect \\
  Treatment $\\Delta = 10%$",
    "Treatment no effect \\
  Treatment $\\Delta = 10%$",
    "Treatment no effect \\
  Treatment $\\Delta = 20%$",
    "Treatment no effect \\
  Treatment $\\Delta = 20%$",
    "Treatment $\\Delta = 10%$ \\
  Treatment $\\Delta = 10%$",
    "Treatment $\\Delta = 10%$ \\
  Treatment $\\Delta = 10%$",
    "Treatment $\\Delta = 10%$ \\
  Treatment $\\Delta = 20%$",
    "Treatment $\\Delta = 10%$ \\
  Treatment $\\Delta = 20%$",
    "Treatment $\\Delta = 10%$ \\
  Treatment $\\Delta = 20%$",
    "Treatment $\\Delta = 10%$ \\
  Treatment $\\Delta = 20%$",
    "Treatment $\\Delta = 20%$ \\
  Treatment $\\Delta = 20%$",
    "Treatment $\\Delta = 20%$ \\
  Treatment $\\Delta = 20%$"
  )
  
  df[,2] <- c(
    " ", 
    " ",
    " ",
    " ",
    "FDR",
    "TDR",
    "FDR",
    "TDR",
    "FDR",
    "TDR",
    "FDR",
    "TDR",
    "FDR",
    "TDR",
    "FDR",
    "TDR",
    "FDR",
    "TDR"
  )
  
  # Define header rows:
  # Top header row: 4 cells. The first cell is empty, the other three each span 6 columns.
  top_header <- c(" " = 2, "Two-Trial" = 4, "Platform (same time)" = 8, "Platform (different times)" = 6)
  
  # Middle header row: 10 cells. The first cell is empty, the other nine each span 2 columns.
  middle_header <- c("Adjustment" = 2, "Unadjusted" = 2, "Bonferroni Correction" = 2, 
                     "Unadjusted" = 2, "Strategy 2" = 2, "Strategy 3" = 2, "Strategy 4" = 2, 
                     "Unadjusted" = 2, "Bonferroni" = 2, "LOND" = 2)
  
  
  # Create an HTML preview table
  table_html <- kable(df, format = "html", caption = "Results table", align = "c", escape = FALSE) %>%
    add_header_above(middle_header) %>%
    add_header_above(top_header) %>%
    collapse_rows(columns = 1, valign = "middle") %>% 
    kable_styling(full_width = FALSE)
  
  # display table
  table_html
  
  # Create latex code 
  table_latex <- kable(df, format = "latex", caption = "Results table", align = "c", escape = FALSE) %>%
    add_header_above(middle_header) %>%
    add_header_above(top_header) %>%
    collapse_rows(columns = 1, valign = "middle") %>% 
    kable_styling(full_width = FALSE)
  
  # display table
  table_latex
}


