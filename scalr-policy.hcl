version = "v1"


policy "credential-limit" {
    enabled = true
    enforcement_level = "advisory"
}

policy "network-access" {
    enabled = true
    enforcement_level = "advisory"
}

policy "instance_types" {
    enabled = true
    enforcement_level = "advisory"
}
