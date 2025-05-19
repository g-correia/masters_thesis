# Function name: gen_rct
# 
# Description: This function generates a single trial with two arms, one treatment and one control.
# 
# Variables: treat_response: treatment effect (proportion), 
#            baseline_response: control event probability, 
#            n_arm:       number of patients in a treatment arm.
#            
# 
# Output: a single trial's outcome, (z-test statistic and p-value).

 gen_rct <- function(treat_response, baseline_response, n_arm){
   
   treatment_group <- rbinom(n = n_arm, size = 1, prob = treat_response) # 1 = success
   control_group <- rbinom(n = n_arm, size = 1, prob = baseline_response)   # 1 = success
   
   treatment_table <- table(factor(treatment_group, levels = c(0,1)))
   control_table <- table(factor(control_group, levels = c(0,1)))
   
   x <- c(treatment_table["1"], control_table["1"])
   
   n <- c(n_arm, n_arm)
   
   test <- prop.test(x = x, n = n, alternative = "greater", correct = T)
   
   return(list(test = test, p_treat = treat_response))
 }
