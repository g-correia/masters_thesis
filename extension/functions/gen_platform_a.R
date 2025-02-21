gen_platform_a <-
  function(delta_A,
           delta_B,
           treat_response_A,
           treat_response_B,
           baseline_response,
           n_arm,
           alpha,
           correction="unadjusted") {
    
    if(correction != "unadjusted" & correction != "bonferroni"){
      return("Error in correction method. Can only be 'unadjusted' (default) or 'bonferroni'")
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
    
    # Sum of outcomes for treatment and control groups
    treatment_group_1 <- rbinom(n = 1, size = n_arm, prob = p_treat_1)  # Treatment arm 1 (A)
    treatment_group_2 <- rbinom(n = 1, size = n_arm, prob = p_treat_2)  # Treatment arm 2 (B)
    control_group <- rbinom(n = 1, size = (n_arm*2), prob = baseline_response)  # Control group (twice the size)
    
    # Entries for test
    treatment_table_1 <- c(treatment_group_1, control_group)
    treatment_table_2 <- c(treatment_group_2, control_group)
    n_test <- c(n_arm, (n_arm * 2))
    
    # Perform one-sided proportion tests for both treatment arms
    test_1 <- prop.test(x = treatment_table_1, n = n_test, alternative = "greater", correct = TRUE)
    test_2 <- prop.test(x = treatment_table_2, n = n_test, alternative = "greater", correct = TRUE)
    
    # Extract p-values
    pvals <- c(test_1$p.value, test_2$p.value)
    
    if(correction == "bonferroni"){
      
      # apply Bonferroni correction:
      pvals <- p.adjust(pvals, method = "bonferroni")
      
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

# testing function
gen_platform_a(delta_A = 0,
               delta_B = 0.1,
               treat_response_A = 0.1,
               treat_response_B = 0.1,
               baseline_response = 0.1,
               n_arm = 300,
               alpha = 0.025,
               correction = "unadjusted")
