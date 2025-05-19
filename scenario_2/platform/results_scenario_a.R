

#######################################################
###               2 PLATFORM TRIAL                  ###
### 2.1. Treatments start at same time (Scenario A) ###
#######################################################


#################################################
# 2.1.1 Rejection Rate [type I error and power] #
#################################################
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%. 
{
  
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and 
  # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_1_1 <- rejection_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_1_2 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_1_3 <- rejection_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_1_4 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_2_1 <- rejection_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_2_2 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_2_3 <- rejection_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_2_4 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_3_1 <- rejection_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_3_2 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_3_3 <- rejection_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_3_4 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_4_1 <- rejection_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_4_2 <- rejection_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_4_3 <- rejection_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_4_4 <- rejection_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_5_1 <- rejection_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_5_2 <- rejection_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_5_3 <- rejection_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_5_4 <- rejection_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_6_1 <- rejection_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_6_2 <- rejection_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_6_3 <- rejection_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_6_4 <- rejection_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_1 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_2 <- rejection_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_3 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_4 <- rejection_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_8_1 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_8_2 <- rejection_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_8_3 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_8_4 <- rejection_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  
  # Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_1 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_2 <- rejection_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_3 <- rejection_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_4 <- rejection_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  
}

#######################################
# 2.1.2 Discovery Rate [FDR and TDR]  #
#######################################
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123)
  discovery_1_1 <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2<-discovery_1_1
  # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0
  discovery_1_3<-discovery_1_1
  # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0
  discovery_1_4<-discovery_1_1
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1 <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_2_3 <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_2_4 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_3_1 <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_3_2 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_3 <- discovery_rate(treat_response_A = 0.1,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_4 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1 <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2 <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_4_3 <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_4_4 <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1 <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2 <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_5_3 <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_5_4 <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1 <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2 <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3 <- discovery_rate(treat_response_A = 0.2,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4 <- discovery_rate(treat_response_A = 0.4,
                                  treat_response_B = 0.5,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2 <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_3 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.1,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_4 <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[1],
                                  alpha = 0.025,
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2 <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[2],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.2,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4 <- discovery_rate(treat_response_A = 0.5,
                                  treat_response_B = 0.4,
                                  baseline_response = 0.3,
                                  n_arm = arm_sizes_G[4],
                                  alpha = 0.025,
                                  
                                  iterations = it,
                                  scenario = "A")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1 <- discovery_rate(treat_response_A = 0.3,
                                  treat_response_B = 0.3,
                                  baseline_response = 0.1,
                                  n_arm = arm_sizes_G[3],
                                  alpha = 0.025,
                                  iterations = it,
                                  scenario = "A")
  # same for other pairs of treatment effect and baseline response rate
  discovery_9_2<-discovery_9_1
  discovery_9_3<-discovery_9_1
  discovery_9_4<-discovery_9_1
}

