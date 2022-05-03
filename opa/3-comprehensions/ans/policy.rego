package opa

serverHostnames := result {
    result := [name | name := input.sites[_].servers[_].hostname]
}