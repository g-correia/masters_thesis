source("./simple_case/two_trial/functions/successful_trials.R")
source("sample_sizes.R")

it<-10000

# powered to detect a treatment effect of 10% with a
# control response of 10% => n = 266.
# Delta = 0 => treat response = 0.1
set.seed(123)
successful_trials(treat_response = 0.1, n_arm = arm_sizes_G[1],
                  baseline_response = 0.1,
                  iterations = it, alpha = 0.025)
                  

# powered to detect a treatment effect of 10% with a 
# control response of 30% =>  n = 477. 
# Delta = 0 => treat response = 0.3
set.seed(123)
successful_trials(treat_response = 0.3, n_arm = arm_sizes_G[2],
                  baseline_response = 0.3,
                  iterations = it, alpha = 0.025)

# powered to detect a treatment effect of 20% with a
# control response of 10% => n = 82. 
# Delta = 0 => treat response = 0.1
set.seed(123) 
successful_trials(treat_response = 0.1, n_arm = arm_sizes_G[3],
                  baseline_response = 0.1,
                  iterations = it, alpha = 0.025)

# powered to detect a treatment effect of 20% with a 
# control response of 30% => n = 124
# Delta = 0 => treat response = 0.3
set.seed(123)
successful_trials(treat_response = 0.3, n_arm = arm_sizes_G[4],
                  baseline_response = 0.3,
                  iterations = it, alpha = 0.025)


############## Power


# delta = 0.1: baseline response rate 10%, treatment response rate = 0.20, n = 266
set.seed(123) 
a<-successful_trials(treat_response = 0.2, n_arm = arm_sizes_G[1],
                     baseline_response = 0.1,
                     iterations = it, alpha = 0.025)


# delta = 0.1: baseline response rate 30%, treatment response rate = 0.40, n = 477
set.seed(123) 
b<-successful_trials(treat_response = 0.4, n_arm = arm_sizes_G[2],
                     baseline_response = 0.3,
                     iterations = it, alpha = 0.025)


# delta = 0.2: baseline response rate 10%, treatment response rate = 0.3, n = 82
set.seed(123) 
c<-successful_trials(treat_response = 0.3, n_arm = arm_sizes_G[3],
                     baseline_response = 0.1,
                     iterations = it, alpha = 0.025)


# delta = 0.2: baseline response rate 30%, treatment response rate = 0.5, n = 124
set.seed(123) 
d<-successful_trials(treat_response = 0.5, n_arm = arm_sizes_G[4],
                     baseline_response = 0.3,
                     iterations = it, alpha = 0.025)

