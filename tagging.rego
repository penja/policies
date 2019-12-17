package terraform 


import input.tfplan as tfplan
import input.tfrun as tfrun

deny["Instances must be tagged"] {
    contains(tfrun.aws_instance.tags, "null")
}
