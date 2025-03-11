gen_platform_a <-
  function(treat_response_A,
           treat_response_B,
           baseline_response,
           n_arm,
           alpha,
           correction="unadjusted") {
    
    if(correction != "unadjusted" & correction != "adjustment 2" & correction != "adjustment 3" & correction != "adjustment 4"){
      stop("Error in correction method. Can only be 'unadjusted' (default) or adjustment 2, 3 or 4")
    }
    
    
    # Sum of outcomes for treatment and control groups
    treatment_group_1 <- rbinom(n = 1, size = n_arm, prob = treat_response_A)  # Treatment arm 1 (A)
    treatment_group_2 <- rbinom(n = 1, size = n_arm, prob = treat_response_B)  # Treatment arm 2 (B)
    control_group <- rbinom(n = 1, size = (n_arm*2), prob = baseline_response)  # Control group (twice the size)
    
    # Entries for test
    treatment_table_1 <- c(treatment_group_1, control_group)
    treatment_table_2 <- c(treatment_group_2, control_group)
    n_test <- c(n_arm, (n_arm * 2))
    
    # Perform one-sided proportion tests for both treatment arms
    test_1 <- prop.test(x = treatment_table_1, n = n_test, alternative = "greater", correct = TRUE)
    test_2 <- prop.test(x = treatment_table_2, n = n_test, alternative = "greater", correct = TRUE)
    
    # Vector of p-values
    pvals <- c(test_1$p.value, test_2$p.value)
    
    if((correction == "adjustment 2")){
      # Adjust to account for single pivotal study
      alpha <- alpha/4
      
    }
    
    if(correction == "adjustment 3"){
      # Bonferroni correction
      alpha <- alpha/2
      
    }
    
    if(correction == "adjustment 4"){
      # Adjust to account for single pivotal study and apply bonferroni correction
      alpha <- alpha/8
      
    }
    
    # Return p-values, treatment probabilities and boundaries
    return(list(
      pval_1 = pvals[1],
      pval_2 = pvals[2],
      p_treat_1 = treat_response_A,
      p_treat_2 = treat_response_B,
      alpha_1 = alpha,
      alpha_2 = alpha
    ))
    
  }

# testing function
test<-gen_platform_a(
               treat_response_A = 0,
               treat_response_B = 0.1,
               baseline_response = 0.1,
               n_arm = 300,
               alpha = 0.025,
               correction = "adjustment 4")

