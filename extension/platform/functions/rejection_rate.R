source("./extension/platform/functions/gen_platform_a.R")
source("./extension/platform/functions/gen_platform_b.R")

# For type I error (delta = 0) and power (delta > 0), rejection of individual hypothesis given different true treatment effects
# scenario: "A" = Treatments starting at the same time; "B" = starting at different times (B starts later)
# iterations: number of iterations

rejection_rate <- function(
                         treat_response_A,
                         treat_response_B,
                         baseline_response,
                         n_arm,
                         alpha,
                         correction = "unadjusted",
                         iterations,
                         scenario = "A") {
  counts_treat_a <- 0
  counts_treat_b <- 0
  
  for (i in 1:iterations) {
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
    
    if ((trial$pval_1 < alpha)) {
      counts_treat_a <- counts_treat_a + 1  # rejection treatment A
    }
    
    if ((trial$pval_2 < alpha)) {
      counts_treat_b <- counts_treat_b + 1 # rejection treatment B
    }
    
  }
    
  
  return(list(c("Rejection rate treat. A", "Rejection rate treat. B"), c(counts_treat_a/iterations, counts_treat_b/iterations)))
  
}

# testing function
rejection_rate(
               treat_response_A = 0.1,
               treat_response_B = 0.1,
               baseline_response = 0.1,
               n_arm = 300,
               alpha = 0.025,
               correction = "unadjusted",
               iterations = 1000,
               scenario = "A")
