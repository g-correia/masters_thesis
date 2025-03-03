source("./simple_case/platform/functions/successful_pt_trials.R")
############## Type I error: true treatment effect = 0


# Powered to:
# treatment effect = 10%
# control = 10%
# n = 266
set.seed(123)
successful_pt_trials(n_arm = 266, 
                     iterations = 100000, alpha = 0.025, baseline_response = 0.1, 
                     treat_response = 0.1 # same as baseline for no effect
)


# Powered to:
# treatment effect = 10%
# baseline treatment rate 40%
# control = 30%
# n = 477
set.seed(123) 
successful_pt_trials(n_arm = 477, # delta1 = 0
                     iterations = 100000, alpha = 0.025, baseline_response = 0.3, 
                     treat_response = 0.3 # same as baseline for no effect
) 

# Powered to:
# treatment effect = 20 
# control = 10
# n = 82
set.seed(123) 
successful_pt_trials(n_arm = 82, # delta1 = 0
                     iterations = 100000, alpha = 0.025, baseline_response = 0.1, 
                     treat_response = 0.1 # same as baseline for no effect
)

# Powered to:
# treatment effect = 20 
# control = 30
# n = 124
set.seed(123) 
successful_pt_trials(n_arm = 124, # delta1 = 0
                     iterations = 100000, alpha = 0.025, baseline_response = 0.3, 
                     treat_response = 0.3 # same as baseline for no effect
)

############## Power


# delta = treatment effect = 0.1: baseline response rate 10%, treatment response rate = 0.20
set.seed(123) 
a<-successful_pt_trials(n_arm = 266, # delta1 = 0.1
                        iterations = 100000, alpha = 0.025, baseline_response = 0.1, treat_response = 0.2)
a

# delta = 0.1: baseline response rate 30%, treatment response rate = 0.40
set.seed(123) 
b<-successful_pt_trials(n_arm = 477, # delta1 = 0
                        iterations = 100000, alpha = 0.025, baseline_response = 0.3, treat_response = 0.4)
b

# delta = 0.2: baseline response rate 10%, treatment response rate = 0.3
set.seed(123) 
c<-successful_pt_trials(n_arm = 82, 
                        iterations = 100000, alpha = 0.025, baseline_response = 0.1, treat_response = 0.3)
c

# delta = 0.2: baseline response rate 30%, treatment response rate = 0.5
set.seed(123) 
d<-successful_pt_trials(n_arm = 124, 
                        iterations = 100000, alpha = 0.025, baseline_response = 0.3, treat_response = 0.5)
a
b
c
d
