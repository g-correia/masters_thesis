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
(a5.1 <- type_1_powered_1[[2]][1]) # A 10%/10%
#(a52 <- type_1_powered_1[[2]][2]) # B                              
(a6.1 <- type_1_powered_2[[2]][1]) # A 10%/30%
#(a52 <- type_1_powered_2[[2]][2]) # B                              
(a5.2 <- type_1_powered_3[[2]][1]) # A 20%/10%
#(a52 <- type_1_powered_3[[2]][2]) # B                         
(a6.2 <- type_1_powered_4[[2]][1]) # A 20%/30%
#(a52 <- type_1_powered_4[[2]][2]) # B                      

# Strategy 2: Adjusted to account for single pivotal study
(a7.1 <- type_1_powered_1_st2[[2]][1]) # A 10%/10%
#(a32 <- type_1_powered_1_st2[[2]][2]) # B
(a8.1 <- type_1_powered_2_st2[[2]][1]) # A 10%/30%
#(a42 <- type_1_powered_2_st2[[2]][2]) # B
(a7.2 <- type_1_powered_3_st2[[2]][1]) # A 20%/10%
#(a <- type_1_powered_3_st2[[2]][2]) # B
(a8.2 <- type_1_powered_4_st2[[2]][1]) # A 20%/30%
#(a <- type_1_powered_4_st2[[2]][2]) # B

# Strategy 3: Bonferroni correction
(a9.1 <- type_1_powered_1_st3[[2]][1]) # A 10%/10%
#(a32 <- type_1_powered_1_st3[[2]][2]) # B
(a10.1 <- type_1_powered_2_st3[[2]][1]) # A 10%/30%
#(a42 <- type_1_powered_2_st3[[2]][2]) # B
(a9.2 <- type_1_powered_3_st3[[2]][1]) # A 20%/10%
#(a <- type_1_powered_3_st3[[2]][2]) # B
(a10.2 <- type_1_powered_4_st3[[2]][1]) # A 20%/30%
#(a <- type_1_powered_4_st3[[2]][2]) # B

# Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
(a11.1 <- type_1_powered_1_st4[[2]][1]) # A 10%/10%
#(a32 <- type_1_powered_1_st4[[2]][2]) # B
(a12.1 <- type_1_powered_2_st4[[2]][1]) # A 10%/30%
#(a42 <- type_1_powered_2_st4[[2]][2]) # B
(a11.2 <- type_1_powered_3_st4[[2]][1]) # A 20%/10%
#(a <- type_1_powered_3_st4[[2]][2]) # B
(a12.2 <- type_1_powered_4_st4[[2]][1]) # A 20%/30%
#(a <- type_1_powered_4_st4[[2]][2]) # B

# power

# Strategy 1: Unadjusted
(a5.3 <- power_1[[2]][1]) # A 10%/10%
#(a62 <- power_1[[2]][2]) # B               
(a6.3 <- power_2[[2]][1]) # A 10%/30%
#(a62 <- power_2[[2]][2]) # B               
(a5.4 <- power_3[[2]][1]) # A 20%/10%
#(a82 <- power_3[[2]][2]) # B               
(a6.4 <- power_4[[2]][1]) # A 20%/30%
#(a82 <- power_4[[2]][2]) # B               

# Strategy 2: Adjusted to account for single pivotal study
(a7.3 <- power_1_st2[[2]][1]) # A 10%/10%
#(a52 <- power_1_st2[[2]][2]) # B               
(a8.3 <- power_2_st2[[2]][1]) # A 10%/30%
#(a62 <- power_2_st2[[2]][2]) # B               
(a7.4 <- power_3_st2[[2]][1]) # A 20%/10%
#(a72 <- power_3_st2[[2]][2]) # B               
(a8.4 <- power_4_st2[[2]][1]) # A 20%/30%
#(a82 <- power_4_st2[[2]][2]) # B               

# Strategy 3: Bonferoni correction
(a9.3 <- power_1_st3[[2]][1]) # A 10%/10%
#(a92 <- power_1_st3[[2]][2]) # B               
(a10.3 <- power_2_st3[[2]][1]) # A 10%/30%
#(a10 <- power_2_st3[[2]][2]) # B               
(a9.4 <- power_3_st3[[2]][1]) # A 20%/10%
#(a11 <- power_3_st3[[2]][2]) # B               
(a10.4 <- power_4_st3[[2]][1]) # A 20%/30%
#(a12 <- power_4_st3[[2]][2]) # B               

# Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
(a11.3 <- power_1_st4[[2]][1]) # A 10%/10%
#(a92 <- power_1_st4[[2]][2]) # B               
(a12.3 <- power_2_st4[[2]][1]) # A 10%/30%
#(a10 <- power_2_st4[[2]][2]) # B               
(a11.4 <- power_3_st4[[2]][1]) # A 20%/10%
#(a11 <- power_3_st4[[2]][2]) # B               
(a12.4 <- power_4_st4[[2]][1]) # A 20%/30%
#(a12 <- power_4_st4[[2]][2]) # B               

# FDR TDR

# Strategy 1: Unadjusted
#(a<-discovery_1_1[[2]][1]) # FDR A=0/B=0 10%/10%
#(a<-discovery_1_1[[2]][2]) # TDR
#(a<-discovery_1_2[[2]][1]) # FDR A=0/B=0 10%/30%
#(a<-discovery_1_2[[2]][2]) # TDR

(a5.5<-discovery_2_1[[2]][1]) # FDR A=0/B=10 10%/10%
(a5.6<-discovery_2_1[[2]][2]) # TDR
(a6.5<-discovery_2_2[[2]][1]) # FDR A=0/B=10 10%/30%
(a6.6<-discovery_2_2[[2]][2]) # TDR     

(a5.7<-discovery_3_1[[2]][1]) # FDR A=0/B=20 10%/10%
(a5.8<-discovery_3_1[[2]][2]) # TDR                                
(a6.7<-discovery_3_2[[2]][1]) # FDR A=0/B=20 10%/30%
(a6.8<-discovery_3_2[[2]][2]) # TDR  

# omitted: 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)

(a5.9<-discovery_5_1[[2]][1]) # FDR A=10/B=10 10%/10%
(a5.10<-discovery_5_1[[2]][2]) # TDR                                           
(a6.9<-discovery_5_2[[2]][1]) # FDR A=10/B=10 10%/30%
(a6.10<-discovery_5_2[[2]][2]) # TDR

(a5.11<-discovery_6_1[[2]][1]) # FDR A=10/B=20 10%/10%
(a5.12<-discovery_6_1[[2]][2]) # TDR                                        
(a6.11<-discovery_6_2[[2]][1]) # FDR A=10/B=20 10%/30%
(a6.12<-discovery_6_2[[2]][2]) # TDR   

(a5.13<-discovery_6_3[[2]][1]) # FDR A=10/B=20 20%/10%
(a5.14<-discovery_6_3[[2]][2]) # TDR                                    
(a6.13<-discovery_6_4[[2]][1]) # FDR A=10/B=20 20%/30%
(a6.14<-discovery_6_4[[2]][2]) # TDR     

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
Column5 = round(c(a5.1, a5.2, a5.3, a5.4, NA, NA, a5.7, a5.8, a5.9, a5.10, a5.11, a5.12, a5.13, a5.14, NA, NA),4)
Column6 = round(c(a6.1, a6.2, a6.3, a6.4, NA, NA, a6.7, a6.8, a6.9, a6.10, a6.11, a6.12, a6.13, a6.14, NA, NA),4)

n_rows <- 16
n_cols <- 19

df <- as.data.frame(matrix("", nrow = n_rows, ncol = n_cols), stringsAsFactors = FALSE)

# Define column names (this will be our third header row)
# First column for row names and then columns 2-19
colnames(df) <- c("Response Rate (%)", rep(c("10","30"), 9))

df[, 5] <- Column5*100
df[, 6] <- Column6*100

# Define row names:
df[,1] <- c(
              "Type I Error (%) (Powered to $\\Delta$ = 10%)", 
  "Type I Error (%) (Powered to $\\Delta$ = 20%)",
  "Power (%) ($\\Delta$ = 10%)",
  "Power (%) ($\\Delta$ = 20%)",
  "Treatment no effect
  Treatment no effect",
  "Treatment no effect
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
table_html <- kable(df, format = "html", caption = "Complex Table with Merged Row Names", align = "c") %>%
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



