package terraform 

import input.tfplan as tfplan
import input.tfrun as tfrun

deny[reason] {
    r = tfplan.resource_changes[_]
    r.change.actions[_] == "delete"
    tfrun.credentials.aws == "asde2342fef"
    reason := sprintf("Resource deletion is prohibited on %q cloud account", [tfrun.credentials.aws])
}
