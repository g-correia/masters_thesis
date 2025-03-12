source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")
source("./simple_case/two_trial/functions/successful_trials.R")

it <- 10000

#######################################################
###               2 PLATFORM TRIAL                  ###
### 2.1. Treatments start at same time (Scenario A) ###
#######################################################


######################
# 2.1.1 Type I error #
######################
# Results for Treatments A and B with true effect of 0 (obtained independently, parallel process).

# 2.1.1 A) Unadjusted.
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
type_1_powered_1 <- rejection_rate(treat_response_A = 0.1,
                      treat_response_B = 0.1,
                      baseline_response = 0.1,
                      n_arm = 266,
                      alpha = 0.025,
                      correction = "unadjusted",
                      iterations = it,
                      scenario = "A")

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
type_1_powered_2 <- rejection_rate(treat_response_A = 0.3,
                                   treat_response_B = 0.3,
                                   baseline_response = 0.3,
                                   n_arm = 477,
                                   alpha = 0.025,
                                   correction = "unadjusted",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
type_1_powered_3 <- rejection_rate(treat_response_A = 0.1,
                                   treat_response_B = 0.1,
                                   baseline_response = 0.1,
                                   n_arm = 82,
                                   alpha = 0.025,
                                   correction = "unadjusted",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
type_1_powered_4 <- rejection_rate(treat_response_A = 0.3,
                                   treat_response_B = 0.3,
                                   baseline_response = 0.3,
                                   n_arm = 124,
                                   alpha = 0.025,
                                   correction = "unadjusted",
                                   iterations = it,
                                   scenario = "A")

}

# 2.1.1 B) Strategy 2: Adjusted to account for single pivotal study
{
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  type_1_powered_1_st2 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 2",
                                     iterations = it,
                                     scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  type_1_powered_2_st2 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 2",
                                     iterations = it,
                                     scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  type_1_powered_3_st2 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 2",
                                     iterations = it,
                                     scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  type_1_powered_4_st2 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 2",
                                     iterations = it,
                                     scenario = "A")
  
}

# 2.1.1 C) Strategy 3: Bonferoni correction
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
# Powered to Δ = 10% and with baseline response 10%
set.seed(123)
type_1_powered_1_st3 <- rejection_rate(treat_response_A = 0.1,
                                   treat_response_B = 0.1,
                                   baseline_response = 0.1,
                                   n_arm = 266,
                                   alpha = 0.025,
                                   correction = "adjustment 3",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
type_1_powered_2_st3 <- rejection_rate(treat_response_A = 0.3,
                                   treat_response_B = 0.3,
                                   baseline_response = 0.3,
                                   n_arm = 477,
                                   alpha = 0.025,
                                   correction = "adjustment 3",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
type_1_powered_3_st3 <- rejection_rate(treat_response_A = 0.1,
                                   treat_response_B = 0.1,
                                   baseline_response = 0.1,
                                   n_arm = 82,
                                   alpha = 0.025,
                                   correction = "adjustment 3",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
type_1_powered_4_st3 <- rejection_rate(treat_response_A = 0.3,
                                   treat_response_B = 0.3,
                                   baseline_response = 0.3,
                                   n_arm = 124,
                                   alpha = 0.025,
                                   correction = "adjustment 3",
                                   iterations = it,
                                   scenario = "A")
}

# 2.1.1 D) Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
{
  # Powered to Δ = 10% and with baseline response 10%
  set.seed(123)
  type_1_powered_1_st4 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 4",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  type_1_powered_2_st4 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 4",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  type_1_powered_3_st4 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 4",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  type_1_powered_4_st4 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 4",
                                         iterations = it,
                                         scenario = "A")
}

######################
#    2.1.2 Power     #
######################
# Results for Treatments A and B with true effect > 0 (obtained independently, parallel process).

# 2.1.2 A) Unadjusted.
{
# Δ = 10% or Δ = 20%, with baseline response rates of 10% or 30%.

# Δ = 10%, baseline response rate of 10%:
set.seed(123)
power_1 <- rejection_rate(treat_response_A = 0.2,
                                   treat_response_B = 0.2,
                                   baseline_response = 0.1,
                                   n_arm = 266,
                                   alpha = 0.025,
                                   correction = "unadjusted",
                                   iterations = it,
                                   scenario = "A")

# Δ = 10%, baseline response rate of 30%:
set.seed(123)
power_2 <- rejection_rate(treat_response_A = 0.4,
                          treat_response_B = 0.4,
                          baseline_response = 0.3,
                          n_arm = 477,
                          alpha = 0.025,
                          correction = "unadjusted",
                          iterations = it,
                          scenario = "A")

# Δ = 20%, baseline response rate of 10%:
set.seed(123)
power_3 <- rejection_rate(treat_response_A = 0.3,
                          treat_response_B = 0.3,
                          baseline_response = 0.1,
                          n_arm = 82,
                          alpha = 0.025,
                          correction = "unadjusted",
                          iterations = it,
                          scenario = "A")

# Δ = 20%, baseline response rate of 30%:
set.seed(123)
power_4 <- rejection_rate(treat_response_A = 0.5,
                          treat_response_B = 0.5,
                          baseline_response = 0.3,
                          n_arm = 124,
                          alpha = 0.025,
                          correction = "unadjusted",
                          iterations = it,
                          scenario = "A")

}

# 2.1.2 B) Strategy 2: Adjusted to account for single pivotal study
{
  # Δ = 10% or Δ = 20%, with baseline response rates of 10% or 30%.
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  power_1_st2 <- rejection_rate(treat_response_A = 0.2,
                            treat_response_B = 0.2,
                            baseline_response = 0.1,
                            n_arm = 266,
                            alpha = 0.025,
                            correction = "adjustment 2",
                            iterations = it,
                            scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  power_2_st2 <- rejection_rate(treat_response_A = 0.4,
                            treat_response_B = 0.4,
                            baseline_response = 0.3,
                            n_arm = 477,
                            alpha = 0.025,
                            correction = "adjustment 2",
                            iterations = it,
                            scenario = "A")
  
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  power_3_st2 <- rejection_rate(treat_response_A = 0.3,
                            treat_response_B = 0.3,
                            baseline_response = 0.1,
                            n_arm = 82,
                            alpha = 0.025,
                            correction = "adjustment 2",
                            iterations = it,
                            scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  power_4_st2 <- rejection_rate(treat_response_A = 0.5,
                            treat_response_B = 0.5,
                            baseline_response = 0.3,
                            n_arm = 124,
                            alpha = 0.025,
                            correction = "adjustment 2",
                            iterations = it,
                            scenario = "A")
  
}

# 2.1.2 C) Strategy 3: Bonferoni correction
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
# Δ = 10%, baseline response rate of 10%:
set.seed(123)
power_1_st3 <- rejection_rate(treat_response_A = 0.2,
                          treat_response_B = 0.2,
                          baseline_response = 0.1,
                          n_arm = 266,
                          alpha = 0.025,
                          correction = "adjustment 3",
                          iterations = it,
                          scenario = "A")

# Δ = 10%, baseline response rate of 30%:
set.seed(123)
power_2_st3 <- rejection_rate(treat_response_A = 0.4,
                          treat_response_B = 0.4,
                          baseline_response = 0.3,
                          n_arm = 477,
                          alpha = 0.025,
                          correction = "adjustment 3",
                          iterations = it,
                          scenario = "A")

# Δ = 20%, baseline response rate of 10%:
set.seed(123)
power_3_st3 <- rejection_rate(treat_response_A = 0.3,
                          treat_response_B = 0.3,
                          baseline_response = 0.1,
                          n_arm = 82,
                          alpha = 0.025,
                          correction = "adjustment 3",
                          iterations = it,
                          scenario = "A")

# Δ = 20%, baseline response rate of 30%:
set.seed(123)
power_4_st3 <- rejection_rate(treat_response_A = 0.5,
                          treat_response_B = 0.5,
                          baseline_response = 0.3,
                          n_arm = 124,
                          alpha = 0.025,
                          correction = "adjustment 3",
                          iterations = it,
                          scenario = "A")
}

# 2.1.2 D) Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
{
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  power_1_st4 <- rejection_rate(treat_response_A = 0.2,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 4",
                                iterations = it,
                                scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  power_2_st4 <- rejection_rate(treat_response_A = 0.4,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "adjustment 4",
                                iterations = it,
                                scenario = "A")
  
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  power_3_st4 <- rejection_rate(treat_response_A = 0.3,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "adjustment 4",
                                iterations = it,
                                scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  power_4_st4 <- rejection_rate(treat_response_A = 0.5,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "adjustment 4",
                                iterations = it,
                                scenario = "A")
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
discovery_1_1 <- discovery_rate(treat_response_A = 0.1,
               treat_response_B = 0.1,
               baseline_response = 0.1,
               n_arm = 266,
               alpha = 0.025,
               correction = "unadjusted",
               iterations = it,
               scenario = "A")
# Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
discovery_1_2 <- discovery_1_1

# 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_2_1 <- discovery_rate(treat_response_A = 0.1,
                              treat_response_B = 0.2,
                              baseline_response = 0.1,
                              n_arm = 266,
                              alpha = 0.025,
                              correction = "unadjusted",
                              iterations = it,
                              scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_2_2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_3_1 <- discovery_rate(treat_response_A = 0.1,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_3_2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_4_1 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.1,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_4_2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.3,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")


# 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_5_1 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_5_2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_6_1 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_6_2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_6_3 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_6_4 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_7_1 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.1,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_7_2 <- discovery_rate(treat_response_A = 0.5,
                                treat_response_B = 0.3,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_8_1 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_8_2 <- discovery_rate(treat_response_A = 0.5,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_8_3 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_8_4 <- discovery_rate(treat_response_A = 0.5,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")


# 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
set.seed(123)
discovery_9_1 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "unadjusted",
                                iterations = it,
                                scenario = "A")
discovery_9_2<-discovery_9_1
}

# 2.1.3 B) Strategy 2: Adjusted to account for single pivotal study
{
# 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
# Powered to Δ = 10% and with baseline response 10%: 1 / 0
set.seed(123)
discovery_1_1_st2 <- discovery_rate(treat_response_A = 0.1,
                                treat_response_B = 0.1,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")
# Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
discovery_1_2_st2 <- discovery_1_1_st2

# 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_2_1_st2 <- discovery_rate(treat_response_A = 0.1,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_2_2_st2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_3_1_st2 <- discovery_rate(treat_response_A = 0.1,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_3_2_st2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_4_1_st2 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.1,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_4_2_st2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.3,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")


# 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_5_1_st2 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_5_2_st2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_6_1_st2 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_6_2_st2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_6_3_st2 <- discovery_rate(treat_response_A = 0.2,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_6_4_st2 <- discovery_rate(treat_response_A = 0.4,
                                treat_response_B = 0.5,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_7_1_st2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.1,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_7_2_st2 <- discovery_rate(treat_response_A = 0.5,
                                treat_response_B = 0.3,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
# Powered to Δ = 10% and with baseline response 10%:
set.seed(123)
discovery_8_1_st2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 266,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 10% and with baseline response 30%:
set.seed(123)
discovery_8_2_st2 <- discovery_rate(treat_response_A = 0.5,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 477,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 10%:
set.seed(123)
discovery_8_3_st2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.2,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")

# Powered to Δ = 20% and with baseline response 30%:
set.seed(123)
discovery_8_4_st2 <- discovery_rate(treat_response_A = 0.5,
                                treat_response_B = 0.4,
                                baseline_response = 0.3,
                                n_arm = 124,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")


# 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
set.seed(123)
discovery_9_1_st2 <- discovery_rate(treat_response_A = 0.3,
                                treat_response_B = 0.3,
                                baseline_response = 0.1,
                                n_arm = 82,
                                alpha = 0.025,
                                correction = "adjustment 2",
                                iterations = it,
                                scenario = "A")
discovery_9_2_st2<-discovery_9_1_st2
}

# 2.1.3 C) Strategy 3: Bonferoni correction
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123)
  discovery_1_1_st3 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2_st3 <- discovery_1_1_st3
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1_st3 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_st3 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1_st3 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2_st3 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1_st3 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2_st3 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1_st3 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2_st3 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3_st3 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4_st3 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_st3 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2_st3 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4_st3 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  discovery_9_2_st3<-discovery_9_1_st3
}

# 2.1.3 D) Strategy 4: Adjusted to account for single pivotal study and Boferroni correction
{

  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123)
  discovery_1_1_st4 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2_st4 <- discovery_1_1_st4
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1_st4 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_st4 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1_st4 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2_st4 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1_st4 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2_st4 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1_st4 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2_st4 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3_st4 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4_st4 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_st4 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2_st4 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4_st4 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  discovery_9_2_st4<-discovery_9_1_st4
}



