package authz

allow {
    input.path == ["users"]
    input.method == "POST"
}

allow {
    input.path == ["users", input.user_id]
    input.method == "GET"
}