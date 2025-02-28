source("./extension/functions/gen_platform_a.R")
source("./extension/functions/gen_platform_b.R")


discovery_rate <- function(
                           treat_response_A,
                           treat_response_B,
                           baseline_response,
                           n_arm,
                           alpha,
                           correction = "unadjusted",
                           iterations,
                           scenario) {
  
  
  false_discovery <- c()
  true_discovery <- c()
  
  for (i in 1:iterations) {
    
    false_discovery_count <- 0
    true_discovery_count <- 0
    total_rejections <- 0
    
    if (scenario == "A") {
      trial <- gen_platform_a(
        
        treat_response_A,
        treat_response_B,
        baseline_response,
        n_arm,
        alpha,
        correction = correction
      )
      
    } else {
      trial <- gen_platform_b(
        
        treat_response_A,
        treat_response_B,
        baseline_response,
        n_arm,
        alpha,
        correction = correction
      )
    }
    
    if (trial$pval_1 < alpha) { 
      total_rejections <- total_rejections + 1
      
    if (treat_response_A > 0) {
      # if treatment A has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count <-
          true_discovery_count + 1
      } else { # otherwise if A has no true effect, it is a false finding
        false_discovery_count <- false_discovery_count + 1
      }
    }
    
    if (trial$pval_2 < alpha) { 
      total_rejections <- total_rejections + 1
      
      if (treat_response_B > 0) {
        # if treatment B has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count <-
          true_discovery_count + 1
      } else { # otherwise if B has no true effect, it is a false finding
        false_discovery_count <- false_discovery_count + 1
      }
    }
    
    
    if (total_rejections > 0) { # if there were rejections, calculate discoveries
      false_discovery <- c(false_discovery, false_discovery_count / total_rejections)
      true_discovery <- c(true_discovery, true_discovery_count / total_rejections)
    } else { # otherwise, we exclude this observation from the vector of discoveries
      false_discovery <- c(false_discovery, NA)
      true_discovery <- c(true_discovery, NA)
    }
  }
  
  fdr <- mean(false_discovery, na.rm = TRUE)
  tdr <- mean(true_discovery, na.rm = TRUE)
  
  return(list(c(
    "false discovery rate", "true discovery rate"), c(fdr, tdr)))
}

# testing function
discovery_rate(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response = 0.1,
  n_arm = 300,
  alpha = 0.025,
  correction = "unadjusted",
  iterations = 1000,
  scenario = "B"
)
