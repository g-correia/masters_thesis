source("./scenario_1/platform/functions/successful_pt_trials.R")
source("sample_sizes.R")

it<-10000

############## Type I error: true treatment effect = 0


# Powered to:
# treatment effect = 10%
# control = 10%

set.seed(123)
a<-successful_pt_trials(n_arm = arm_sizes_G[1], 
                     iterations = it, alpha = 0.025, baseline_response = 0.1, 
                     treat_response = 0.1 # same as baseline for no effect
)


# Powered to:
# treatment effect = 10%
# baseline treatment rate 40%
# control = 30%
# n = 477
set.seed(123) 
b<-successful_pt_trials(n_arm = arm_sizes_G[2], # delta1 = 0
                     iterations = it, alpha = 0.025, baseline_response = 0.3, 
                     treat_response = 0.3 # same as baseline for no effect
) 

# Powered to:
# treatment effect = 20 
# control = 10
# n = 82
set.seed(123) 
c<-successful_pt_trials(n_arm = arm_sizes_G[3], # delta1 = 0
                     iterations = it, alpha = 0.025, baseline_response = 0.1, 
                     treat_response = 0.1 # same as baseline for no effect
)

# Powered to:
# treatment effect = 20 
# control = 30
# n = 124
set.seed(123) 
d<-successful_pt_trials(n_arm = arm_sizes_G[4], # delta1 = 0
                     iterations = it, alpha = 0.025, baseline_response = 0.3, 
                     treat_response = 0.3 # same as baseline for no effect
)

############## Power


# delta = treatment effect = 0.1: baseline response rate 10%, treatment response rate = 0.20
set.seed(123) 
a2<-successful_pt_trials(n_arm = arm_sizes_G[1], # delta1 = 0.1
                        iterations = it, alpha = 0.025, baseline_response = 0.1, treat_response = 0.2)


# delta = 0.1: baseline response rate 30%, treatment response rate = 0.40
set.seed(123) 
b2<-successful_pt_trials(n_arm = arm_sizes_G[2], # delta1 = 0
                        iterations = it, alpha = 0.025, baseline_response = 0.3, treat_response = 0.4)


# delta = 0.2: baseline response rate 10%, treatment response rate = 0.3
set.seed(123) 
c2<-successful_pt_trials(n_arm = arm_sizes_G[3], 
                        iterations = it, alpha = 0.025, baseline_response = 0.1, treat_response = 0.3)


# delta = 0.2: baseline response rate 30%, treatment response rate = 0.5
set.seed(123) 
d2<-successful_pt_trials(n_arm = arm_sizes_G[4], 
                        iterations = it, alpha = 0.025, baseline_response = 0.3, treat_response = 0.5)


df_scenario1_2 <- matrix(c(a[2],b[2],c[2],d[2],a2[2],b2[2],c2[2],d2[2]), nrow = 8, ncol = 2, byrow =T, dimnames = NULL)
df_scenario1_2 <- data.frame(df_scenario1_2)
save(df_scenario1_2,file="./output/scenario_1_platform.Rda")


