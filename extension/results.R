source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")
source("./simple_case/two_trial/functions/successful_trials.R")
source("./sample_sizes.R")

it <- 1000

#################### 
# 2 PLATFORM TRIAL #
####################

# 2.1. Treatments start at same time


# 2.1.1 Type I error:
# Results for Treatments A and B with true effect of 0 (obtained independently, parallel process).

# 2.1.1 A) Unadjusted.
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.

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

# 2.1.1 B) Bonferoni correction
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.

# Powered to Δ = 10% and with baseline response 10%
set.seed(123)
type_1_powered_1_bonf <- rejection_rate(treat_response_A = 0.1,
                                   treat_response_B = 0.1,
                                   baseline_response = 0.1,
                                   n_arm = 266,
                                   alpha = 0.025,
                                   correction = "bonferroni",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 10% and with baseline response 30%
set.seed(123)
type_1_powered_2_bonf <- rejection_rate(treat_response_A = 0.3,
                                   treat_response_B = 0.3,
                                   baseline_response = 0.3,
                                   n_arm = 477,
                                   alpha = 0.025,
                                   correction = "bonferroni",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 20% and with baseline response 10%
set.seed(123)
type_1_powered_3_bonf <- rejection_rate(treat_response_A = 0.1,
                                   treat_response_B = 0.1,
                                   baseline_response = 0.1,
                                   n_arm = 82,
                                   alpha = 0.025,
                                   correction = "bonferroni",
                                   iterations = it,
                                   scenario = "A")

# Powered to Δ = 20% and with baseline response 30%
set.seed(123)
type_1_powered_4_bonf <- rejection_rate(treat_response_A = 0.3,
                                   treat_response_B = 0.3,
                                   baseline_response = 0.3,
                                   n_arm = 124,
                                   alpha = 0.025,
                                   correction = "bonferroni",
                                   iterations = it,
                                   scenario = "A")


# 2.1.2 Power:
# Results for Treatments A and B with true effect > 0 (obtained independently, parallel process).

# 2.1.2 A) Unadjusted.
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

# 2.1.2 B) Bonferoni correction
# Δ = 10%, baseline response rate of 10%:
set.seed(123)
power_1_bonf <- rejection_rate(treat_response_A = 0.2,
                          treat_response_B = 0.2,
                          baseline_response = 0.1,
                          n_arm = 266,
                          alpha = 0.025,
                          correction = "bonferroni",
                          iterations = it,
                          scenario = "A")

# Δ = 10%, baseline response rate of 30%:
set.seed(123)
power_2_bonf <- rejection_rate(treat_response_A = 0.4,
                          treat_response_B = 0.4,
                          baseline_response = 0.3,
                          n_arm = 477,
                          alpha = 0.025,
                          correction = "bonferroni",
                          iterations = it,
                          scenario = "A")

# Δ = 20%, baseline response rate of 10%:
set.seed(123)
power_3_bonf <- rejection_rate(treat_response_A = 0.3,
                          treat_response_B = 0.3,
                          baseline_response = 0.1,
                          n_arm = 82,
                          alpha = 0.025,
                          correction = "bonferroni",
                          iterations = it,
                          scenario = "A")

# Δ = 20%, baseline response rate of 30%:
set.seed(123)
power_4_bonf <- rejection_rate(treat_response_A = 0.5,
                          treat_response_B = 0.5,
                          baseline_response = 0.3,
                          n_arm = 124,
                          alpha = 0.025,
                          correction = "bonferroni",
                          iterations = it,
                          scenario = "A")


# 2.1.3 FDR and TDR: Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
# 2.1.3 A) No adjustment:

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


# 2.1.3 B) Strategy 2
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
discovery_1_2_st2 <- discovery_1_1

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
discovery_9_2_st2<-discovery_9_1

# include adjustments 3 and 4.

# 2.2. Treatments start at different times


# for tabulation [cell indicies (a) to be adjusted once table visualization is defined]
a11<-type_1_powered_1[[2]][1] 
a12<-type_1_powered_1[[2]][2]

a21<-type_1_powered_2[[2]][1]
a22<-type_1_powered_2[[2]][2]

a31<-type_1_powered_3[[2]][1]
a32<-type_1_powered_3[[2]][2]

a41<-type_1_powered_4[[2]][1]
a42<-type_1_powered_4[[2]][2]

a31<-type_1_powered_1_bonf[[2]][1]
a32<-type_1_powered_1_bonf[[2]][2]

a41<-type_1_powered_2_bonf[[2]][1]
a42<-type_1_powered_2_bonf[[2]][2]

a51<-power_1[[2]][1]
a52<-power_1[[2]][2]

a61<-power_2[[2]][1]
a62<-power_2[[2]][2]

a71<-power_3[[2]][1]
a72<-power_3[[2]][2]

a81<-power_4[[2]][1]
a82<-power_4[[2]][2]

a81<-power_4[[2]][1]
a82<-power_4[[2]][2]

a91<-power_1_bonf[[2]][1]
a92<-power_1_bonf[[2]][2]

a101<-power_2_bonf[[2]][1]
a102<-power_2_bonf[[2]][2]

a111<-power_3_bonf[[2]][1]
a112<-power_3_bonf[[2]][2]

a121<-power_4_bonf[[2]][1]
a122<-power_4_bonf[[2]][2]
