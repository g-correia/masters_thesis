source("./extension/platform/functions/rejection_rate.R")
source("./extension/platform/functions/discovery_rate.R")
source("sample_sizes.R")

it <- 1000

##########################################################################
###                         2 PLATFORM TRIAL                           ###
### 2.2. Treatments start and analyzed at different times (Scenario B) ###
##########################################################################


#################################################
# 2.2.1 Rejection Rate [type I error and power] #
#################################################
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%. 
{
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and 
  # Treatment B has no true effect (treatment effect, Δ = 0%) [type I error].
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_1_1_B <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_1_2_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_1_3_B <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_1_4_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_2_1_B <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%
  set.seed(123)
  rejection_2_2_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%
  set.seed(123)
  rejection_2_3_B <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%
  set.seed(123)
  rejection_2_4_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_3_1_B <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_3_2_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_3_3_B <- rejection_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_3_4_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_4_1_B <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_4_2_B <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_4_3_B <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_4_4_B <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_5_1_B <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_5_2_B <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_5_3_B <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_5_4_B <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_6_1_B <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_6_2_B <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_6_3_B <- rejection_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_6_4_B <- rejection_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_1_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_2_B <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_7_3_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_7_4_B <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  rejection_8_1_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  rejection_8_2_B <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  rejection_8_3_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  rejection_8_4_B <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  
  # Powered to Δ = 10%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_1_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_2_B <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20%, baseline response rate of 10%:
  set.seed(123)
  rejection_9_3_B <- rejection_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20%, baseline response rate of 30%:
  set.seed(123)
  rejection_9_4_B <- rejection_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  
}


#######################################
# 2.2.2 Discovery Rate [FDR and TDR]  #
#######################################
# Powered to Δ = 10% or Δ = 20%, with baseline responses of 10% or 30%.
{
  
  # 1/9 Treatment A has no true effect (treatment effect, Δ = 0%) and Treatment B has no true effect (treatment effect, Δ = 0%).
  # Powered to Δ = 10% and with baseline response 10%: 1 / 0
  set.seed(123) 
  discovery_1_1_B <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 10% and with baseline response 30%: same result, 1 / 0
  discovery_1_2_B<-discovery_1_1_B
  # Powered to Δ = 20% and with baseline response 10%: same result, 1 / 0
  discovery_1_3_B<-discovery_1_1_B
  # Powered to Δ = 20% and with baseline response 30%: same result, 1 / 0
  discovery_1_4_B<-discovery_1_1_B
  
  # 2/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 10%.
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_2_1_B <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_2_2_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_2_3_B <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_2_4_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 3/9 Treatment A has no effect (treatment effect, Δ = 0%) vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_3_1_B <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_3_2_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_3_3_B <- discovery_rate(treat_response_A = 0.1,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_3_4_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 4/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_4_1_B <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_4_2_B <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_4_3_B <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_4_4_B <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  
  # 5/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_5_1_B <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_5_2_B <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_5_3_B <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_5_4_B <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 6/9 Treatment A has treatment effect (Δ) of 10% vs Treatment B has treatment effect (Δ) of 20%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_6_1_B <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_6_2_B <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_6_3_B <- discovery_rate(treat_response_A = 0.2,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_6_4_B <- discovery_rate(treat_response_A = 0.4,
                                    treat_response_B = 0.5,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 7/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has no effect (treatment effect, Δ = 0%)
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_1_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_2_B <- discovery_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_7_3_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.1,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_7_4_B <- discovery_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # 8/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 10%
  # Powered to Δ = 10% and with baseline response 10%:
  set.seed(123)
  discovery_8_1_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[1],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 10% and with baseline response 30%:
  set.seed(123)
  discovery_8_2_B <- discovery_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[2],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 10%:
  set.seed(123)
  discovery_8_3_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.2,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  # Powered to Δ = 20% and with baseline response 30%:
  set.seed(123)
  discovery_8_4_B <- discovery_rate(treat_response_A = 0.5,
                                    treat_response_B = 0.4,
                                    baseline_response = 0.3,
                                    n_arm = arm_sizes_G[4],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  
  
  # 9/9 Treatment A has treatment effect (Δ) of 20% vs Treatment B has treatment effect (Δ) of 20%
  set.seed(123)
  discovery_9_1_B <- discovery_rate(treat_response_A = 0.3,
                                    treat_response_B = 0.3,
                                    baseline_response = 0.1,
                                    n_arm = arm_sizes_G[3],
                                    alpha = 0.025,
                                    
                                    iterations = it,
                                    scenario = "B")
  # same for other pairs of treatment effect and baseline response rate
  discovery_9_2_B<-discovery_9_1_B
  discovery_9_3_B<-discovery_9_1_B
  discovery_9_4_B<-discovery_9_1_B
}







