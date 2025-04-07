source("./extension/two_trial/functions/successful_one_trial.R")
source("sample_sizes.R")


it <- 10000

# 1. Treatment A has no true effect (treatment effect, Δ = 0%)
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
one_trial_1_1 <- successful_one_trial(
  treat_response = 0.1,
  baseline_response = 0.1,
  n_arm = arm_sizes_G[1],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
one_trial_1_2 <- successful_one_trial(
  treat_response = 0.3,
  baseline_response = 0.3,
  n_arm = arm_sizes_G[2],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
one_trial_1_3 <- successful_one_trial(
  treat_response = 0.1,
  baseline_response = 0.1,
  n_arm = arm_sizes_G[3],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
one_trial_1_4 <- successful_one_trial(
  treat_response = 0.3,
  baseline_response = 0.3,
  n_arm = arm_sizes_G[4],
  iterations = it,
  alpha = 0.025
)

# 2. Treatment A has effect of 10% (treatment effect, Δ = 10%)
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
one_trial_2_1 <- successful_one_trial(
  treat_response = 0.2,
  baseline_response = 0.1,
  n_arm = arm_sizes_G[1],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
one_trial_2_2 <- successful_one_trial(
  treat_response = 0.4,
  baseline_response = 0.3,
  n_arm = arm_sizes_G[2],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
one_trial_2_3 <- successful_one_trial(
  treat_response = 0.2,
  baseline_response = 0.1,
  n_arm = arm_sizes_G[3],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
one_trial_2_4 <- successful_one_trial(
  treat_response = 0.4,
  baseline_response = 0.3,
  n_arm = arm_sizes_G[4],
  iterations = it,
  alpha = 0.025
)

# 3. Treatment A has effect of 20% (treatment effect, Δ = 20%)
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
one_trial_2_1 <- successful_one_trial(
  treat_response = 0.3,
  baseline_response = 0.1,
  n_arm = arm_sizes_G[1],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
one_trial_2_2 <- successful_one_trial(
  treat_response = 0.5,
  baseline_response = 0.3,
  n_arm = arm_sizes_G[2],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
one_trial_2_3 <- successful_one_trial(
  treat_response = 0.3,
  baseline_response = 0.1,
  n_arm = arm_sizes_G[3],
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
one_trial_2_4 <- successful_one_trial(
  treat_response = 0.5,
  baseline_response = 0.3,
  n_arm = arm_sizes_G[4],
  iterations = it,
  alpha = 0.025
)





