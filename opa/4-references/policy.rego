package opa

apps_and_hostnames[[name, hostname]] {
    some i, j, k
    name := input.apps[i].name
    server := input.apps[i].servers[_]
    input.sites[j].servers[k].name == server
    hostname := input.sites[j].servers[k].hostname
}