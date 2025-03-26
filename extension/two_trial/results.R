source("./extension/two_trial/functions/successful_trials_extension.R")

it <- 100000

# 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and
# Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].

# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_1_1 <- successful_trials_extension(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  iterations = it,
  alpha = 0.025
)
# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
two_trial_1_2 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.3,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
two_trial_1_3 <- successful_trials_extension(
  treat_response_A = 0.1,
  treat_response_B = 0.1,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  iterations = it,
  alpha = 0.025
)

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
two_trial_1_4 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.3,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  iterations = it,
  alpha = 0.025
)

# 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.

# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_2_1 <- successful_trials_extension(
  treat_response_A = 0.1,
  treat_response_B = 0.2,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  iterations = it
)

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
two_trial_2_2 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  iterations = it
)

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
two_trial_2_3 <- successful_trials_extension(
  treat_response_A = 0.1,
  treat_response_B = 0.2,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
two_trial_2_4 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)

# 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_3_1 <- successful_trials_extension(
  treat_response_A = 0.1,
  treat_response_B = 0.3,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  iterations = it
)

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
two_trial_3_2 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.5,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_3_3 <- successful_trials_extension(
  treat_response_A = 0.1,
  treat_response_B = 0.3,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_3_4 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.5,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)

# 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_4_1 <- successful_trials_extension(
  treat_response_A = 0.2,
  treat_response_B = 0.1,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
two_trial_4_2 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.3,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_4_3 <- successful_trials_extension(
  treat_response_A = 0.2,
  treat_response_B = 0.1,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_4_4 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.3,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)


# 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_5_1 <- successful_trials_extension(
  treat_response_A = 0.2,
  treat_response_B = 0.2,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
two_trial_5_2 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_5_3 <- successful_trials_extension(
  treat_response_A = 0.2,
  treat_response_B = 0.2,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_5_4 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)

# 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_6_1 <- successful_trials_extension(
  treat_response_A = 0.2,
  treat_response_B = 0.3,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
two_trial_6_2 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.5,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_6_3 <- successful_trials_extension(
  treat_response_A = 0.2,
  treat_response_B = 0.3,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_6_4 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.5,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)

# 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_7_1 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.1,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_7_2 <- successful_trials_extension(
  treat_response_A = 0.5,
  treat_response_B = 0.3,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_7_3 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.1,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_7_4 <- successful_trials_extension(
  treat_response_A = 0.5,
  treat_response_B = 0.3,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)

# 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
two_trial_8_1 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.2,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
two_trial_8_2 <- successful_trials_extension(
  treat_response_A = 0.5,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
two_trial_8_3 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.2,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  
  iterations = it
)

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
two_trial_8_4 <- successful_trials_extension(
  treat_response_A = 0.5,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  
  iterations = it
)

# 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%

# Δ = 10%, baseline response rate of 10%:
set.seed(123)
two_trial_9_1 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.3,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 266,
  alpha = 0.025,
  iterations = it
)

# Δ = 10%, baseline response rate of 30%:
set.seed(123)
two_trial_9_2 <- successful_trials_extension(
  treat_response_A = 0.4,
  treat_response_B = 0.4,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 477,
  alpha = 0.025,
  
  iterations = it
)
# Δ = 20%, baseline response rate of 10%:
set.seed(123)
two_trial_9_3 <- successful_trials_extension(
  treat_response_A = 0.3,
  treat_response_B = 0.3,
  baseline_response_A = 0.1,
  baseline_response_B = 0.1,
  n_arm = 82,
  alpha = 0.025,
  iterations = it
)

# Δ = 20%, baseline response rate of 30%:
set.seed(123)
two_trial_9_4 <- successful_trials_extension(
  treat_response_A = 0.5,
  treat_response_B = 0.5,
  baseline_response_A = 0.3,
  baseline_response_B = 0.3,
  n_arm = 124,
  alpha = 0.025,
  iterations = it
)
