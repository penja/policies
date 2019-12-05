version = "v1"

policy "cost-check" {
    enabled = true
}

policy "network-access" {
    enabled = false
    enforcement_level = "soft-mandatory"
}
