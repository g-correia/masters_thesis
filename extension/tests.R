source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")
source("./simple_case/two_trial/functions/successful_trials.R")

source("./sample_sizes.R")

## For two-trial, same function used before (already tested at previous step).
# A_result = sucessful_trials (based on gen_rct()) -> results correspond to trial 1 and trial 2 of Treatment A
# B_result = sucessful_trials (based on gen_rct()) -> results correspond to trial 1 and trial 2 of Treatment B

# sample size: considering trial powered to: delta = 0.1 & response = 0.1 => n = 266
# A result: treatment effect 0 (type I error)
set.seed(123)
successful_trials(treat_response = 0.1, 
                  baseline_response = 0.1,
                  n_arm = 266,
                  alpha = 0.025,
                  iterations = 100000) # same results as before

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

# Discovery rate:
# no effect of both treatments
# expected: 5%
a<-discovery_rate(
    treat_response_A = 0.1,
    treat_response_B = 0.1,
    baseline_response = 0.1,
    n_arm = 266,
    alpha = 0.025,
    correction = "unadjusted",
    iterations = 100000,
    scenario = "B")

# effect of 5% both treatments (powered to detect 10%, n = 266)
# expected: ?
b<-discovery_rate(
  treat_response_A = 0.15,
  treat_response_B = 0.15,
  baseline_response = 0.1,
  n_arm = 266,
  alpha = 0.025,
  correction = "unadjusted",
  iterations = 100000,
  scenario = "B")

# effect of 10% only treat A and 0 for treat B (powered to detect 10%, n = 266)

# Expected: 
# treat A: no fdr
# treat B: around 5%/2

# fdr: 5% -5%/2?
# tdr: +5%/2?
c<-discovery_rate(
  treat_response_A = 0.2,
  treat_response_B = 0.1,
  baseline_response = 0.1,
  n_arm = 266,
  alpha = 0.025,
  correction = "unadjusted",
  iterations = 100000,
  scenario = "B")

a
b
c

