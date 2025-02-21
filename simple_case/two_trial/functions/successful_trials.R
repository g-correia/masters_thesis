### For two individual trials: 
successful_trials <- function(I_treatment_1, I_treatment_2, n_arm_1,n_arm_2,
                              iterations, alpha, tau, a_control, b_control){
  counts <- 0
  
  for(i in 1:iterations){
    
    trial1<-gen_rct(I_treatment_1, a_control, b_control, n_arm_1, tau)
    trial2<-gen_rct(I_treatment_2, a_control, b_control, n_arm_2, tau)
    
    if ((trial1[[1]]$p.value < alpha) && (trial2[[1]]$p.value < alpha)) {
      counts <- counts + 1  
    }
  }
  return(list(total=counts, `success rate` = counts/iterations))
}
