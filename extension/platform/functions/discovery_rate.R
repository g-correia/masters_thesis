source("./extension/platform/functions/gen_platform_a.R")
source("./extension/platform/functions/gen_platform_b.R")


discovery_rate <- function(treat_response_A,
                           treat_response_B,
                           baseline_response,
                           n_arm,
                           alpha,
                           iterations = 100,
                           scenario) {
  
  false_discovery_unadjusted <- c()
  true_discovery_unadjusted <- c()
  total_rejections_unadjusted <- 0
  
  false_discovery_st2 <- c()
  true_discovery_st2 <- c()
  total_rejections_st2 <- 0
  
  false_discovery_st3 <- c()
  true_discovery_st3 <- c()
  total_rejections_st3 <- 0
  
  false_discovery_st4 <- c()
  true_discovery_st4 <- c()
  total_rejections_st4 <- 0
  
  false_discovery_st5 <- c()
  true_discovery_st5 <- c()
  total_rejections_st5 <- 0
  
  false_discovery_bonf <- c()
  true_discovery_bonf <- c()
  total_rejections_bonf <- 0
  
  false_discovery_lond <- c()
  true_discovery_lond <- c()
  total_rejections_lond <- 0
  
  
    
    if (scenario == "A") {
      
      
      # Adjust to account for single pivotal study
      alpha_strategy_2 <- alpha/4
      
      # Bonferroni correction
      alpha_strategy_3  <- alpha/2
      
      # Adjust to account for single pivotal study and apply bonferroni correction
      alpha_strategy_4  <- alpha/8
      
      for (i in 1:iterations) {
        
        false_discovery_count_unadjusted <- 0
        true_discovery_count_unadjusted <- 0
        total_rejections_count_unadjusted <- 0
        
        false_discovery_count_st2 <- 0
        true_discovery_count_st2 <- 0
        total_rejections_count_st2 <- 0
        
        false_discovery_count_st3 <- 0
        true_discovery_count_st3 <- 0
        total_rejections_count_st3 <- 0
        
        false_discovery_count_st4 <- 0
        true_discovery_count_st4 <- 0
        total_rejections_count_st4 <- 0
        
        false_discovery_count_st5 <- 0
        true_discovery_count_st5 <- 0
        total_rejections_count_st5 <- 0
        
      trial <- gen_platform_a(
        treat_response_A,
        treat_response_B,
        baseline_response,
        n_arm,
        alpha
      )
      
      if (trial$pval_A_prop_test < alpha) { 
        total_rejections_count_unadjusted <- total_rejections_count_unadjusted + 1
        
        if (treat_response_A > baseline_response) {
          # if treatment A has positive true effect, rejection of null hypothesis is a true finding
          true_discovery_count_unadjusted <- true_discovery_count_unadjusted + 1
        } else { # otherwise if A has no true effect, it is a false finding
          false_discovery_count_unadjusted <- false_discovery_count_unadjusted + 1
        }
      }
      
      if (trial$pval_B_prop_test < alpha) { 
        total_rejections_count_unadjusted <- total_rejections_count_unadjusted + 1
        
        if (treat_response_B > baseline_response) {
          # if treatment B has positive true effect, rejection of null hypothesis is a true finding
          true_discovery_count_unadjusted <- true_discovery_count_unadjusted + 1
          
        } else { # otherwise if B has no true effect, it is a false finding
          false_discovery_count_unadjusted <- false_discovery_count_unadjusted + 1
        }
      }
      
      
      if (total_rejections_count_unadjusted > 0) { # if there were rejections, calculate the false discovery rate of the trial
        false_discovery_unadjusted <- c(false_discovery_unadjusted,
                                        false_discovery_count_unadjusted / total_rejections_count_unadjusted)
        true_discovery_unadjusted <- c(true_discovery_unadjusted, 
                                       true_discovery_count_unadjusted / total_rejections_count_unadjusted)
      } else { # otherwise, we count no discoveries
        false_discovery_unadjusted <- c(false_discovery_unadjusted, NA)
        true_discovery_unadjusted <- c(true_discovery_unadjusted, NA)
      }
    
    
      if (trial$pval_A_prop_test < alpha_strategy_2) { 
        total_rejections_count_st2 <- total_rejections_count_st2 + 1
        
        if (treat_response_A > baseline_response) {
          # if treatment A has positive true effect, rejection of null hypothesis is a true finding
          true_discovery_count_st2 <- true_discovery_count_st2 + 1
        } else { # otherwise if A has no true effect, it is a false finding
          false_discovery_count_st2 <- false_discovery_count_st2 + 1
        }
      }
      
      if (trial$pval_B_prop_test < alpha_strategy_2) { 
        total_rejections_count_st2 <- total_rejections_count_st2 + 1
        
        if (treat_response_B > baseline_response) {
          # if treatment B has positive true effect, rejection of null hypothesis is a true finding
          true_discovery_count_st2 <- true_discovery_count_st2 + 1
          
        } else { # otherwise if B has no true effect, it is a false finding
          false_discovery_count_st2 <- false_discovery_count_st2 + 1
        }
      }
      
      
      if (total_rejections_count_st2 > 0) { # if there were rejections, calculate the false discovery rate of the trial
        false_discovery_st2 <- c(false_discovery_st2,
                                        false_discovery_count_st2 / total_rejections_count_st2)
        true_discovery_st2 <- c(true_discovery_st2, 
                                       true_discovery_count_st2 / total_rejections_count_st2)
      } else { # otherwise, we count no discoveries
        false_discovery_st2 <- c(false_discovery_st2, NA)
        true_discovery_st2 <- c(true_discovery_st2, NA)
      }
     
    
  if (trial$pval_A_prop_test < alpha_strategy_3) { 
    total_rejections_count_st3 <- total_rejections_count_st3 + 1
    
    if (treat_response_A > baseline_response) {
      # if treatment A has positive true effect, rejection of null hypothesis is a true finding
      true_discovery_count_st3 <- true_discovery_count_st3 + 1
    } else { # otherwise if A has no true effect, it is a false finding
      false_discovery_count_st3 <- false_discovery_count_st3 + 1
    }
  }
  
  if (trial$pval_B_prop_test < alpha_strategy_3) { 
    total_rejections_count_st3 <- total_rejections_count_st3 + 1
    
    if (treat_response_B > baseline_response) {
      # if treatment B has positive true effect, rejection of null hypothesis is a true finding
      true_discovery_count_st3 <- true_discovery_count_st3 + 1
      
    } else { # otherwise if B has no true effect, it is a false finding
      false_discovery_count_st3 <- false_discovery_count_st3 + 1
    }
  }
  
  
  if (total_rejections_count_st3 > 0) { # if there were rejections, calculate the false discovery rate of the trial
    false_discovery_st3 <- c(false_discovery_st3,
                                    false_discovery_count_st3 / total_rejections_count_st3)
    true_discovery_st3 <- c(true_discovery_st3, 
                                   true_discovery_count_st3 / total_rejections_count_st3)
  } else { # otherwise, we count no discoveries
    false_discovery_st3 <- c(false_discovery_st3, NA)
    true_discovery_st3 <- c(true_discovery_st3, NA)
  }


if (trial$pval_A_prop_test < alpha_strategy_4) { 
  total_rejections_count_st4 <- total_rejections_count_st4 + 1
  
  if (treat_response_A > baseline_response) {
    # if treatment A has positive true effect, rejection of null hypothesis is a true finding
    true_discovery_count_st4 <- true_discovery_count_st4 + 1
  } else { # otherwise if A has no true effect, it is a false finding
    false_discovery_count_st4 <- false_discovery_count_st4 + 1
  }
}

if (trial$pval_B_prop_test < alpha_strategy_4) { 
  total_rejections_count_st4 <- total_rejections_count_st4 + 1
  
  if (treat_response_B > baseline_response) {
    # if treatment B has positive true effect, rejection of null hypothesis is a true finding
    true_discovery_count_st4 <- true_discovery_count_st4 + 1
    
  } else { # otherwise if B has no true effect, it is a false finding
    false_discovery_count_st4 <- false_discovery_count_st4 + 1
  }
}


if (total_rejections_count_st4 > 0) { # if there were rejections, calculate the false discovery rate of the trial
  false_discovery_st4 <- c(false_discovery_st4,
                                  false_discovery_count_st4 / total_rejections_count_st4)
  true_discovery_st4 <- c(true_discovery_st4, 
                                 true_discovery_count_st4 / total_rejections_count_st4)
} else { # otherwise, we count no discoveries
  false_discovery_st4 <- c(false_discovery_st4, NA)
  true_discovery_st4 <- c(true_discovery_st4, NA)
}


if (trial$pval_A_dunnett < alpha) { 
  total_rejections_count_st5 <- total_rejections_count_st5 + 1
  
  if (treat_response_A > baseline_response) {
    # if treatment A has positive true effect, rejection of null hypothesis is a true finding
    true_discovery_count_st5 <- true_discovery_count_st5 + 1
  } else { # otherwise if A has no true effect, it is a false finding
    false_discovery_count_st5 <- false_discovery_count_st5 + 1
  }
}

if (trial$pval_B_dunnett < alpha) { 
  total_rejections_count_st5 <- total_rejections_count_st5 + 1
  
  if (treat_response_B > baseline_response) {
    # if treatment B has positive true effect, rejection of null hypothesis is a true finding
    true_discovery_count_st5 <- true_discovery_count_st5 + 1
    
  } else { # otherwise if B has no true effect, it is a false finding
    false_discovery_count_st5 <- false_discovery_count_st5 + 1
  }
}


if (total_rejections_count_st5 > 0) { # if there were rejections, calculate the false discovery rate of the trial
  false_discovery_st5 <- c(false_discovery_st5,
                                  false_discovery_count_st5 / total_rejections_count_st5)
  true_discovery_st5 <- c(true_discovery_st5, 
                                 true_discovery_count_st5 / total_rejections_count_st5)
} else { # otherwise, we count no discoveries
  false_discovery_st5 <- c(false_discovery_st5, NA)
  true_discovery_st5 <- c(true_discovery_st5, NA)
}

   }  
      # Average the false discovery rates across trials
      discoveries_unadjusted <- c("false discovery rate (unadjusted)" = mean(false_discovery_unadjusted, na.rm = T),
                                  "true discovery rate (unadjusted)" = mean(true_discovery_unadjusted, na.rm = T))
      
      discoveries_st2 <- c("false discovery rate (strategy 2)" = mean(false_discovery_st2, na.rm = T),
                           "true discovery rate (strategy 2)" = mean(true_discovery_st2, na.rm = T))
      
      discoveries_st3 <- c("false discovery rate (strategy 3)" = mean(false_discovery_st3, na.rm = T),
                           "true discovery rate (strategy 3)" = mean(true_discovery_st3, na.rm = T))
      
      discoveries_st4 <- c("false discovery rate (strategy 4)" = mean(false_discovery_st4, na.rm = T),
                           "true discovery rate (strategy 4)" = mean(true_discovery_st4, na.rm = T))
      
      discoveries_st5 <- c("false discovery rate (strategy 5)" = mean(false_discovery_st5, na.rm = T),
                           "true discovery rate (strategy 5)" = mean(true_discovery_st5, na.rm = T))
      
      return(list(discoveries_unadjusted, discoveries_st2, discoveries_st3, discoveries_st4, discoveries_st5))
      
     } else {
      
      for(i in 1:iterations){
        
        false_discovery_count_unadjusted <- 0
        true_discovery_count_unadjusted <- 0
        total_rejections_count_unadjusted <- 0
        
        false_discovery_count_bonf <- 0
        true_discovery_count_bonf <- 0
        total_rejections_count_bonf <- 0
        
        false_discovery_count_lond <- 0
        true_discovery_count_lond <- 0
        total_rejections_count_lond <- 0
        
      trial <- gen_platform_b(
        treat_response_A,
        treat_response_B,
        baseline_response,
        n_arm,
        alpha
      )
    
    if (trial$pval_1 < trial$alpha_1_unadjusted) { 
      total_rejections_count_unadjusted <- total_rejections_count_unadjusted + 1
      
      if (treat_response_A > baseline_response) {
        # if treatment A has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count_unadjusted <- true_discovery_count_unadjusted + 1
      } else { # otherwise if A has no true effect, it is a false finding
        false_discovery_count_unadjusted <- false_discovery_count_unadjusted + 1
      }
    }
    
    if (trial$pval_2 < trial$alpha_2_unadjusted) { 
      total_rejections_count_unadjusted <- total_rejections_count_unadjusted + 1
    
      
      if (treat_response_B > baseline_response) {
        # if treatment B has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count_unadjusted <- true_discovery_count_unadjusted + 1
        
      } else { # otherwise if B has no true effect, it is a false finding
        false_discovery_count_unadjusted <- false_discovery_count_unadjusted + 1
      }
    }
      
    if (total_rejections_count_unadjusted > 0) { # if there were rejections, calculate the false discovery rate of the trial
      false_discovery_unadjusted <- c(false_discovery_unadjusted, 
                                      false_discovery_count_unadjusted / total_rejections_count_unadjusted)
      true_discovery_unadjusted <- c(true_discovery_unadjusted, 
                                     true_discovery_count_unadjusted / total_rejections_count_unadjusted)
    } else { # otherwise, we count no discoveries
      false_discovery_unadjusted <- c(false_discovery_unadjusted, NA)
      true_discovery_unadjusted <- c(true_discovery_unadjusted, NA)
    }
      
      if (trial$pval_1 < trial$alpha_1_bonf) { 
        total_rejections_count_bonf <- total_rejections_count_bonf + 1
      
      if (treat_response_A > baseline_response) {
        # if treatment A has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count_bonf <- true_discovery_count_bonf + 1
      } else { # otherwise if A has no true effect, it is a false finding
        false_discovery_count_bonf <- false_discovery_count_bonf + 1
      }
      }
      
      if (trial$pval_2 < trial$alpha_2_bonf) { 
        total_rejections_count_bonf <- total_rejections_count_bonf + 1
      
      
      if (treat_response_B > baseline_response) {
        # if treatment B has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count_bonf <- true_discovery_count_bonf + 1
        
      } else { # otherwise if B has no true effect, it is a false finding
        false_discovery_count_bonf <- false_discovery_count_bonf + 1
      }
      }
      
      if (total_rejections_count_bonf > 0) { # if there were rejections, calculate the false discovery rate of the trial
        false_discovery_bonf <- c(false_discovery_bonf, 
                                        false_discovery_count_bonf / total_rejections_count_bonf)
        true_discovery_bonf <- c(true_discovery_bonf, 
                                       true_discovery_count_bonf / total_rejections_count_bonf)
      } else { # otherwise, we count no discoveries
        false_discovery_bonf <- c(false_discovery_bonf, NA)
        true_discovery_bonf <- c(true_discovery_bonf, NA)
      }
      
      if (trial$pval_1 < trial$alpha_1_lond) { 
        total_rejections_count_lond <- total_rejections_count_lond + 1
        
      if (treat_response_A > baseline_response) {
        # if treatment A has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count_lond <- true_discovery_count_lond + 1
      } else { # otherwise if A has no true effect, it is a false finding
        false_discovery_count_lond <- false_discovery_count_lond + 1
      }
      }
      
      if (trial$pval_2 < trial$alpha_2_lond) { 
        total_rejections_count_lond <- total_rejections_count_lond + 1
      
      
      if (treat_response_B > baseline_response) {
        # if treatment B has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count_lond <- true_discovery_count_lond + 1
        
      } else { # otherwise if B has no true effect, it is a false finding
        false_discovery_count_lond <- false_discovery_count_lond + 1
      }
      }
      
      if (total_rejections_count_lond > 0) { # if there were rejections, calculate the false discovery rate of the trial
        false_discovery_lond <- c(false_discovery_lond, 
                                        false_discovery_count_lond / total_rejections_count_lond)
        true_discovery_lond <- c(true_discovery_lond, 
                                       true_discovery_count_lond / total_rejections_count_lond)
      } else { # otherwise, we count no discoveries
        false_discovery_lond <- c(false_discovery_lond, NA)
        true_discovery_lond <- c(true_discovery_lond, NA)
      }
      
  }

      discoveries_unadjusted <- c("false discovery rate (unadjusted)" = mean(false_discovery_unadjusted, na.rm = T),
                                  "true discovery rate (unadjusted)" = mean(true_discovery_unadjusted, na.rm = T))
      
      discoveries_bonf <- c("false discovery rate (strategy 2)" = mean(false_discovery_bonf, na.rm = T),
                           "true discovery rate (strategy 2)" = mean(true_discovery_bonf, na.rm = T))
      
      discoveries_lond <- c("false discovery rate (strategy 3)" = mean(false_discovery_lond, na.rm = T),
                           "true discovery rate (strategy 3)" = mean(true_discovery_lond, na.rm = T))
      
      return(list(discoveries_unadjusted, discoveries_bonf, discoveries_lond))
             
             
     }
}

32*7*7
