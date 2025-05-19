# Function name: gen_platform
# 
# Description: This function generates a single platform trial with three arms, two treatments and one control.
# 
# Variables: treat_response: treatment effect (proportion), 
#            baseline_response: control event probability, 
#            n_arm:       number of patients in a treatment arm.
#            
# 
# Output: a single trial's outcome, consisting of two comparisons (treatment arm 
#         1 x control and treatment arm 2 x control): Two z-test's statistics
#         and two p-values.

gen_platform <- function(baseline_response, treat_response, n_arm){
  
  # sum of outcomes for treatment and control groups
  treatment_group_1 <- rbinom(n = 1, size = n_arm, prob = treat_response)  # Treatment arm 1
  treatment_group_2 <- rbinom(n = 1, size = n_arm, prob = treat_response)  # Treatment arm 2
  control_group <- rbinom(n = 1, size = (n_arm*2), prob = baseline_response)  # Control group (twice the size)
  
  # entries for test
  treatment_table_1 <- c(treatment_group_1, control_group)
  treatment_table_2 <- c(treatment_group_2, control_group)
  n_test <- c(n_arm, (n_arm * 2))
  
  # Perform one-sided proportion tests for both treatment arms
  test_1 <- prop.test(x = treatment_table_1, n = n_test, alternative = "greater", correct = TRUE)
  test_2 <- prop.test(x = treatment_table_2, n = n_test, alternative = "greater", correct = TRUE)
  
  # Return test results and treatment probabilities
  return(list(test_1 = test_1, test_2 = test_2, p_treat_1 = treat_response, p_treat_2 = treat_response))
}
