source("./simple_case/two_trial/functions/gen_rct.R")

### Two individual trials for one treatment: 
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
