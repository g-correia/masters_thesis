source("./extension/platform/functions/gen_platform_a.R")
source("./extension/platform/functions/gen_platform_b.R")


rejection_rate <- function(
    treat_response_A,
    treat_response_B,
    baseline_response,
    n_arm,
    alpha,
    iterations,
    scenario = "A"
    ) {
  
  if (scenario == "A") {
    
    counts_treat_a_unadjusted <- 0
    counts_treat_b_unadjusted <- 0
    counts_treat_a_st2 <- 0
    counts_treat_b_st2 <- 0
    counts_treat_a_st3 <- 0
    counts_treat_b_st3 <- 0
    counts_treat_a_st4 <- 0
    counts_treat_b_st4 <- 0
    counts_treat_a_st5 <- 0
    counts_treat_b_st5 <- 0
    
    # Adjust to account for single pivotal study
    alpha_strategy_2 <- alpha/4
    
    # Bonferroni correction
    alpha_strategy_3  <- alpha/2
    
    # Adjust to account for single pivotal study and apply bonferroni correction
    alpha_strategy_4  <- alpha/8
    
  for (i in 1:iterations) {
    
      trial <- gen_platform_a(
        treat_response_A,
        treat_response_B,
        baseline_response,
        n_arm,
        alpha
      )
      
      
    # unadjusted results
    if ((trial$pval_A_prop_test < alpha)) {
      counts_treat_a_unadjusted <- counts_treat_a_unadjusted + 1  # rejection treatment A
    }
    
    if ((trial$pval_B_prop_test < alpha)) {
      counts_treat_b_unadjusted <- counts_treat_b_unadjusted + 1 # rejection treatment B
    }
    
    # Strategy 2 results
    if ((trial$pval_A_prop_test < alpha_strategy_2)) {
      counts_treat_a_st2 <- counts_treat_a_st2 + 1  # rejection treatment A
    }
    
    if ((trial$pval_B_prop_test < alpha_strategy_2)) {
      counts_treat_b_st2 <- counts_treat_b_st2 + 1 # rejection treatment B
    }
    
  # Strategy 3 results
  if ((trial$pval_A_prop_test < alpha_strategy_3)) {
    counts_treat_a_st3 <- counts_treat_a_st3 + 1  # rejection treatment A
  }
  
  if ((trial$pval_B_prop_test < alpha_strategy_3)) {
    counts_treat_b_st3 <- counts_treat_b_st3 + 1 # rejection treatment B
  }
  
# Strategy 4 results
if ((trial$pval_A_prop_test < alpha_strategy_4)) {
  counts_treat_a_st4 <- counts_treat_a_st4 + 1  # rejection treatment A
}

if ((trial$pval_B_prop_test < alpha_strategy_4)) {
  counts_treat_b_st4 <- counts_treat_b_st4 + 1 # rejection treatment B
}

# Strategy 5 results
if ((trial$pval_A_dunnett < alpha)) {
  counts_treat_a_st5 <- counts_treat_a_st5 + 1  # rejection treatment A
}

if ((trial$pval_B_dunnett < alpha)) {
  counts_treat_b_st5 <- counts_treat_b_st5 + 1 # rejection treatment B
}
  } 
    rejection_rates_unadjusted <- c("Rejection rate treat. A (unadjusted)" = counts_treat_a_unadjusted/iterations, 
                                    "Rejection rate treat. B (unadjusted)" = counts_treat_b_unadjusted/iterations)
    
    rejection_rates_st2 <- c("Rejection rate treat. A (strategy 2)" = counts_treat_a_st2/iterations, 
                             "Rejection rate treat. B (strategy 2)" = counts_treat_b_st2/iterations)
    
    rejection_rates_st3 <- c("Rejection rate treat. A (strategy 3)" = counts_treat_a_st3/iterations, 
                             "Rejection rate treat. B (strategy 3)" = counts_treat_b_st3/iterations)
    
    rejection_rates_st4 <- c("Rejection rate treat. A (strategy 4)" = counts_treat_a_st4/iterations, 
                             "Rejection rate treat. B (strategy 4)" = counts_treat_b_st4/iterations)
    
    rejection_rates_st5 <- c("Rejection rate treat. A (strategy 5)" = counts_treat_a_st5/iterations, 
                             "Rejection rate treat. B (strategy 5)" = counts_treat_b_st5/iterations)
    
    return(list(rejection_rates_unadjusted, rejection_rates_st2, rejection_rates_st3, rejection_rates_st4, rejection_rates_st5))
    
    
    } else {
      
      counts_treat_a_unadjusted <- 0
      counts_treat_b_unadjusted <- 0
      counts_treat_a_bonf <- 0
      counts_treat_b_bonf <- 0
      counts_treat_a_lond <- 0
      counts_treat_b_lond <- 0
      
      for (i in 1:iterations) {
    trial <- gen_platform_b(
      treat_response_A,
      treat_response_B,
      baseline_response,
      n_arm,
      alpha
    )
    if ((trial$pval_1 < trial$alpha_1_unadjusted)) {
      counts_treat_a_unadjusted <- counts_treat_a_unadjusted + 1  # rejection treatment A
    }
    if ((trial$pval_2 < trial$alpha_2_unadjusted)) {
      counts_treat_b_unadjusted <- counts_treat_b_unadjusted + 1 # rejection treatment B
    }
    
    if ((trial$pval_1 < trial$alpha_1_bonf)) {
      counts_treat_a_bonf <- counts_treat_a_bonf + 1  # rejection treatment A
    }
    if ((trial$pval_2 < trial$alpha_2_bonf)) {
      counts_treat_b_bonf <- counts_treat_b_bonf + 1 # rejection treatment B
    }
    
    if ((trial$pval_1 < trial$alpha_1_lond)) {
      counts_treat_a_lond <- counts_treat_a_lond + 1  # rejection treatment A
    }
    if ((trial$pval_2 < trial$alpha_2_lond)) {
      counts_treat_b_lond <- counts_treat_b_lond + 1 # rejection treatment B
    }
    
      }
      rejection_rates_unadjusted <- c("Rejection rate treat. A (unadjusted)" = counts_treat_a_unadjusted/iterations, 
                                      "Rejection rate treat. B (unadjusted)" = counts_treat_b_unadjusted/iterations)
      
      rejection_rates_bonf <- c("Rejection rate treat. A (bonferroni)" = counts_treat_a_bonf/iterations, 
                               "Rejection rate treat. B (bonferroni)" = counts_treat_b_bonf/iterations)
      
      rejection_rates_lond <- c("Rejection rate treat. A (lond)" = counts_treat_a_lond/iterations, 
                               "Rejection rate treat. B (lond)" = counts_treat_b_lond/iterations)
      
      return(list(rejection_rates_unadjusted, rejection_rates_bonf, rejection_rates_lond))
      
    }
  
}
