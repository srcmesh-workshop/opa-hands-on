package opa

default allow = false

allow {
    input.action == data.admin.action
}