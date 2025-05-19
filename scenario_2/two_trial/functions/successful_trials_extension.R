source("./simple_case/two_trial/functions/gen_rct.R")

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
