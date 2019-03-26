# Sample script to run a model using GRNSimKit -
using GRNSimKit

# time step
time_step_size = 0.016 # hr
# Build a data dictionary from a model file -
path_to_model_file = "/Users/anniechien/Desktop/new10.json"
#gdd = build_default_data_dictionary(path_to_model_file)
ddd = build_discrete_dynamic_data_dictionary_from_model_file(time_step_size, path_to_model_file)
# Run the model to steady-state, before we do anything -
steady_state = GRNSteadyStateSolve(ddd)
# steady_state = dd[:initial_condition_array]
# Run the model 100 time units *before* we add inducer -
ddd[:initial_condition_array] = steady_state
(T0, X0_10) = GRNDiscreteDynamicSolve((0.0,1.0,time_step_size), ddd)
# Add inducer T = 1 mM for 100 time units -
ddd[:initial_condition_array] = X0[end,:]
ddd[:initial_condition_array][7] = 10.0
tstart_1 = T0[end]
tstop_1 = tstart_1 + 5.0
(T1, X1_10) = GRNDiscreteDynamicSolve((tstart_1,tstop_1, time_step_size), ddd)
# # Wash inducer out -
# ddd[:initial_condition_array] = X1[end,:]
# ddd[:initial_condition_array][7] = 10.0
# tstart_2 = T1[end]
# tstop_2 = tstart_2 + 2.0
# (T2, X2) = GRNDiscreteDynamicSolve((tstart_2,tstop_2, time_step_size), ddd)
# Package -
