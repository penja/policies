version = "v1"

policy "cost-check" {
    enabled = true
    enforcement_level = "advisory"
}

policy "workspace-name" {
    enabled = false
    enforcement_level = "advisory"
}

policy "credential-limit" {
    enabled = false
    enforcement_level = "advisory"
}


policy "network-access" {
    enabled = false
    enforcement_level = "advisory"
}

policy "instance_types" {
    enabled = false
    enforcement_level = "advisory"
}
