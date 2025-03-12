source("./extension/platform/results_scenario_a.R")
source("./extension/platform/results_scenario_b.R")

library(knitr)
library(kableExtra)

# [extension] for tabulation [cell indicies (a) to be adjusted once table visualization is defined]

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


###########################################################
### Temporary break in code for intermediate test table ###
###########################################################
{
Column5 = round(c(a1.5, a2.5, a3.5, a4.5, NA, NA, a5.5, a6.5, a7.5, a8.5, a9.5, a10.5, a11.5, a12.5, a13.5, a14.5, NA,NA),4)
Column6 = round(c(a1.6, a2.6, a3.6, a4.6, NA, NA, a5.6, a6.6, a7.6, a8.6, a9.6, a10.6, a11.6, a12.6, a13.6, a14.6, NA,NA),4)

n_rows <- 16
n_cols <- 19

df <- as.data.frame(matrix("", nrow = n_rows, ncol = n_cols), stringsAsFactors = FALSE)

# Define column names (this will be our third header row)
# First column for row names and then columns 2-19
colnames(df) <- c("Response Rate (%)", rep(c("10","30"), 9))

df[, 4] <- Column5*100
df[, 5] <- Column6*100

# Define row names:
df[,1] <- c(
              "Type I Error (%) (Powered to $\\Delta$ = 10%)", 
  "Type I Error (%) (Powered to $\\Delta$ = 20%)",
  "Power (%) ($\\Delta$ = 10%)",
  "Power (%) ($\\Delta$ = 20%)",
  "Treatment no effect \\\\
  Treatment no effect",
  "Treatment no effect \\\\
  Treatment no effect",
  "Treatment no effect
  Treatment $\\Delta$ = 10%",
  "Treatment no effect
  Treatment $\\Delta$ = 10%",
  "Treatment no effect
  Treatment $\\Delta$ = 20%",
  "Treatment no effect
  Treatment $\\Delta$ = 20%",
  "Treatment $\\Delta$ = 10%
  Treatment $\\Delta$ = 20%",
  "Treatment $\\Delta$ = 10%
  Treatment $\\Delta$ = 20%",
  "Treatment $\\Delta$ = 10%
  Treatment $\\Delta$ = 20%",
  "Treatment $\\Delta$ = 10%
  Treatment $\\Delta$ = 20%",
  "Treatment $\\Delta$ = 20%
  Treatment $\\Delta$ = 20%",
  "Treatment $\\Delta$ = 20%
  Treatment $\\Delta$ = 20%"
)

# Define header rows:
# Top header row: 4 cells. The first cell is empty, the other three each span 6 columns.
top_header <- c(" " = 1, "Two-Trial" = 4, "Platform (same time)" = 8, "Platform (different times)" = 6)

# Middle header row: 10 cells. The first cell is empty, the other nine each span 2 columns.
middle_header <- c("Adjustment" = 1, "Unadjusted" = 2, "Bonferroni Correction" = 2, 
                   "Unadjusted" = 2, "Strategy 2" = 2, "Strategy 3" = 2, "Strategy 4" = 2, 
                   "Unadjusted" = 2, "Bonferroni" = 2, "LOND" = 2)


# Create an HTML preview table so you can view and adjust it in RStudio
table_html <- kable(df, format = "html", caption = "Results table", align = "c") %>%
  add_header_above(middle_header) %>%
  add_header_above(top_header) %>%
  collapse_rows(columns = 1, valign = "middle") %>% 
  kable_styling(full_width = FALSE)


# Display the table in RStudio's Viewer
table_html
}

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



