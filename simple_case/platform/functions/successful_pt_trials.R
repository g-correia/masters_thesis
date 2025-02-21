successful_pt_trials <- function(delta, n_arm, 
                                 iterations, alpha, tau=0, baseline_response, treat_response){
  counts <- 0
  
  for(i in 1:iterations){
    
    trial<-gen_platform(delta, baseline_response, treat_response, n_arm, tau)
    
    if ((trial[[1]]$p.value < alpha) && (trial[[2]]$p.value < alpha)) {
      counts <- counts + 1  
    }
  }
  return(list(total=counts, `success rate` = counts/iterations))
}
