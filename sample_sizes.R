##########################################################
### Simple Case: Based on a traditional clinical trial ### 
##########################################################

# p1 = control
pc.1 <- 0.1 # first baseline response rate 10%
pc.2 <- 0.3 # second baseline response rate 30%

# p2 = treatment
# absolute treatment differences 10% and 20%

pt.1.1 <- 0.2 # (10% + 10%)
pt.1.2 <- 0.3 # (10% + 20%)

pt.2.1 <- 0.4 # (30% + 10%)
pt.2.2 <- 0.5 # (30% + 20%)

# delta = 0.1: baseline response rate 10%. Using G-Power: 285
(power.prop.test(p1 = pc.1, p2 = pt.1.1, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 266

# delta = 0.1: baseline response rate 30%. Using G-Power: 496
(power.prop.test(p1 = pc.2, p2 = pt.2.1, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 477

# delta = 0.2: baseline response rate 10%: 91
(power.prop.test(p1 = pc.1, p2 = pt.1.2, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 81

# delta = 0.2: baseline response rate 30%: 133
(power.prop.test(p1 = pc.2, p2 = pt.2.2, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 124

# control sizes for platform trial (= total sample size of the two individual trials combined)
arm_sizes_R<-c(266, 477, 82, 124)
arm_sizes_R*4

arm_sizes_G_power <- c(285, 496, 91, 133)
arm_sizes_G<-ifelse(arm_sizes_G_power%%3==0, arm_sizes_G_power, arm_sizes_G_power+3-arm_sizes_G_power%%3)
arm_sizes_G*4

#################
### Extension ###
#################

# total sample size for two trials for treatment A + for two trials for treatment B
total_size <-arm_sizes_G*8

# sample sizes for platform trial (per section):
A1 <- arm_sizes_G
A2_1 <- arm_sizes_G
A2_2 <- arm_sizes_G
A3 <- arm_sizes_G

A1_control <- arm_sizes_G
A2_control <- arm_sizes_G*2
A3_control <- arm_sizes_G

# check:
(A1 + A2_1 + A2_2 + A3 + A1_control + A2_control + A3_control) == total_size

(arm_sizes_G+2)%%3
