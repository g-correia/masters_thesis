gen_platform_b <-
  function(delta_A,
           delta_B,
           treat_response_A,
           treat_response_B,
           baseline_response,
           n_arm,
           alpha,
           correction="unadjusted") {
    
    if(correction != "unadjusted" & 
       correction != "bonferroni" &
       correction !="lond"){
      return("Error in correction method. Can only be 'unadjusted' (default), 'bonferroni' or 'lond'")
    }
    
    # Transform true treatment effects into log-odds ratio:
    lor_treat_effect_1 <- (log((treat_response_A * (1-baseline_response))/(baseline_response*(1-treat_response_A))))
    lor_treat_effect_2 <- (log((treat_response_B * (1-baseline_response))/(baseline_response*(1-treat_response_B))))
    
    # Generate study-specific treatment effects:
    theta_1 <- rnorm(1, mean = lor_treat_effect_1, sd = 0)  # Treatment arm 1 (A)
    theta_2 <- rnorm(1, mean = lor_treat_effect_2, sd = 0)  # Treatment arm 2 (B)
    
    # Calculate study-specific treatment probabilities:
    p_treat_1 <- baseline_response * exp(theta_1) / (1 - baseline_response + baseline_response * exp(theta_1))
    p_treat_2 <- baseline_response * exp(theta_2) / (1 - baseline_response + baseline_response * exp(theta_2))
    
    # Defining n_A's, number of patients per section in time:
    n_A1 <- n_arm/4
    n_A2 <- (n_arm/4)*2
    n_A3 <- n_arm/4
    
    # Sum of outcomes for treatment and control groups:
    treatment_A_a1 <- rbinom(n = 1, size = n_A1, prob = p_treat_1) # Treatment arm 1 (A), section A1
    treatment_A_a2 <- rbinom(n = 1, size = n_A2, prob = p_treat_1) # Treatment arm 1 (A), section A2
    treatment_B_a2 <- rbinom(n = 1, size = n_A2, prob = p_treat_2) # Treatment arm 2 (B), section A2
    treatment_B_a3 <- rbinom(n = 1, size = n_A3, prob = p_treat_2) # Treatment arm 2 (B), section A3
    
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
    
    if(correction == "bonferoni") {
      # Apply Bonferroni correction:
      pvals <- p.adjust(pvals, method = "bonferroni")
      
    } else if (correction == "lond") {
      # Apply LOND correction (for dependent p-values):
      
      lond_result <- onlineFDR::LOND(pvals, dep = TRUE)
      
      new_alpha <- lond_result$alphai
      
    } else {
      # Undjusted
      new_alpha <- c(alpha, alpha)
      
    }
    
    
    # Return p-values, treatment probabilities and boundaries
    return(list(
      pval_1 = pvals[1],
      pval_2 = pvals[2],
      p_treat_1 = p_treat_1,
      p_treat_2 = p_treat_2,
      alpha_1 = alpha,
      alpha_1 = alpha
    ))
    
  }
