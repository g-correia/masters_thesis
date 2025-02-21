gen_platform <- function(delta, baseline_response, treat_response, n_arm, tau=0){
  
  # Log-odds ratio of treatment effect:
  lor_treat_effect <- (log((treat_response * (1-baseline_response))/(baseline_response*(1-treat_response))))
  
  # Generate study-specific treatment effects
  theta_1 <- rnorm(1, mean = lor_treat_effect, sd = tau)  # Treatment arm 1
  theta_2 <- rnorm(1, mean = lor_treat_effect, sd = tau)  # Treatment arm 2
  
  # Calculate study-specific treatment probabilities
  p_treat_1 <- baseline_response * exp(theta_1) / (1 - baseline_response + baseline_response * exp(theta_1))
  p_treat_2 <- baseline_response * exp(theta_2) / (1 - baseline_response + baseline_response * exp(theta_2))
  
  # sum of outcomes for treatment and control groups
  treatment_group_1 <- rbinom(n = 1, size = n_arm, prob = p_treat_1)  # Treatment arm 1
  treatment_group_2 <- rbinom(n = 1, size = n_arm, prob = p_treat_2)  # Treatment arm 2
  control_group <- rbinom(n = 1, size = (n_arm*2), prob = baseline_response)  # Control group (twice the size)
  
  # entries for test
  treatment_table_1 <- c(treatment_group_1, control_group)
  treatment_table_2 <- c(treatment_group_2, control_group)
  n_test <- c(n_arm, (n_arm * 2))
  
  # Perform one-sided proportion tests for both treatment arms
  test_1 <- prop.test(x = treatment_table_1, n = n_test, alternative = "greater", correct = TRUE)
  test_2 <- prop.test(x = treatment_table_2, n = n_test, alternative = "greater", correct = TRUE)
  
  # Return test results and treatment probabilities
  return(list(test_1 = test_1, test_2 = test_2, p_treat_1 = p_treat_1, p_treat_2 = p_treat_2))
}
