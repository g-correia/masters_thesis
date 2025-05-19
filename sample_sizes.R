
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
