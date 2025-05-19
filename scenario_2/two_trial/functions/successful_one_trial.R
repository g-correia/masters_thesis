

# Function name: successful_one_trial
# 
# Description: At each iteration, this function generates an individual trial,
#              with two arms, where one is treatment and one control.
#              If the trial presents evidence in favor of the treatment,
#              we consider it a "success". Ultimately, this function simulates 
#              a single traditional trial.
# 
# Variables: treat_response: treatment effect (proportion), 
#            baseline_response: control event probability, 
#            n_arm:       number of patients in a treatment arm,
#            iterations: number of iterations
#            alpha: the significance level.
#            
# 
# Output: The success rate out of all iterations.

successful_one_trial <- function(
    treat_response,
    baseline_response,
    n_arm, 
    iterations,
    alpha){
  
  counts <- 0
  
  for(i in 1:iterations){
    
    trial <- gen_rct(treat_response, baseline_response, n_arm)
    
    if ((trial[[1]]$p.value < alpha)) {
      counts <- counts + 1
    } 
  }
    
  return(list('total' = counts, 
              `success rate` = counts/iterations))
}
