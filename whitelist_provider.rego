# Prevent specified providers from being used

package terraform

import input.tfplan as tfplan

# Blacklisted Terraform providers
allowed_provider = [
  "aws"
]


array_contains(arr, elem) {
  arr[_] = elem
}

get_basename(path) = basename{
    arr := split(path, "/")
    basename:= arr[count(arr)-1]
}

deny[reason] {
    resource := tfplan.resource_changes[_]
    action := resource.change.actions[count(resource.change.actions) - 1]
    array_contains(["create", "update"], action)  # allow destroy action

    # registry.terraform.io/hashicorp/aws -> aws
    provider_name := get_basename(resource.provider_name)
    not array_contains(allowed_provider, provider_name)

    reason := sprintf(
        "%s: provider type %q is not allowed",
        [resource.address, provider_name]
    )
}
