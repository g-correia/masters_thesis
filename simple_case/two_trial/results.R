# treatment effect = 10%
# control = 10%
# n = 266
set.seed(123)
successful_trials(I_treatment_1 = 0, n_arm_1 = 266, # delta1 = 0
                  I_treatment_2 = 0, n_arm_2 = 266, # delta2 = 0
                  iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.1, b_control = 0.1)

# treatment effect = 10%
# control = 30%
# n = 477
set.seed(123)
successful_trials(I_treatment_1 = 0, n_arm_1 = 477, # delta1 = 0
                  I_treatment_2 = 0, n_arm_2 = 477, # delta2 = 0
                  iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.3, b_control = 0.3)

# treatment effect = 20 
# control = 10
# n = 82
set.seed(123) 
successful_trials(I_treatment_1 = 0, n_arm_1 = 82, # delta1 = 0
                  I_treatment_2 = 0, n_arm_2 = 82, # delta2 = 0
                  iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.1, b_control = 0.1)


# treatment effect = 20 
# control = 30
# n = 124
set.seed(123)
successful_trials(I_treatment_1 = 0, n_arm_1 = 124, # delta1 = 0
                  I_treatment_2 = 0, n_arm_2 = 124, # delta2 = 0
                  iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.3, b_control = 0.3)



############## Power


# delta = 0.1: baseline response rate 10%, treatment response rate = 0.20 => log odds ratio:
treat_effect_lor1 <- (log((0.2 * (1-0.1))/(0.1*(1-0.2))))

set.seed(123) 
a<-successful_trials(I_treatment_1 = treat_effect_lor1, n_arm_1 = 266, # delta1 = 0
                     I_treatment_2 = treat_effect_lor1, n_arm_2 = 266, # delta2 = 0
                     iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.1, b_control = 0.1)
a

# delta = 0.1: baseline response rate 30%, treatment response rate = 0.40 => log odds ratio:
treat_effect_lor2 <- (log((0.4 * (1-0.3))/(0.3*(1-0.4))))

set.seed(123) 
b<-successful_trials(I_treatment_1 = treat_effect_lor2, n_arm_1 = 477, # delta1 = 0
                     I_treatment_2 = treat_effect_lor2, n_arm_2 = 477, # delta2 = 0
                     iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.3, b_control = 0.3)
b

# delta = 0.2: baseline response rate 10%, treatment response rate = 0.3 => log odds ratio:
treat_effect_lor3 <- (log((0.3 * (1-0.1))/(0.1*(1-0.3))))

set.seed(123) 
c<-successful_trials(I_treatment_1 = treat_effect_lor3, n_arm_1 = 82, 
                     I_treatment_2 = treat_effect_lor3, n_arm_2 = 82, 
                     iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.1, b_control = 0.1)
c

# delta = 0.2: baseline response rate 30%, treatment response rate = 0.5 => log odds ratio:
treat_effect_lor4 <- (log((0.5 * (1-0.3))/(0.3*(1-0.5))))

set.seed(123) 
d<-successful_trials(I_treatment_1 = treat_effect_lor4, n_arm_1 = 124, 
                     I_treatment_2 = treat_effect_lor4, n_arm_2 = 124, 
                     iterations = 100000, alpha = 0.025, tau = 0, a_control = 0.3, b_control = 0.3)
a
b
c
d
