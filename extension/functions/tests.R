source("./extension/functions/rejection_rate.R")
source("./extension/functions/discovery_rate.R")
source("./sample_sizes.R")

## For two-trial, same function used before (already tested at previous step).
# A_result = gen_rct() -> results correspond to trial 1 and trial 2 of Treatment A

# B_result = gen_rct() -> results correspond to trial 1 and trial 2 of Treatment B

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
  iterations = 10000,
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
  iterations = 10000,
  scenario = "B"
)
