source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")
source("./extension/two_trial/functions/successful_trials_extension.R")
source("./sample_sizes.R")

## Two-trial# Trial 
# powered to: delta = 0.1 & response = 0.1 => n = 266
# Type I error: delta = 0 = response rate - treat rate = 0.1 - treat rate => treat rate = 0.1

set.seed(123)
successful_trials_extension(treat_response_A = 0.1, 
                            treat_response_B = 0.1,
                            baseline_response_A = 0.1,
                            baseline_response_B = 0.1,
                            n_arm = 266,
                            alpha = 0.025,
                            iterations = 100000) # exactly same as before (Treatment A = Treatment B) 

# Treatment A has effect of 0, Treatment B has effect of 10%. 
# sample size: considering trial powered to: delta = 0.1 & response = 0.1 => n = 266
set.seed(123)
successful_trials_extension(treat_response_A = 0.1, 
                            treat_response_B = 0.2,
                            baseline_response_A = 0.1,
                            baseline_response_B = 0.1,
                            n_arm = 266,
                            alpha = 0.025,
                            iterations = 100000) 



## Platform trial:

# Trial powered to: delta = 0.1 & response = 0.1 => n = 266
# Type I error: delta = 0 = response rate - treat rate = 0.1 - treat rate => treat rate = 0.1

# A) treatments starting at the same time (shared control)
rejection_rate(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response = 0.1,
  n_arm = 266,
  alpha = 0.025,
  correction = "unadjusted",
  iterations = 100000,
  scenario = "A"
)

# B) treatments starting and analyzed at different times (semi-shared control)
# Type I error: delta 0.1 (n = 266)
rejection_rate(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response = 0.1,
  n_arm = 266,
  alpha = 0.025,
  correction = "unadjusted",
  iterations = 100000,
  scenario = "B"
)
