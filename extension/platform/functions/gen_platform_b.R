gen_platform_b <-
  function(treat_response_A,
           treat_response_B,
           baseline_response,
           n_arm,
           alpha,
           correction="unadjusted") {
    
    if(correction != "unadjusted" & 
       correction != "bonferroni" &
       correction != "lond"){
      return("Error in correction method. Can only be 'unadjusted' (default), 'bonferroni' or 'lond'")
    }
    
    # Starting alpha vector
    new_alpha <- c(alpha, alpha)
    
    # Defining n_A's, number of patients per section in time:
    n_A1 <- n_arm
    n_A2 <- (n_arm)*2
    n_A3 <- n_arm
    
    # Sum of outcomes for treatment and control groups:
    treatment_A_a1 <- rbinom(n = 1, size = n_A1, prob = treat_response_A) # Treatment arm 1 (A), section A1
    treatment_A_a2 <- rbinom(n = 1, size = n_A2, prob = treat_response_A) # Treatment arm 1 (A), section A2
    treatment_B_a2 <- rbinom(n = 1, size = n_A2, prob = treat_response_B) # Treatment arm 2 (B), section A2
    treatment_B_a3 <- rbinom(n = 1, size = n_A3, prob = treat_response_B) # Treatment arm 2 (B), section A3
    
    control_group_A1 <- rbinom(n = 1, size = n_A1  , prob = baseline_response)  # Control group per section in time (ratio 1:1)
    control_group_A2 <- rbinom(n = 1, size = n_A2*2, prob = baseline_response) # Control group per section in time (ratio 2:1:1)
    control_group_A3 <- rbinom(n = 1, size = n_A3  , prob = baseline_response) # Control group per section in time (ratio 1:1)
    
    # Entries for test
    treatment_table_1 <- c(treatment_A_a1 + treatment_A_a2,
                           control_group_A1 + control_group_A2)
    
    treatment_table_2 <- c(treatment_B_a2 + treatment_B_a3,
                           control_group_A2 + control_group_A3)
    
    n_test_1 <- c(n_A1 + n_A2, n_A1 + n_A2*2)
    n_test_2 <- c(n_A2 + n_A3, n_A2*2 + n_A3)
    
    # Perform one-sided proportion tests for both treatment arms
    test_1 <- prop.test(x = treatment_table_1, n = n_test_1, alternative = "greater", correct = TRUE)
    test_2 <- prop.test(x = treatment_table_2, n = n_test_2, alternative = "greater", correct = TRUE)
    
    # Extract p-values
    pvals <- c(test_1$p.value, test_2$p.value)
    
    if(correction == "bonferroni") {
      new_alpha <- new_alpha/2
      
    } else if (correction == "lond") {
      # Apply LOND correction (for dependent p-values):
      
      lond_result <- onlineFDR::LOND(pvals, alpha = 0.025, dep = TRUE)
      
      new_alpha <- lond_result$alphai
      
    } else {
      # Undjusted
      new_alpha <- c(alpha, alpha)
      
    }
    
    
    # Return p-values, treatment probabilities and boundaries
    return(list(
      pval_1 = pvals[1],
      pval_2 = pvals[2],
      alpha_1 = new_alpha[1],
      alpha_2 = new_alpha[2]
    ))
    
  }

# testing function
gen_platform_b(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response = 0.1,
  n_arm = 300,
  alpha = 0.025,
  correction = "lond")
