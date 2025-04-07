gen_platform_a <-
  function(treat_response_A,
           treat_response_B,
           baseline_response,
           n_arm,
           alpha) {
    
      # Groupig for Dunnett's test  
      group <- factor(c(rep("treatment_A", n_arm),
                        rep("treatment_B", n_arm),
                        rep("control", n_arm * 2)),
                      levels = c("control", "treatment_A", "treatment_B"))
      
      # Data
      response <- c(rbinom(n_arm, size = 1, prob = treat_response_A),
                    rbinom(n_arm, size = 1, prob = treat_response_B),
                    rbinom(n_arm * 2, size = 1, prob = baseline_response))
      
      data <- data.frame(response, group)
      
      dunnett_result <- DescTools::DunnettTest(response ~ group, data = data, control = "control", conf.level = 1-alpha)
      
      # Result Dunnett's test
      pvals_dunnett <- unname(dunnett_result$control[,4])
      effect_dunnett <- unname(dunnett_result$control[,1])
      
      
      ## Data treatment for prop.test using same data
      
      # Sum of outcomes for treatment and control groups
      treatment_group_A <- sum(data$response[data$group=="treatment_A"]) # sum of successes treatment A
      treatment_group_B <- sum(data$response[data$group=="treatment_B"]) # sum of successes treatment B
      control_group <- sum(data$response[data$group=="control"]) # control
      
      treatment_table_1 <- c(treatment_group_A, control_group) 
      treatment_table_2 <- c(treatment_group_B, control_group) 
      n_test <- c(n_arm, (n_arm * 2))
      
      # Perform one-sided proportion tests for both treatment arms
      test_1 <- prop.test(x = treatment_table_1, n = n_test, alternative = "greater", correct = TRUE)
      test_2 <- prop.test(x = treatment_table_2, n = n_test, alternative = "greater", correct = TRUE)
      
      # Result prop test
      pvals_prop_test <- c(test_1$p.value, test_2$p.value)
      
      return(list(
        pval_A_prop_test = pvals_prop_test[1],
        pval_B_prop_test = pvals_prop_test[2],
        pval_A_dunnett = pvals_dunnett[1],
        pval_B_dunnett = pvals_dunnett[2],
        effect_dunnett_A = effect_dunnett[1],
        effect_dunnett_B = effect_dunnett[2]
      ))
    }
    
    