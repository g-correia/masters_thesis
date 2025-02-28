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

# delta = 0.1: baseline response rate 10%
(power.prop.test(p1 = pc.1, p2 = pt.1.1, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 266

# delta = 0.1: baseline response rate 30%
(power.prop.test(p1 = pc.2, p2 = pt.2.1, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 477

# delta = 0.2: baseline response rate 10%
(power.prop.test(p1 = pc.1, p2 = pt.1.2, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 81

# delta = 0.2: baseline response rate 30%
(power.prop.test(p1 = pc.2, p2 = pt.2.2, sig.level = 0.025, power = 0.9, alternative = "one.sided")) # n treatment arm = 124

# control sizes for platform trial (= total sample size of the two individual trials combined)
arm_sizes<-c(266, 477, 82, 124)
arm_sizes*2

#################
### Extension ###
#################

# total sample size for two trials for treatment A + for two trials for treatment B
total_size <-c(266, 477, 82, 124)*8

# sample sizes for platform trial (per section):
A1 <- arm_sizes
A2_1 <- arm_sizes
A2_2 <- arm_sizes
A3 <- arm_sizes

A1_control <- arm_sizes
A2_control <- arm_sizes*2
A3_control <- arm_sizes

# check:
(A1 + A2_1 + A2_2 + A3 + A1_control + A2_control + A3_control) == total_size
