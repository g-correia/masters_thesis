

# Function name: successful_trials_extension
# 
# Description: At each iteration, this function generates a two pairs of trials,
#              for two different treatments.
#              Each trial has two arms, where one is treatment and one control.
#              If both comparisons (treatment arm 1 x control and treatment 
#              arm 2 x control) present evidence in favor of the treatment,
#              we consider it a "success". This procedure is done in parallel 
#              for each treatment A and B. Ultimately, this function simulates 
#              the two-trial paradigm for each treatment A and treatment B.
#              
# 
# Variables: treat_response_A: treatment A effect (proportion), 
#            treat_response_B: treatment B effect (proportion),
#            baseline_response_A: control A event probability, 
#            baseline_response_B: control B event probability, 
#            n_arm:       number of patients in a treatment arm,
#            iterations: number of iterations
#            alpha: the significance level.
#            
# 
# Output: The success rate out of all iterations.


successful_trials_extension <- function(
    treat_response_A, 
    treat_response_B, 
    baseline_response_A,
    baseline_response_B,
    n_arm, 
    iterations,
    alpha){
  
  counts_A <- 0
  counts_B <- 0
  
  for(i in 1:iterations){
    
    trial1.A<-gen_rct(treat_response_A, baseline_response_A, n_arm)
    trial2.A<-gen_rct(treat_response_A, baseline_response_A, n_arm)
    
    if ((trial1.A[[1]]$p.value < alpha) && (trial2.A[[1]]$p.value < alpha)) {
      counts_A <- counts_A + 1
    } 
    
    trial1.B<-gen_rct(treat_response_B, baseline_response_B, n_arm)
    trial2.B<-gen_rct(treat_response_B, baseline_response_B, n_arm)
    
    if ((trial1.B[[1]]$p.value < alpha) && (trial2.B[[1]]$p.value < alpha)) {
      counts_B <- counts_B + 1
    } 
  }
  return(list('total treat A' = counts_A, 
              'total treat B' = counts_B, 
              `success rate treat A` = counts_A/iterations, 
              `success rate treat B` = counts_B/iterations))
}
