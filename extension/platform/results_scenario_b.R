source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")
source("./simple_case/two_trial/functions/successful_trials.R")

it <- 1000

#######################################################
###               2 PLATFORM TRIAL                  ###
### 2.2. Treatments start at same time (Scenario B) ###
#######################################################


######################
# 2.2.1 Type I error #
######################
# Results for Treatments A and B with true effect of 0 (obtained independently, parallel process).

# 2.2.1 A) Unadjusted.
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  type_1_powered_1_B <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "unadjusted",
                                     iterations = it,
                                     scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  type_1_powered_2_B <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "unadjusted",
                                     iterations = it,
                                     scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  type_1_powered_3_B <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "unadjusted",
                                     iterations = it,
                                     scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  type_1_powered_4_B <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "unadjusted",
                                     iterations = it,
                                     scenario = "B")
  
}

# 2.2.1 B) Bonferoni correction
{
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  type_1_powered_1_bonf_B <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "bonferroni",
                                         iterations = it,
                                         scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  type_1_powered_2_bonf_B <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "bonferroni",
                                         iterations = it,
                                         scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  type_1_powered_3_bonf_B <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "bonferroni",
                                         iterations = it,
                                         scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  type_1_powered_4_bonf_B <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "bonferroni",
                                         iterations = it,
                                         scenario = "B")
  
}

# 2.2.1 C) LOND 
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  # Powered to Δ = 10% and with baseline response 10%
  set.seed(123)
  type_1_powered_1_lond_B <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "lond",
                                         iterations = it,
                                         scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  type_1_powered_2_lond_B <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "lond",
                                         iterations = it,
                                         scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  type_1_powered_3_lond_B <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "lond",
                                         iterations = it,
                                         scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  type_1_powered_4_lond_B <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "lond",
                                         iterations = it,
                                         scenario = "B")
}



######################
#    2.1.2 Power     #
######################
# Results for Treatments A and B with true effect > 0 (obtained independently, parallel process).

# 2.2.2 A) Unadjusted.
{
  # Δ = 10% or Δ = 20%, with baseline response rates of 10% or 30%.
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  power_1_B <- rejection_rate(treat_response_A = 0.2,
                            treat_response_B = 0.2,
                            baseline_response = 0.1,
                            n_arm = 266,
                            alpha = 0.025,
                            correction = "unadjusted",
                            iterations = it,
                            scenario = "B")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  power_2_B <- rejection_rate(treat_response_A = 0.4,
                            treat_response_B = 0.4,
                            baseline_response = 0.3,
                            n_arm = 477,
                            alpha = 0.025,
                            correction = "unadjusted",
                            iterations = it,
                            scenario = "B")
  
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  power_3_B <- rejection_rate(treat_response_A = 0.3,
                            treat_response_B = 0.3,
                            baseline_response = 0.1,
                            n_arm = 82,
                            alpha = 0.025,
                            correction = "unadjusted",
                            iterations = it,
                            scenario = "B")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  power_4_B <- rejection_rate(treat_response_A = 0.5,
                            treat_response_B = 0.5,
                            baseline_response = 0.3,
                            n_arm = 124,
                            alpha = 0.025,
                            correction = "unadjusted",
                            iterations = it,
                            scenario = "B")
  
}

# 2.2.2 B) Bonferoni correction
{
  # Δ = 10% or Δ = 20%, with baseline response rates of 10% or 30%.
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  power_1_bonf_B <- rejection_rate(treat_response_A = 0.2,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "bonferroni",
                                iterations = it,
                                scenario = "B")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  power_2_bonf_B <- rejection_rate(treat_response_A = 0.4,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "bonferroni",
                                iterations = it,
                                scenario = "B")
  
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  power_3_bonf_B <- rejection_rate(treat_response_A = 0.3,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "bonferroni",
                                iterations = it,
                                scenario = "B")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  power_4_bonf_B <- rejection_rate(treat_response_A = 0.5,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "bonferroni",
                                iterations = it,
                                scenario = "B")
  
}

# 2.2.2 C) LOND 
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  power_1_lond_B <- rejection_rate(treat_response_A = 0.2,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "lond",
                                iterations = it,
                                scenario = "B")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  power_2_lond_B <- rejection_rate(treat_response_A = 0.4,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "lond",
                                iterations = it,
                                scenario = "B")
  
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  power_3_lond_B <- rejection_rate(treat_response_A = 0.3,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "lond",
                                iterations = it,
                                scenario = "B")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  power_4_lond_B <- rejection_rate(treat_response_A = 0.5,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "lond",
                                iterations = it,
                                scenario = "B")
}


######################
# 2.1.3 FDR and TDR  #
######################
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
# 2.1.3 A) No adjustment:
{
  
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123)
  discovery_1_1_B <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = 266,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2_B <- discovery_1_1_B
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1_B <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = 266,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2_B <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = 477,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_B <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = 82,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_B <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = 124,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1_B <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = 266,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2_B <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = 477,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1_B <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = 266,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2_B <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = 477,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1_B <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = 266,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2_B <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = 477,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3_B <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = 82,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4_B <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = 124,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1_B <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = 82,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_B <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = 124,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1_B <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = 266,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2_B <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = 477,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3_B <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = 82,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4_B <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = 124,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1_B <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = 82,
                                  alpha = 0.025,
                                  correction = "unadjusted",
                                  iterations = it,
                                  scenario = "B")
  discovery_9_2_B<-discovery_9_1_B
}

# 2.1.3 B) Bonferoni correction
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123)
  discovery_1_1_bonf_B <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2_bonf_B <- discovery_1_1_bonf_B
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1_bonf_B <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2_bonf_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_bonf_B <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_bonf_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1_bonf_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2_bonf_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1_bonf_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2_bonf_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1_bonf_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2_bonf_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3_bonf_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4_bonf_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1_bonf_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_bonf_B <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1_bonf_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2_bonf_B <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3_bonf_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4_bonf_B <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1_bonf_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "bonferroni",
                                      iterations = it,
                                      scenario = "B")
  discovery_9_2_bonf_B<-discovery_9_1_bonf_B
}

# 2.1.3 C) LOND
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123)
  discovery_1_1_lond_B <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2_lond_B <- discovery_1_1_lond_B
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1_lond_B <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2_lond_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_lond_B <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_lond_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1_lond_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2_lond_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1_lond_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2_lond_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1_lond_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2_lond_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3_lond_B <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4_lond_B <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1_lond_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_lond_B <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1_lond_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2_lond_B <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3_lond_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4_lond_B <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1_lond_B <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "lond",
                                      iterations = it,
                                      scenario = "B")
  discovery_9_2_lond_B<-discovery_9_1_lond_B
}






