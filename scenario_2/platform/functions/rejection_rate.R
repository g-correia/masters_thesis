source("./scenario_2/platform/functions/gen_platform_a.R")
source("./scenario_2/platform/functions/gen_platform_b.R")

# Function name: rejection_rate
# 
# Description: At each iteration, this function generates a platform trial 
#              [concurrent or sequential].
#              Each trial has two arms, where one is treatment and one control.
#              If both comparisons (treatment arm 1 x control and treatment 
#              arm 2 x control) present evidence in favor of the treatment,
#              we consider it a "success". Success is influenced by the type 
#              of multiplicity adjustment applied.
#              Ultimately, this function simulates 
#              the platform trial corresponding to the two-trial paradigm.
# 
# 
# Variables: treat_response_A: treatment A effect (proportion), 
#            treat_response_B: treatment B effect (proportion),
#            baseline_response_A: control A event probability, 
#            baseline_response_B: control B event probability, 
#            n_arm:       number of patients in a treatment arm,
#            iterations: number of iterations,
#            alpha: the significance level,
#            scenario: A for concurrent, B for sequential
# 
# Output: The success rate out of all iterations under the different multiplicity adjustments.


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
    counts_treat_a_st6 <- 0
    counts_treat_b_st6 <- 0
    
    # Adjust to account for single pivotal study
    alpha_pivotal <- 0.000625
    
    # Bonferroni corrections (also for strategy 6)
    alpha_bonf <- alpha/2
    
    # Adjust to account for single pivotal study and apply bonferroni correction
    alpha_bonf_pivotal  <- 0.0003125
    
    
    
  for (i in 1:iterations) {
    
      trial <- gen_platform_a(
        treat_response_A,
        treat_response_B,
        baseline_response,
        n_arm,
        alpha
      )
      
      
    # Strategy 1: unadjusted 
    if ((trial$pval_A_prop_test < alpha)) {
      counts_treat_a_unadjusted <- counts_treat_a_unadjusted + 1  # rejection treatment A
    }
    
    if ((trial$pval_B_prop_test < alpha)) {
      counts_treat_b_unadjusted <- counts_treat_b_unadjusted + 1 # rejection treatment B
    }
    
    # Strategy 2: accounting for single pivotal 
    if ((trial$pval_A_prop_test < alpha_pivotal)) {
      counts_treat_a_st2 <- counts_treat_a_st2 + 1  # rejection treatment A
    }
    
    if ((trial$pval_B_prop_test < alpha_pivotal)) {
      counts_treat_b_st2 <- counts_treat_b_st2 + 1 # rejection treatment B
    }
    
    # Strategy 3: bonferroni 
    if ((trial$pval_A_prop_test < alpha_bonf)) {
      counts_treat_a_st3 <- counts_treat_a_st3 + 1  # rejection treatment A
    }
  
    if ((trial$pval_B_prop_test < alpha_bonf)) {
      counts_treat_b_st3 <- counts_treat_b_st3 + 1 # rejection treatment B
    }
  
    # Strategy 4: account for single pivotal + bonferroni 
    if ((trial$pval_A_prop_test < alpha_bonf_pivotal)) {
      counts_treat_a_st4 <- counts_treat_a_st4 + 1  # rejection treatment A
    }

    if ((trial$pval_B_prop_test < alpha_bonf_pivotal)) {
      counts_treat_b_st4 <- counts_treat_b_st4 + 1 # rejection treatment B
    }
    
    # Strategy 5: Dunnett's test 
    if ((trial$effect_dunnett_A > 0 & trial$pval_A_dunnett/2 < alpha)) { # Dunnet's test is two-sided.
      counts_treat_a_st5 <- counts_treat_a_st5 + 1  # rejection treatment A
    }
    
    if ((trial$effect_dunnett_B > 0 & trial$pval_B_dunnett/2 < alpha)) { # Dunnet's test is two-sided.
      counts_treat_b_st5 <- counts_treat_b_st5 + 1 # rejection treatment B
    }
    # Strategy 6: Dunnett's test, with single pivotal correction 
    if ((trial$effect_dunnett_A > 0 & trial$pval_A_dunnett/2 < alpha_pivotal)) {
      counts_treat_a_st6 <- counts_treat_a_st6 + 1  # rejection treatment A
    }
      
    if ((trial$effect_dunnett_B > 0 & trial$pval_B_dunnett/2 < alpha_pivotal)) {
      counts_treat_b_st6 <- counts_treat_b_st6 + 1 # rejection treatment B
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
    
    rejection_rates_st6 <- c("Rejection rate treat. A (strategy 6)" = counts_treat_a_st6/iterations, 
                             "Rejection rate treat. B (strategy 6)" = counts_treat_b_st6/iterations)
    
    return(list(rejection_rates_unadjusted, 
                rejection_rates_st2, 
                rejection_rates_st3, 
                rejection_rates_st4, 
                rejection_rates_st5,
                rejection_rates_st6))
    
    
    } else {
      
      counts_treat_a_unadjusted <- 0
      counts_treat_b_unadjusted <- 0
      counts_treat_a_pivotal <- 0
      counts_treat_b_pivotal <- 0
      counts_treat_a_bonf <- 0
      counts_treat_b_bonf <- 0
      counts_treat_a_bonf_pivotal <- 0
      counts_treat_b_bonf_pivotal <- 0
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
    
    if ((trial$pval_1 < trial$alpha_1_pivotal)) {
      counts_treat_a_pivotal <- counts_treat_a_pivotal + 1  # rejection treatment A
    }
    if ((trial$pval_2 < trial$alpha_2_pivotal)) {
      counts_treat_b_pivotal <- counts_treat_b_pivotal + 1 # rejection treatment B
    }
    
    if ((trial$pval_1 < trial$alpha_1_bonf)) {
      counts_treat_a_bonf <- counts_treat_a_bonf + 1  # rejection treatment A
    }
    if ((trial$pval_2 < trial$alpha_2_bonf)) {
      counts_treat_b_bonf <- counts_treat_b_bonf + 1 # rejection treatment B
    }
    
    if ((trial$pval_1 < trial$alpha_1_bonf_pivotal)) {
      counts_treat_a_bonf_pivotal <- counts_treat_a_bonf_pivotal + 1  # rejection treatment A
    }
    if ((trial$pval_2 < trial$alpha_2_bonf_pivotal)) {
      counts_treat_b_bonf_pivotal <- counts_treat_b_bonf_pivotal + 1 # rejection treatment B
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
      
      rejection_rates_pivotal <- c("Rejection rate treat. A (pivotal)" = counts_treat_a_pivotal/iterations, 
                                "Rejection rate treat. B (pivotal)" = counts_treat_b_pivotal/iterations)
      
      rejection_rates_bonf <- c("Rejection rate treat. A (bonferroni)" = counts_treat_a_bonf/iterations, 
                               "Rejection rate treat. B (bonferroni)" = counts_treat_b_bonf/iterations)
      
      rejection_rates_bonf_pivotal <- c("Rejection rate treat. A (bonferroni and pivotal)" = counts_treat_a_bonf_pivotal/iterations, 
                                "Rejection rate treat. B (bonferroni and pivotal)" = counts_treat_b_bonf_pivotal/iterations)
      
      rejection_rates_lond <- c("Rejection rate treat. A (lond)" = counts_treat_a_lond/iterations, 
                               "Rejection rate treat. B (lond)" = counts_treat_b_lond/iterations)
      
      return(list(rejection_rates_unadjusted, 
                  rejection_rates_pivotal,
                  rejection_rates_bonf, 
                  rejection_rates_bonf_pivotal,
                  rejection_rates_lond))
      
    }
  
}

