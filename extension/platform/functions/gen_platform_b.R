gen_platform_b <-
  function(treat_response_A,
           treat_response_B,
           baseline_response,
           n_arm,
           alpha) {

    
    # Starting alpha vector
    alpha_unadjusted <- c(alpha, alpha)
    
    # Defining n_A's, total number of patients per arm per section in time:
    n_A1 <- n_arm/3*2
    n_A2 <- n_arm/3
    n_A3 <- n_arm/3*2
    n_control <- n_arm/3*2
    
    # Sum of outcomes for treatment and control groups:
    treatment_A_a1 <- rbinom(n = 1, size = n_A1, prob = treat_response_A) # Treatment arm 1 (A), section A1
    treatment_A_a2 <- rbinom(n = 1, size = n_A2, prob = treat_response_A) # Treatment arm 1 (A), section A2
    treatment_B_a2 <- rbinom(n = 1, size = n_A2, prob = treat_response_B) # Treatment arm 2 (B), section A2
    treatment_B_a3 <- rbinom(n = 1, size = n_A3, prob = treat_response_B) # Treatment arm 2 (B), section A3
    
    control_group_A1 <- rbinom(n = 1, size = n_control, prob = baseline_response)  # Control group per section in time (ratio 1:1)
    control_group_A2 <- rbinom(n = 1, size = n_control, prob = baseline_response) # Control group per section in time (ratio 2:1:1)
    control_group_A3 <- rbinom(n = 1, size = n_control, prob = baseline_response) # Control group per section in time (ratio 1:1)
    
    # Entries for test
    treatment_table_1 <- c(treatment_A_a1 + treatment_A_a2,
                           control_group_A1 + control_group_A2)
    
    treatment_table_2 <- c(treatment_B_a2 + treatment_B_a3,
                           control_group_A2 + control_group_A3)
    
    n_test_1 <- c(n_arm, n_control*2)
    n_test_2 <- c(n_arm, n_control*2)
    
    # Perform one-sided proportion tests for both treatment arms
    test_1 <- prop.test(x = treatment_table_1, n = n_test_1, alternative = "greater", correct = TRUE)
    test_2 <- prop.test(x = treatment_table_2, n = n_test_2, alternative = "greater", correct = TRUE)
    
    # Extract p-values
    pvals <- c(test_1$p.value, test_2$p.value)
    
    # Set alphas for each adjustment strategy
    alpha_pivotal <- alpha_unadjusted/4
    
    alpha_bonf <- alpha_unadjusted/2
    
    alpha_bonf_pivotal <- alpha_unadjusted/8
    
    lond_result <- onlineFDR::LOND(pvals, alpha = 0.025, dep = TRUE)
      
    alpha_lond <- lond_result$alphai
    
    # Return p-values, treatment probabilities and boundaries
    return(list(
      pval_1 = pvals[1],
      pval_2 = pvals[2],
      alpha_1_unadjusted = alpha_unadjusted[1],
      alpha_2_unadjusted = alpha_unadjusted[2],
      alpha_1_pivotal = alpha_pivotal[1],
      alpha_2_pivotal = alpha_pivotal[2],
      alpha_1_bonf = alpha_bonf[1],
      alpha_2_bonf = alpha_bonf[2],
      alpha_1_bonf_pivotal = alpha_bonf_pivotal[1],
      alpha_2_bonf_pivotal = alpha_bonf_pivotal[2],
      alpha_1_lond = alpha_lond[1],
      alpha_2_lond = alpha_lond[2]
    ))
    
  }

