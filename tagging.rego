package terraform 


import input.tfplan as tfplan
import input.tfrun as tfrun

deny["Instances must be tagged"] {
    not contains(tfrun.aws_instance.tags, "Name")
}
