package opa

default allow = false

allow {
    input.action == data.admin.action
    data.admin.groups[_] == input.group
    useAllowNetwork == true
}

useAllowNetwork {
    data.admin.allowNetworks[_] == input.network
}