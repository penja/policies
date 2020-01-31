version = "v1"

policy "cost-check" {
    enabled = true
}

policy "workspace-name" {
    enabled = false
    enforcement_level = "advisory"
}

policy "credential-limit" {
    enabled = true
    enforcement_level = "hard-mandatory"
}


policy "network-access" {
    enabled = false
    enforcement_level = "soft-mandatory"
}

policy "instance_types" {
    enabled = true
    enforcement_level = "advisory"
}
