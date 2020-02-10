 package terraform 


import input.tfplan as tfplan
import input.tfrun as tfrun

deny[reason] {
    cost_delta = tfrun.cost_estimate.delta_monthly_cost
    cost_delta > 6
    reason := sprintf("Plan is too expensive: $%.2f, while up to $6 is allowed", [cost_delta])
}
