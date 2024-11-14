package terraform 

import input.tfplan as tfplan
import input.tfrun as tfrun



deny["workspace name"]  {
    not endswith(tfrun.workspace.name, "-dev")
}
