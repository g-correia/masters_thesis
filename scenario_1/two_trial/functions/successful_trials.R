source("./scenario_1/two_trial/functions/gen_rct.R")

### Two individual trials for one treatment: 

# Function name: successful_trials
# 
# Description: At each iteration, this function generates two individual trials,
#              each with two arms, where one is treatment and one control.
#              If both of the trials present evidence in favor of the treatment,
#              we consider it a "success". Ultimately, this function simulates 
#              the two-trial paradigm.
# 
# Variables: treat_response: treatment effect (proportion), 
#            baseline_response: control event probability, 
#            n_arm:       number of patients in a treatment arm,
#            iterations: number of iterations
#            alpha: the significance level.
#            
# 
# Output: The success rate out of all iterations


successful_trials <- function(treat_response, baseline_response, n_arm, iterations, alpha){
  counts <- 0
  
  for(i in 1:iterations){
    
    trial1<-gen_rct(treat_response, baseline_response, n_arm)
    trial2<-gen_rct(treat_response, baseline_response, n_arm)
    
    if ((trial1[[1]]$p.value < alpha) && (trial2[[1]]$p.value < alpha)) {
      counts <- counts + 1  
    }
  }
  return(list(total=counts, `success rate` = counts/iterations))
}
