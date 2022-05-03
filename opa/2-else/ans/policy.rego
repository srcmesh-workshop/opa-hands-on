package opa

default allow = false
default msg = "not allowed to pass"

allow {
    input.action == data.admin.action
    data.admin.groups[_] == input.group
}

msg := "use unsafe network" {
    allow
    not useAllowNetwork
} else := "safe network" {
    allow
}

useAllowNetwork {
    data.admin.allowNetworks[_] == input.network
}