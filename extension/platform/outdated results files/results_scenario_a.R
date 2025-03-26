source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")

it <- 100000

#######################################################
###               2 PLATFORM TRIAL                  ###
### 2.1. Treatments start at same time (Scenario A) ###
#######################################################


#################################################
# 2.1.1 Rejection Rate [type I error and power] #
#################################################
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%. 

# 2.1.1 A) Unadjusted.
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and 
  # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_1_1 <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_1_2 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_1_3 <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_1_4 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_2_1 <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_2_2 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_2_3 <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_2_4 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_3_1 <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_3_2 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_3_3 <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_3_4 <- rejection_rate(treat_response_A = 0.3,
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
  rejection_4_1 <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_4_2 <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_4_3 <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_4_4 <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_5_1 <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_5_2 <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_5_3 <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_5_4 <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_6_1 <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_6_2 <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_6_3 <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_6_4 <- rejection_rate(treat_response_A = 0.4,
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
  rejection_7_1 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_2 <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_3 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_4 <- rejection_rate(treat_response_A = 0.5,
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
  rejection_8_1 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_8_2 <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_8_3 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_8_4 <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_1 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_2 <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_3 <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_4 <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  
}

# 2.1.1 B) Strategy 2: Adjusted to account for single pivotal study
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and 
  # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_1_1_st2 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_1_2_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_1_3_st2 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_1_4_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_2_1_st2 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_2_2_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_2_3_st2 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_2_4_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_3_1_st2 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_3_2_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_3_3_st2 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_3_4_st2 <- rejection_rate(treat_response_A = 0.3,
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
  rejection_4_1_st2 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_4_2_st2 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_4_3_st2 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_4_4_st2 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_5_1_st2 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_5_2_st2 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_5_3_st2 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_5_4_st2 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_6_1_st2 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_6_2_st2 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_6_3_st2 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_6_4_st2 <- rejection_rate(treat_response_A = 0.4,
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
  rejection_7_1_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_2_st2 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_3_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_4_st2 <- rejection_rate(treat_response_A = 0.5,
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
  rejection_8_1_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_8_2_st2 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_8_3_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_8_4_st2 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_1_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_2_st2 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_3_st2 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_4_st2 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 2",
                                         iterations = it,
                                         scenario = "A")
  
  
}

# 2.1.1 C) Strategy 3: adjustment 2 correction
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and 
  # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_1_1_st3 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_1_2_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_1_3_st3 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_1_4_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_2_1_st3 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_2_2_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_2_3_st3 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_2_4_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_3_1_st3 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_3_2_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_3_3_st3 <- rejection_rate(treat_response_A = 0.1,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_3_4_st3 <- rejection_rate(treat_response_A = 0.3,
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
  rejection_4_1_st3 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_4_2_st3 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_4_3_st3 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_4_4_st3 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_5_1_st3 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_5_2_st3 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_5_3_st3 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_5_4_st3 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_6_1_st3 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_6_2_st3 <- rejection_rate(treat_response_A = 0.4,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_6_3_st3 <- rejection_rate(treat_response_A = 0.2,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_6_4_st3 <- rejection_rate(treat_response_A = 0.4,
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
  rejection_7_1_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_2_st3 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_3_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.1,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_4_st3 <- rejection_rate(treat_response_A = 0.5,
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
  rejection_8_1_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_8_2_st3 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_8_3_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.2,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_8_4_st3 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.4,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_1_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 266,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_2_st3 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 477,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_3_st3 <- rejection_rate(treat_response_A = 0.3,
                                         treat_response_B = 0.3,
                                         baseline_response = 0.1,
                                         n_arm = 82,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_4_st3 <- rejection_rate(treat_response_A = 0.5,
                                         treat_response_B = 0.5,
                                         baseline_response = 0.3,
                                         n_arm = 124,
                                         alpha = 0.025,
                                         correction = "adjustment 3",
                                         iterations = it,
                                         scenario = "A")
  
  
}

# 2.1.1 D) Strategy 4: Adjusted to account for single pivotal study and adjustment 2 correction
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and 
  # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_1_1_st4 <- rejection_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_1_2_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_1_3_st4 <- rejection_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_1_4_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_2_1_st4 <- rejection_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_2_2_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_2_3_st4 <- rejection_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_2_4_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_3_1_st4 <- rejection_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_3_2_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_3_3_st4 <- rejection_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_3_4_st4 <- rejection_rate(treat_response_A = 0.3,
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
  rejection_4_1_st4 <- rejection_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_4_2_st4 <- rejection_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_4_3_st4 <- rejection_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_4_4_st4 <- rejection_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_5_1_st4 <- rejection_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_5_2_st4 <- rejection_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_5_3_st4 <- rejection_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_5_4_st4 <- rejection_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_6_1_st4 <- rejection_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_6_2_st4 <- rejection_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_6_3_st4 <- rejection_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_6_4_st4 <- rejection_rate(treat_response_A = 0.4,
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
  rejection_7_1_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_2_st4 <- rejection_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_3_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_4_st4 <- rejection_rate(treat_response_A = 0.5,
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
  rejection_8_1_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_8_2_st4 <- rejection_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_8_3_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_8_4_st4 <- rejection_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_1_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_2_st4 <- rejection_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_3_st4 <- rejection_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_4_st4 <- rejection_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  
}

# 2.1.1 E) Strategy 5: Dunnet's test
{
 # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and
 # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].

 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_1_1_st5 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%
 set.seed(123)
 rejection_1_2_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%
 set.seed(123)
 rejection_1_3_st5 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%
 set.seed(123)
 rejection_1_4_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.

 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_2_1_st5 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%
 set.seed(123)
 rejection_2_2_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%
 set.seed(123)
 rejection_2_3_st5 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%
 set.seed(123)
 rejection_2_4_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_3_1_st5 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 rejection_3_2_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_3_3_st5 <- rejection_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_3_4_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_4_1_st5 <- rejection_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 rejection_4_2_st5 <- rejection_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_4_3_st5 <- rejection_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_4_4_st5 <- rejection_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")


 # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_5_1_st5 <- rejection_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 rejection_5_2_st5 <- rejection_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_5_3_st5 <- rejection_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_5_4_st5 <- rejection_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_6_1_st5 <- rejection_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 rejection_6_2_st5 <- rejection_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_6_3_st5 <- rejection_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_6_4_st5 <- rejection_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_7_1_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_7_2_st5 <- rejection_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_7_3_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_7_4_st5 <- rejection_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 rejection_8_1_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 rejection_8_2_st5 <- rejection_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 rejection_8_3_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 rejection_8_4_st5 <- rejection_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%

 # Δ = 10%, baseline response rate of 10%:
 set.seed(123)
 rejection_9_1_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Δ = 10%, baseline response rate of 30%:
 set.seed(123)
 rejection_9_2_st5 <- rejection_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Δ = 20%, baseline response rate of 10%:
 set.seed(123)
 rejection_9_3_st5 <- rejection_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Δ = 20%, baseline response rate of 30%:
 set.seed(123)
 rejection_9_4_st5 <- rejection_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")


}



#######################################
# 2.1.2 Discovery Rate [FDR and TDR]  #
#######################################
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
  
  # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0
  
  # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0
  
  
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_2_3 <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_2_4 <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_3_1 <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_3_2 <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_3 <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_4 <- discovery_rate(treat_response_A = 0.3,
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_4_3 <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_4_4 <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 124,
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
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_5_3 <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_5_4 <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
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
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2 <- discovery_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_3 <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "unadjusted",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_4 <- discovery_rate(treat_response_A = 0.5,
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
  # repeat for other pairs of treatment effect and baseline response rate
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
  
  # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0
  
  # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0
  
  
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_2_3_st2 <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_2_4_st2 <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_st2 <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_st2 <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_3_st2 <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_4_st2 <- discovery_rate(treat_response_A = 0.3,
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_4_3_st2 <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_4_4_st2 <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 124,
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
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_5_3_st2 <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_5_4_st2 <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = 124,
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
                                    n_arm = 266,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_st2 <- discovery_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = 477,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_3_st2 <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = 82,
                                    alpha = 0.025,
                                    correction = "adjustment 2",
                                    iterations = it,
                                    scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_4_st2 <- discovery_rate(treat_response_A = 0.5,
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
  # repeat for other pairs of treatment effect and baseline response rate
}

# 2.1.3 C) Strategy 3: adjustment 2 correction
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
  
  # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0
  
  # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0
  
  
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_2_3_st3 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_2_4_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_st3 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_3_st3 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_4_st3 <- discovery_rate(treat_response_A = 0.3,
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_4_3_st3 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_4_4_st3 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
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
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_5_3_st3 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_5_4_st3 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
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
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_st3 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_3_st3 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 3",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_4_st3 <- discovery_rate(treat_response_A = 0.5,
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
  # repeat for other pairs of treatment effect and baseline response rate
}

# 2.1.3 D) Strategy 4: Adjusted to account for single pivotal study and Bonferroni correction
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
  
  # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0
  
  # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0
  
  
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_2_3_st4 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_2_4_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_st4 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.5,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_3_st4 <- discovery_rate(treat_response_A = 0.1,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_4_st4 <- discovery_rate(treat_response_A = 0.3,
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
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_4_3_st4 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_4_4_st4 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 124,
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
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_5_3_st4 <- discovery_rate(treat_response_A = 0.2,
                                      treat_response_B = 0.2,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_5_4_st4 <- discovery_rate(treat_response_A = 0.4,
                                      treat_response_B = 0.4,
                                      baseline_response = 0.3,
                                      n_arm = 124,
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
                                      n_arm = 266,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_st4 <- discovery_rate(treat_response_A = 0.5,
                                      treat_response_B = 0.3,
                                      baseline_response = 0.3,
                                      n_arm = 477,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_3_st4 <- discovery_rate(treat_response_A = 0.3,
                                      treat_response_B = 0.1,
                                      baseline_response = 0.1,
                                      n_arm = 82,
                                      alpha = 0.025,
                                      correction = "adjustment 4",
                                      iterations = it,
                                      scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_4_st4 <- discovery_rate(treat_response_A = 0.5,
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
  # repeat for other pairs of treatment effect and baseline response rate
}

# 2.1.3 E) Strategy 5: Dunnet's test
{

 # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
 # Powered to Δ = 10% and with baseline response 10%: 1 / 0
 set.seed(123)
 discovery_1_1_st5 <- discovery_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0

 # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0

 # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0


 # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 discovery_2_1_st5 <- discovery_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 discovery_2_2_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_2_3_st5 <- discovery_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_2_4_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 discovery_3_1_st5 <- discovery_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 discovery_3_2_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_3_3_st5 <- discovery_rate(treat_response_A = 0.1,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_3_4_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 discovery_4_1_st5 <- discovery_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 discovery_4_2_st5 <- discovery_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_4_3_st5 <- discovery_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_4_4_st5 <- discovery_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")


 # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 discovery_5_1_st5 <- discovery_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 discovery_5_2_st5 <- discovery_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_5_3_st5 <- discovery_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_5_4_st5 <- discovery_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 discovery_6_1_st5 <- discovery_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 discovery_6_2_st5 <- discovery_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_6_3_st5 <- discovery_rate(treat_response_A = 0.2,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_6_4_st5 <- discovery_rate(treat_response_A = 0.4,
                                     treat_response_B = 0.5,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_7_1_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_7_2_st5 <- discovery_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_7_3_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.1,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_7_4_st5 <- discovery_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
 # Powered to Δ = 10% and with baseline response 10%:
 set.seed(123)
 discovery_8_1_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 266,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 10% and with baseline response 30%:
 set.seed(123)
 discovery_8_2_st5 <- discovery_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 477,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 10%:
 set.seed(123)
 discovery_8_3_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.2,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")

 # Powered to Δ = 20% and with baseline response 30%:
 set.seed(123)
 discovery_8_4_st5 <- discovery_rate(treat_response_A = 0.5,
                                     treat_response_B = 0.4,
                                     baseline_response = 0.3,
                                     n_arm = 124,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")


 # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
 set.seed(123)
 discovery_9_1_st5 <- discovery_rate(treat_response_A = 0.3,
                                     treat_response_B = 0.3,
                                     baseline_response = 0.1,
                                     n_arm = 82,
                                     alpha = 0.025,
                                     correction = "adjustment 5",
                                     iterations = it,
                                     scenario = "A")
 # repeat for other pairs of treatment effect and baseline response rate
}



