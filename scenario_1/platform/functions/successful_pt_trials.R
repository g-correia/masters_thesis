source("./scenario_1/platform/functions/gen_platform.R")


# Function name: successful_pt_trials
# 
# Description: At each iteration, this function generates a platform trial,
#              each with three arms, where two are treatment and one control.
#              If both comparisons (treatment arm 1 x control and treatment 
#              arm 2 x control) present evidence in favor of the treatment,
#              we consider it a "success". Ultimately, this function simulates 
#              the platform trial corresponding to the two-trial paradigm.
# 
# Variables: treat_response: treatment effect (proportion), 
#            baseline_response: control event probability, 
#            n_arm:       number of patients in a treatment arm,
#            iterations: number of iterations
#            alpha: the significance level.
#            
# 
# Output: The success rate out of all iterations.

successful_pt_trials <- function(n_arm,iterations, alpha, baseline_response, treat_response){
  counts <- 0
  
  for(i in 1:iterations){
    
    trial<-gen_platform(baseline_response, treat_response, n_arm)
    
    if ((trial[[1]]$p.value < alpha) && (trial[[2]]$p.value < alpha)) {
      counts <- counts + 1  
    }
  }
  return(list(total=counts, `success rate` = counts/iterations))
}
