package opa

web_apps_and_hostnames[[app, hostname]] {
    some i, j, k
    input.apps[i].name == "web"
    app := input.apps[i].name
    server := input.apps[i].servers[_]
    input.sites[j].servers[k].name == server
    hostname := input.sites[j].servers[k].hostname
}

web_apps_and_hostnames2[[app, server, hostname]] {
    some i
    input.apps[i].name == "web"
    app := input.apps[i].name
    server := input.apps[i].servers[_]
    input.sites[j].servers[_].name == server
    hostname := input.sites[j].servers[_].hostname
}

# Why we have different results?
# Hint: Universal Quantification