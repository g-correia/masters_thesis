source("./simple_case/two_trial/functions/gen_rct.R")

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
