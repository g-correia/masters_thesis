source("./extension/platform/functions/gen_platform_a.R")
source("./extension/platform/functions/gen_platform_b.R")


discovery_rate <- function(treat_response_A,
                           treat_response_B,
                           baseline_response,
                           n_arm,
                           alpha,
                           correction = "unadjusted",
                           iterations = 10000,
                           scenario) {
  
  false_discovery <- c()
  true_discovery <- c()
  total_rejections <- 0
  
  for (i in 1:iterations) {
    false_discovery_count <- 0
    true_discovery_count <- 0
    total_rejections_count <- 0
    
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
      total_rejections_count <- total_rejections_count + 1
      
    if (treat_response_A > baseline_response) {
      # if treatment A has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count <- true_discovery_count + 1
      } else { # otherwise if A has no true effect, it is a false finding
        false_discovery_count <- false_discovery_count + 1
      }
    }
    
    if (trial$pval_2 < alpha) { 
      total_rejections_count <- total_rejections_count + 1
      
      if (treat_response_B > baseline_response) {
        # if treatment B has positive true effect, rejection of null hypothesis is a true finding
        true_discovery_count <- true_discovery_count + 1
        
      } else { # otherwise if B has no true effect, it is a false finding
        false_discovery_count <- false_discovery_count + 1
      }
    }
    
    
    if (total_rejections_count > 0) { # if there were rejections, calculate discoveries
      false_discovery <- c(false_discovery, false_discovery_count / total_rejections_count)
      true_discovery <- c(true_discovery, true_discovery_count / total_rejections_count)
    } else { # otherwise, we count no discoveries
      false_discovery <- c(false_discovery, 0)
      true_discovery <- c(true_discovery, 0)
    }
  }
  
  fdr <- mean(false_discovery)
  tdr <- mean(true_discovery)
  
  return(list(c(
    "false discovery rate", "true discovery rate"), c(fdr, tdr)))
}

# testing function
discovery_rate(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response = 0.1,
  n_arm = 266,
  alpha = 0.025,
  correction = "unadjusted",
  iterations = 100000,
  scenario = "B"
)


