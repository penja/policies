 package terraform 


import input.tfplan as tfplan
import input.tfrun as tfrun

deny[reason] {
    cost_delta = tfrun.cost_estimate.delta_yearly_cost
    cost_delta > 200
    reason := sprintf("Plan is too expensive: $%.2f, while up to $200 is allowed", [cost_delta])
}
