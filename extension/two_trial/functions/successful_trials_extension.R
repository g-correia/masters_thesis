source("./simple_case/two_trial/functions/gen_rct.R")

successful_trials_extension <- function(
    treat_response_A, 
    treat_response_B, 
    baseline_response_A,
    baseline_response_B,
    n_arm, 
    iterations,
    alpha){
  counts <- 0
  
  for(i in 1:iterations){
    
    trial1<-gen_rct(treat_response_A, baseline_response_A, n_arm)
    trial2<-gen_rct(treat_response_B, baseline_response_B, n_arm)
    
    if ((trial1[[1]]$p.value < alpha) && (trial2[[1]]$p.value < alpha)) {
      counts <- counts + 1  
    }
  }
  return(list(total=counts, `success rate` = counts/iterations))
}
