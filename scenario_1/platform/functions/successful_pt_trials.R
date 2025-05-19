source("./simple_case/platform/functions/gen_platform.R")
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
