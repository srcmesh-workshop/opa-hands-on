package opa

default admin = false

admin {
    input.action == data.admin.action
    data.admin.groups[_] == input.group
}