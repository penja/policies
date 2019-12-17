package terraform 


import input.tfplan as tfplan
import input.tfrun as tfrun

deny["Instances must be tagged"] {
    r = tfplan.resource_changes[_]
    r.change.actions[_] == "create"
    not contains(tfrun.aws_instance.instance_type, "t3.medium")
}
