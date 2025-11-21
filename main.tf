resource "random_pet" "username" {
    length    = var.length
    separator = "-"
}

resource "random_password" "password" {
    length           = var.length
    special          = true
    override_special = "!@#$%&*()-_=+[]{}:?"
    min_numeric      = 1
    min_lower        = 1
    min_special      = 1
}
