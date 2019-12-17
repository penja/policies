package terraform 


import input.tfplan as tfplan
import input.tfrun as tfrun

deny["Instances must be tagged"] {
    contains(tfplan.aws_instance.tags, "")
}
