# Function name: gen_rct
# 
# Description: ?
# 
# Variables: I_treatment: θ, overall treatment effect (log odds ratio), 
#            a_control:   lower bound for control event probability, 
#            b_control:   upper bound for control event probability,
#            n_arm:       number of patients in a treatment arm, 
#            tau:         true between-study standard-deviation. 
#            
# 
# Output: ?


# one trial generation with heterogeneity
gen_rct <- function(I_treatment, a_control, b_control, n_arm, tau){
  
  theta <- rnorm(1, mean = I_treatment, sd = tau) 
  p_control <- runif(1, a_control, b_control)
  
  p_treat <- p_control * exp(theta) / (1 - p_control + p_control * exp(theta))
  
  treatment_group <- rbinom(n = n_arm, size = 1, prob = p_treat) # 1 = success
  control_group <- rbinom(n = n_arm, size = 1, prob = p_control)   # 1 = success
  
  treatment_table <- table(factor(treatment_group, levels = c(0,1)))
  control_table <- table(factor(control_group, levels = c(0,1)))
  
  x <- c(treatment_table["1"], control_table["1"])
  
  n <- c(n_arm, n_arm)
  
  test <- prop.test(x = x, n = n, alternative = "greater", correct = T)
  
  return(list(test = test, p_treat = p_treat))
}
